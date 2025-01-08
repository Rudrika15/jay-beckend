<?php

namespace App\Http\Controllers;

use App\Models\Attendance;
use App\Models\Leave;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ReportController extends Controller
{
    public function display(Request $request)
    {
        $start_date = $request->query('start_date');
        $end_date = $request->query('end_date');
        $user = $request->query('search_user');

        $query = User::query();


        if ($start_date && $end_date) {
            $query->whereHas('attendances', function ($query) use ($start_date, $end_date) {
                $query->whereBetween('date', [$start_date, $end_date]);
            })->with(['attendances' => function ($query) use ($start_date, $end_date) {
                $query->whereBetween('date', [$start_date, $end_date]);
            }]);
        } else {

            $query->with('attendances');
        }


        if ($user) {
            $query->where('name', 'like', '%' . $user . '%');
        }


        $data = $query->get()->map(function ($user) {
            $user->total_minutes = $user->attendances->sum(function ($attendance) {

                $checkin = $attendance->checkin ? Carbon::parse($attendance->checkin) : null;
                $checkout = $attendance->checkout ? Carbon::parse($attendance->checkout) : null;
                $on_break = $attendance->on_break ? Carbon::parse($attendance->on_break) : null;
                $off_break = $attendance->off_break ? Carbon::parse($attendance->off_break) : null;


                if (!$checkin || !$checkout) {
                    return 0;
                }


                $totalMinutes = $checkin->diffInMinutes($checkout);


                $breakMinutes = ($on_break && $off_break) ? $on_break->diffInMinutes($off_break) : 0;
                $workingMinutes = $totalMinutes - $breakMinutes;

                return max($workingMinutes, 0);
            });


            $total_hours = floor($user->total_minutes / 60);
            $total_minutes = $user->total_minutes % 60;


            $user->total_hours = "{$total_hours} hours and {$total_minutes} minutes";

            return $user;
        });


        $data = $data->sortByDesc('total_minutes');


        $leave = Leave::where('status', 'Approved')->get();


        return view('report.report', compact('data', 'leave'));
    }
}
