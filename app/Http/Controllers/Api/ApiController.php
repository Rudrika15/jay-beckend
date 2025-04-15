<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Assign;
use App\Models\Calllog;
use App\Models\Callog;
use App\Models\Notification;
use App\Models\Product;
use App\Models\Qr;
use App\Models\Team;
use App\Models\Teammember;
use App\Models\User;
use App\Services\FirebaseService;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Kreait\Firebase\Factory;
use Kreait\Firebase\Messaging\CloudMessage;
use Kreait\Firebase\Messaging\Notification as FirebaseNotification;
use Throwable;

class ApiController extends Controller
{
    //
    public function clientlist(Request $request)
    {
        $name = $request->input('name');
        if ($name) {
            $client = User::where('name', 'like', '%' . $name . '%')->whereHas('roles', function ($query) {
                $query->where('name', '=', 'client');
            })->where('name', 'like', '%' . $name . '%')->get();
        } else {
            $client = User::whereHas('roles', function ($query) {
                $query->where('name', '=', 'client');
            })->get();
        }
        return response()->json(
            [
                'status' => true,
                'message' => 'Client List successfully',
                'data' => $client
            ]
        );
    }
    public function createcall(Request $request)
    {
        try {
            $validatedData = $request->validate([
                'date' => 'required|date',
                'description' => 'required|string',
                'address' => 'required|string',
            ]);

            $call = new Calllog();
            $call->date = $request->date;
            $call->description = $request->description;
            $call->address = $request->address;

            if ($request->client_id) {
                $call->userId = $request->client_id;
            } else {
                $call->userId = Auth::user()->id;
            }

            if ($request->hasFile('photo')) {
                $file = $request->file('photo');
                $filename = time() . '.' . $file->getClientOriginalExtension();
                $file->move(public_path('images'), $filename);
                $call->photo = $filename;
            }

            $call->save();

            $user = User::role('Admin')->first();


            // Send notification with Firebase
            $title = "New Call Log Created";
            $body = "A new call log has been created by " . Auth::user()->name;

            $notification = new Notification();
            $notification->title = $title;
            $notification->detail = $body;
            $notification->save();

            $serviceAccountPath = storage_path('app/public/attendance.json');
            $factory = (new Factory)->withServiceAccount($serviceAccountPath);
            $messaging = $factory->createMessaging();

            if ($user->token) {
                $message = CloudMessage::withTarget('token', $user->token)
                    ->withNotification(FirebaseNotification::create($title, $body));

                try {
                    $messaging->send($message);
                } catch (\Kreait\Firebase\Exception\Messaging\NotFound $e) {
                    Log::error('Token not found: ' . $user->token);
                } catch (\Kreait\Firebase\Exception\Messaging\InvalidArgument $e) {
                    Log::error('Invalid argument error with token: ' . $user->token);
                } catch (\Exception $e) {
                    Log::error('General error sending to token: ' . $user->token . '. Error: ' . $e->getMessage());
                }
            }
            // Store notification in the database
            $notification = new Notification();
            $notification->title = $title;
            $notification->detail = $body;
            $notification->save();

            return response()->json([
                'status' => true,
                'message' => 'Call log created successfully.',
                'data' => $call,
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage(),
                'data' => []
            ]);
        }
    }
    public function getCalllog(Request $request)
    {
        $user = Auth::user();
        $userId = $user->id;
        $role = $user->roles[0]->name;
        $status = $request->input('status');
        $date = $request->input('date');
        $id = $request->input('id');
        if ($role === 'Admin') {

            $callLogs = Calllog::with('user');
            if ($date) {
                $callLogs = $callLogs->whereDate('date', $date);
            }
            if ($status) {
                $callLogs = $callLogs->where('status', $status);
            }
            $callLogs = $callLogs->get();
        } else {

            $callLogs = Calllog::with('user')
                ->where('status', $status)
                ->where('userId', $userId)->get();
        }

        // Return the response
        return response()->json([
            'status' => true,
            'message' => 'Call log list retrieved successfully.',
            'data' => $callLogs,
        ]);
    }
    public function getTeams()
    {
        $team = Team::with('members.user')->get();
        return response()->json([
            'status' => true,
            'message' => 'Team list retrieved successfully.',
            'data' => $team
        ]);
    }
    public function getCallDetail($id)
    {
        $data = Assign::where('callId', $id)->with('call.user')->First();
        return response()->json([
            'status' => true,
            'message' => 'Call log detail retrieved successfully.',
            'data' => $data
        ]);
    }
    public function chageStatus(Request $request)
    {
        try {

            $request->validate([
                'id' => 'required|exists:calllogs,id',
                'status' => 'required|in:pending,completed,cancelled'
            ]);
            $calllog = Calllog::find($request->id);
            $calllog->status = $request->status;
            $calllog->save();

            // Send notification with Firebase
            $call = Calllog::find($request->id);
            $calllog = Calllog::with('assign') // Load the 'assign.user' relationship
                ->where('id', $request->id) // Filter by the provided ID
                ->first(); // Get the first matching record

            if (!$call) {
                return response()->json(['message' => 'Calllog not found'], 404);
            }

            // Collect users from 'calllog.user' and 'assign.user'
            $callUsers = collect();
            if ($calllog->user) {
                $callUsers->push($call->user); // Add the user from Calllog (if it has a direct user relationship)
            }

            foreach ($calllog->assign as $assign) {

                if ($assign->user) {
                    $callUsers->push($assign->user); // Add users from assign relationships
                }
            }
            // return $callUsers;

            // Get Admin users
            $adminUsers = User::role('Admin')->get();

            // Merge all users and remove duplicates
            $allUsers = $callUsers->merge($adminUsers)->unique('id'); // Ensure unique users by ID

            $tokens = $allUsers
                ->filter(fn($user) => $user->token) // Ensure the user has a token
                ->pluck('token') // Extract tokens
                ->unique() // Remove duplicate tokens
                ->toArray();

            $title = "Call Log Status Changed";
            $body = "The status of call #" . $request->id . " log has been changed to " . $request->status;

            $notification = new Notification();
            $notification->title = $title;
            $notification->detail = $body;
            $notification->save();

            $serviceAccountPath = storage_path('app/public/attendance.json');
            $factory = (new Factory)->withServiceAccount($serviceAccountPath);
            $messaging = $factory->createMessaging();

            $messages = array_map(
                fn($token) => CloudMessage::withTarget('token', $token)
                    ->withNotification(FirebaseNotification::create($title, $body)),
                $tokens
            );

            // Send notifications in bulk if there are messages
            if (count($messages) > 0) {
                try {
                    $messaging->sendAll($messages);
                } catch (\Exception $e) {
                    return response()->json(['error' => $e->getMessage()], 500);
                }
            }

            return response()->json([
                'status' => true,
                'message' => 'Call log status changed successfully.',
                'data' => $call
            ]);
        } catch (Throwable $e) {
            return response()->json(['error' => $e->getMessage()], 400);
        }
    }

