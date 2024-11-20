<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Calllog;
use App\Models\Callog;
use App\Models\User;
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
            'photo' => 'required|file|mimes:jpeg,png,jpg,gif|max:2048',
            'description' => 'required|string',

        ]);
        $call = new Calllog();
        $call->date = $request->date;
        $call->description = $request->description;

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
}
