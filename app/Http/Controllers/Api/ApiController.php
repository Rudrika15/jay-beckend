<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Assign;
use App\Models\Calllog;
use App\Models\Callog;
use App\Models\Product;
use App\Models\Qr;
use App\Models\Team;
use App\Models\Teammember;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

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

        return response()->json([
            'status' => true,
            'message' => 'Call log created successfully.',
            'data' => $call,
        ]);
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
        $calllog = Calllog::find($request->id);
        $calllog->status = $request->status;
        $calllog->save();
        return response()->json([
            'status' => true,
            'message' => 'Call log status changed successfully.',
            'data' => $calllog
        ]);
    }

    public function assignTask(Request $request)
    {


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
        return response()->json([
            'status' => true,
            'message' => 'Task assigned successfully.',
            'data' => $assignments
        ]);
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
                'part_name' => 'required',
                'payment_method' => 'required',
                'total_charge' => 'required'
            ]);

            $call = Calllog::find($request->id);
            $call->part_name = $request->part_name;
            $call->payment_method = $request->payment_method;
            $call->total_charge = $request->total_charge;
            $call->qr_id = $request->qr_id ?? null;
            $call->status = 'completed';
            $call->save();

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