    public function assignTask(Request $request)
    {
        try {
            $data = $request->all();
            // Store multiple assigns
            $now = Carbon::now();
            $assignments = array_map(function ($userId) use ($data, $now) {
                return [
                    'userId' => $userId,
                    'callId' => $data['callId'],
                    'slot' => $data['slot'],
                    'date' => $data['date'],
                    'charge' => $data['charge'],
                    'created_at' => $now,
                    'updated_at' => $now,
                ];
            }, $data['userId']);

            Assign::insert($assignments);
            $call = Calllog::find($data['callId']);
            $call->status = 'allocated';
            $call->save();

            $user = User::find($data['userId']);
            $callId = $data['callId'];
            unset($data['callId']);

            $call = Calllog::with('assign.user.roles')->find($callId);
            $tokens = $user->pluck('token')->toArray();
            $userName = implode(', ', $user->pluck('name')->toArray());
            $title = ' Call Assigned';
            $body = "Call #" . $callId . " has been assigned to " . $userName;


            $notification = new Notification();
            $notification->title = $title;
            $notification->detail = $body;
            $notification->save();

            $serviceAccountPath = storage_path('app/public/attendance.json');
            $factory = (new Factory)->withServiceAccount($serviceAccountPath);
            $messaging = $factory->createMessaging();


            $message = array_map(
                function ($tokens) use ($title, $body) {
                    if (isset($tokens) && $tokens != null)
                        return CloudMessage::withTarget('token', $tokens)
                            ->withNotification(FirebaseNotification::create($title, $body));
                },
                $tokens
            );
            if (count($message) > 0) {
                try {
                    $messaging->sendAll($message);
                } catch (\Exception $e) {
                    return response()->json(['error' => $e->getMessage()], 500);
                }
            }

            return response()->json([
                'status' => true,
                'message' => 'Task assigned successfully.',
                'data' => $assignments
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage(),
                'data' => []
            ]);
        }
    }

