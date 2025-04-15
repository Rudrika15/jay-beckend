<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Attendance;
use App\Models\Leave;
use App\Models\Notification;
use App\Models\User;
use App\Services\FirebaseService;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{
    protected $firebaseService;

    public function __construct(FirebaseService $firebaseService)
    {
        $this->firebaseService = $firebaseService;
    }
    public function dailyAttendance(Request $request)
    {
        // Validate the date parameter to ensure it's in a correct format (YYYY-MM-DD)
        $validated = $request->validate([
            'date' => 'nullable|date_format:Y-m-d',
        ]);

        // Use the provided date or default to today
        $date = $validated['date'] ?? Carbon::today()->toDateString();

        // Fetch attendance records for the specified date
        $dailyAttendance = Attendance::with('user')->whereDate('date', $date)->get();

        $userAttendance = [];

        foreach ($dailyAttendance as $attendance) {
            $userId = $attendance->user_id;

            if (!isset($userAttendance[$userId])) {
                $userAttendance[$userId] = [
                    'user' => $attendance->user,
                    'attendanceData' => [],
                    'totalBreakMinutes' => 0,
                    'totalWorkingMinutes' => 0,
                ];
            }

            $checkin = Carbon::parse($attendance->checkin);
            $checkout = Carbon::parse($attendance->checkout);
            $onBreak = Carbon::parse($attendance->on_break);
            $offBreak = Carbon::parse($attendance->off_break);

            // Adjust for cases where offBreak or checkout is on the next day
            if ($offBreak->lt($onBreak)) {
                $onBreak = $onBreak->copy()->addDay();
            }

            if ($checkout->lt($checkin)) {
                $checkout = $checkout->copy()->addDay();
            }

            // Calculate break time in minutes
            $breakDuration = $onBreak->diffInMinutes($offBreak);
            $userAttendance[$userId]['totalBreakMinutes'] += $breakDuration;

            // Calculate total working time in minutes
            $workingDuration = $checkin->diffInMinutes($checkout) - $breakDuration;
            $userAttendance[$userId]['totalWorkingMinutes'] += $workingDuration;

            // Include the current attendance data
            $userAttendance[$userId]['attendanceData'][] = [
                'id' => $attendance->id,
                'date' => $attendance->date,
                'checkin' => $attendance->checkin,
                'checkout' => $attendance->checkout,
                'on_break' => $attendance->on_break,
                'off_break' => $attendance->off_break,
                'total_hours' => $attendance->total_hours,
            ];
        }

        // Format output for each user
        foreach ($userAttendance as &$attendance) {
            $breakMinutes = $attendance['totalBreakMinutes'];
            $workingMinutes = $attendance['totalWorkingMinutes'];

            $breakHours = intdiv($breakMinutes, 60);
            $breakMinutes = $breakMinutes % 60;
            $workingHours = intdiv($workingMinutes, 60);
            $workingMinutes = $workingMinutes % 60;

            $attendance['totalBreakTime'] = $breakHours . ' hours and ' . $breakMinutes . ' min';
            $attendance['totalWorkingHours'] = $workingHours . ' hours and ' . $workingMinutes . ' min';

            // Remove the totalBreakMinutes and totalWorkingMinutes keys
            unset($attendance['totalBreakMinutes']);
            unset($attendance['totalWorkingMinutes']);
        }

        // Return the formatted response
        return response()->json([
            'status' => true,
            'message' => 'Daily attendance fetched successfully',
            'data' => array_values($userAttendance),  // Reset keys to sequential
        ], 200);
    }
    public function staffList(Request $request)
    {
        $today = $request->date ?? Carbon::today()->toDateString();


        $users = User::role('User')
            ->with(['attendances' => function ($query) use ($today) {
                $query->whereDate('date', $today);
            }])->get()
            ->map(function ($user) {
                $totalBreakMinutes = 0;
                $totalWorkingMinutes = 0;

                foreach ($user->attendances as $attendance) {
                    $onBreak = Carbon::parse($attendance->on_break);
                    $offBreak = Carbon::parse($attendance->off_break);
                    $checkin = Carbon::parse($attendance->checkin);
                    $checkout = Carbon::parse($attendance->checkout);

                    // Adjust for cases where offBreak or checkout is on the next day
                    if ($offBreak->lt($onBreak)) {
                        $offBreak = $offBreak->copy()->addDay();
                    }
                    if ($checkout->lt($checkin)) {
                        $checkout = $checkout->copy()->addDay();
                    }

                    $breakDuration = $onBreak->diffInMinutes($offBreak);
                    $workingDuration = $checkin->diffInMinutes($checkout) - $breakDuration;

                    $totalBreakMinutes += $breakDuration;
                    $totalWorkingMinutes += $workingDuration;
                }

                $user->totalBreakTime = intdiv($totalBreakMinutes, 60) . ' hours and ' . ($totalBreakMinutes % 60) . ' min';
                $user->totalWorkingHours = intdiv($totalWorkingMinutes, 60) . ' hours and ' . ($totalWorkingMinutes % 60) . ' min';

                return $user;
            });

        return response()->json([
            'status' => true,
            'message' => 'Staff list fetched successfully',
            'data' => $users,
        ], 200);
    }

    public function leaveApplication(Request $request)
    {
        $leaveApplications = Leave::with('user')
            ->orderBy('leaves.created_at', 'desc')
            // ->orderBy('created_at', 'desc')
            ->paginate(10);
        return response()->json([
            'status' => true,
            'message' => 'Leave applications fetched successfully',
            'data' => $leaveApplications,
        ], 200);
    }

    public function approveLeave(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'status' => 'required|in:Approved,Rejected',
        ], [
            'status.in' => 'status must be Approved or Rejected',
        ]);
        if ($validator->fails()) {
            return response()->json([
                'message' => 'Validation errors occurred.',
                'errors' => $validator->errors()
            ], 200);
        }
        $leave = Leave::find($id);
        $leave->status = $request->status;
        $leave->save();

        // Send firebase the notification
        $name = $leave->user->name;
        $token = $leave->user->token;
        $this->firebaseService->sendNotification(
            $token,
            'Leave Application Status Update',
            'Dear ' . $name . ', your leave application has been ' . $request->status . ' by HR. Thank you for your patience.'
        );

        return response()->json([
            'status' => true,
            'message' => 'Leave application approved successfully',
            'data' => $leave,
        ], 200);
    }

    public function cancelLeave(Request $request, $id)
    {
        $findAuthAdmin = User::whereHas('roles', function ($q) {
            $q->where('name', 'Admin');
        })->where('id', Auth::user()->id)->first();
        if (!$findAuthAdmin) {
            return response()->json([
                'status' => false,
                'message' => 'You are not authorized to perform this action.',
            ], 200);
        } else {
            $leave = Leave::find($id);
            $leave->delete();

            return response()->json([
                'status' => true,
                'message' => 'Leave application canceled successfully',
                'data' => $leave,
            ], 200);
        }
    }
    public function report(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'startDate' => 'required|date',
            'endDate' => 'required|date'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 200);
        }

        $start_date1 = $request->startDate;
        $end_date1 = $request->endDate;

        $start_date = Carbon::parse($start_date1)->startOfDay();
        $end_date = Carbon::parse($end_date1)->endOfDay();

        $query = User::query();

        $query->whereHas('attendances', function ($query) use ($start_date, $end_date) {
            $query->whereBetween('date', [$start_date, $end_date]);
        })->with([
            'attendances' => function ($query) use ($start_date, $end_date) {
                $query->whereBetween('date', [$start_date, $end_date]);
            }
        ])
            ->withCount([
                'attendances as attendance_count' => function ($query) use ($start_date, $end_date) {
                    $query->whereBetween('date', [$start_date, $end_date]);
                },
                'task as task_count' => function ($query) use ($start_date, $end_date) {
                    $query->whereBetween('created_at', [$start_date, $end_date]);
                }
            ]);

        // Fetch user data
        $data = $query->get()->map(function ($user) use ($start_date, $end_date) {
            // Calculate total hours and minutes
            $totalMinutes = $user->attendances->sum(function ($attendance) {
                return (float)$attendance->total_hours * 60;
            });

            $hours = floor($totalMinutes / 60);
            $minutes = $totalMinutes % 60;

            $user->total_hours = "{$hours} hours and {$minutes} minutes";

            // Fetch leaves for the current user
            $leaves = Leave::where('userId', $user->id)
                ->where('status', 'Approved')
                ->whereBetween('startDate', [$start_date, $end_date])
                ->get(['id', 'startDate', 'endDate', 'reason', 'status', 'leaveType'])
                ->map(function ($leave) {
                    // Calculate the leave duration
                    $startDate = Carbon::parse($leave->startDate);
                    $endDate = Carbon::parse($leave->endDate);
                    $leaveDuration = $startDate->diffInDays($endDate) + 1; // Add 1 because diffInDays doesn't count the start date

                    // Adjust the duration if it's a Half Day Leave
                    if ($leave->leaveType == 'Half Day Leave (First Half)' || $leave->leaveType == 'Half Day Leave (Second Half)') {
                        $leaveDuration = 0.5;
                    }

                    return [
                        'id' => $leave->id,
                        'startDate' => $leave->startDate,
                        'endDate' => $leave->endDate,
                        'reason' => $leave->reason,
                        'status' => $leave->status,
                        'leaveType' => $leave->leaveType,
                        'leave_duration' => $leaveDuration
                    ];
                });

            // Calculate total leave count (sum of leave days)
            $user->leave_count = $leaves->sum('leave_duration');

            $user->leaves = $leaves;

            return $user->only(['id', 'name', 'total_hours', 'attendance_count', 'task_count', 'leave_count', 'leaves']);
        });

        return response()->json([
            'status' => true,
            'message' => 'Report fetched successfully',
            'data' => $data
        ], 200);
    }
}