    public function getParts()
    {
        try {
            $data = Product::where('type', 'parts')->get();
            return response()->json([
                'status' => true,
                'message' => 'Parts list retrieved successfully.',
                'data' => $data
            ]);
        } catch (\Throwable $th) {
            //throw $th;

            return response()->json([
                'status' => false,
                'message' => $th->getMessage(),
                'data' => []
            ]);
        }
    }
    public function callList(Request $request)
    {
        try {

            $id =  Auth::user()->id;
            $data = Assign::where('userId', $id)->with('call.user');
            if ($request->date) {

                $data = $data->whereDate('date', $request->date);
            }
            $data = $data->get();
            return response()->json([
                'status' => true,
                'message' => 'Call list retrieved successfully.',
                'data' => $data
            ]);
        } catch (\Throwable $th) {
            //throw $th;

            return response()->json([
                'status' => false,
                'message' => $th->getMessage(),
                'data' => []
            ]);
        }
    }
    public function clientSideCallList(Request $request)
    {
        try {

            $id =  Auth::user()->id;

            $data = Calllog::where('userId', $id)->with('assign');
            if ($request->date) {

                $data = $data->whereDate('date', $request->date);
            }
            if ($request->status) {

                $data = $data->where('status', $request->status);
            }
            $data =  $data->get();
            return response()->json([
                'status' => true,
                'message' => 'Call list retrieved successfully.',
                'data' => $data

            ]);
        } catch (\Throwable $th) {
            //throw $th;
            return response()->json([
                'status' => false,
                'message' => $th->getMessage(),
                'data' => []
            ]);
        }
        // part, payment method(cash,qr,debit), total charge , qr_id(optional)

    }

    public function updateCall(Request $request)
    {
        try {
            $request->validate([
                'id' => 'required',
                'payment_method' => 'required',
                'total_charge' => 'required'
            ]);

            $call = Calllog::find($request->id);
            if ($request->part_name) {
                $call->part_name = $request->part_name;
            }
            $call->payment_method = $request->payment_method;
            $call->total_charge = $request->total_charge;
            $call->qr_id = $request->qr_id ?? null;
            $call->status = 'completed';
            $call->save();

            $calllog = Calllog::with('assign') // Load the 'assign.user' relationship
                ->where('id', $request->id) // Filter by the provided ID
                ->first(); // Get the first matching record

            if (!$call) {
                return response()->json(['message' => 'Calllog not found'], 404);
            }

            // Collect users from 'calllog.user' and 'assign.user'
            $callUsers = collect();
            if ($calllog->user) {
                $callUsers->push($call->user); // Add the user from Calllog (if it has a direct user relationship)
            }

            foreach ($calllog->assign as $assign) {

                if ($assign->user) {
                    $callUsers->push($assign->user); // Add users from assign relationships
                }
            }
            // return $callUsers;

            // Get Admin users
            $adminUsers = User::role('Admin')->get();

            // Merge all users and remove duplicates
            $allUsers = $callUsers->merge($adminUsers)->unique('id'); // Ensure unique users by ID

            $tokens = [];
            foreach ($allUsers as $user) {
                if ($user->token) {
                    $tokens[] = $user->token;
                }
            }

            $title = 'Task Completed';
            $body = "Task Completed Successfully";

            $notification = new Notification();
            $notification->title = $title;
            $notification->detail = $body;
            $notification->save();

            $serviceAccountPath = storage_path('app/public/attendance.json');
            $factory = (new Factory)->withServiceAccount($serviceAccountPath);
            $messaging = $factory->createMessaging();


            $message = array_map(
                function ($tokens) use ($title, $body) {
                    if (isset($tokens) && $tokens != null)
                        return CloudMessage::withTarget('token', $tokens)
                            ->withNotification(FirebaseNotification::create($title, $body));
                },
                $tokens
            );
            if (count($message) > 0) {
                try {
                    $messaging->sendAll($message);
                } catch (\Exception $e) {
                    return response()->json(['error' => $e->getMessage()], 500);
                }
            }
            return response()->json([
                'status' => true,
                'message' => 'Call updated successfully.',
                'data' => $call
            ]);
        } catch (\Throwable $th) {
            //throw $th;
            return response()->json([
                'status' => false,
                'message' => $th->getMessage(),
                'data' => []
            ]);
        }
    }

    public function qrList()
    {
        try {
            $data = Qr::where('status', 'Active')->get();
            return response()->json([
                'status' => true,
                'message' => 'Qr list retrieved successfully.',
                'data' => $data
            ]);
        } catch (\Throwable $th) {
            //throw $th;

            return response()->json([
                'status' => false,
                'message' => $th->getMessage(),
                'data' => []
            ]);
        }
    }
}
