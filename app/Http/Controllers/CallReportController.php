<?php

namespace App\Http\Controllers;

use App\Models\Calllog;
use App\Models\Qr;
use App\Models\User;
use Illuminate\Http\Request;

class CallReportController extends Controller
{
    public function callReport(Request $request)
    {
        // $calls = Calllog::all();
        // $users = User::all();

        $staffs = User::with('roles')->whereHas('roles', function ($query) {
            $query->where('name', 'User');
        })->get();

        $qrs = Qr::all();

        $calls = Calllog::with(['user', 'assign.user']); // Assuming 'users' is a relationship in 'assign'.

        if ($request->start_date && $request->end_date) {
            $calls = $calls->whereBetween('date', [$request->start_date, $request->end_date]);
        }

        if ($request->staff_id) {
            $calls = $calls->whereHas('assign', function ($query) use ($request) {
                $query->where('userId', $request->staff_id);
            });
        }

        if ($request->status) {
            $calls = $calls->where('status', $request->status);
        }

        if (!$request->start_date && !$request->end_date && !$request->staff && !$request->client && !$request->status) {
            $calls = $calls->with('user');
        }
        $calls = $calls->orderBy('id', 'desc')->paginate(5);
        return view('callReport.callReport', compact('staffs', 'calls', 'qrs'));
    }

    public function callReportClient(Request $request)
    {
        $clients = User::with('roles')->whereHas('roles', function ($query) {
            $query->where('name', 'Client');
        })->get();

        $qrs = Qr::all();

        $calls = Calllog::with(['user', 'assign.user']); // Assuming 'users' is a relationship in 'assign'.

        if ($request->start_date && $request->end_date) {
            $calls = $calls->whereBetween('date', [$request->start_date, $request->end_date]);
        }

        if ($request->client_id) {
            $calls = $calls->whereHas('user', function ($query) use ($request) {
                $query->where('id', $request->client_id);
            });
        }

        if ($request->status) {
            $calls = $calls->where('status', $request->status);
        }

        if (!$request->start_date && !$request->end_date && !$request->staff && !$request->client && !$request->status) {
            $calls = $calls->with('user');
        }
        $calls = $calls->orderBy('id', 'desc')->paginate(5);
        return view('callReport.callReportClient', compact('calls', 'clients', 'qrs'));
    }

    public function callDetail($id)
    {
        $call = User::with('calllogs')->find($id);
        return view('callReport.callDetail', compact('call'));
    }

    public function updatePayment(Request $request)
    {
        $call = Calllog::find($request->id);
        // return $request->method;
        if ($request->method != 'cash') {

            $call->qr_id = $request->method;
            $call->payment_method = 'qr';
        } else {
            $call->payment_method = 'cash';
        }

        $call->total_charge = $request->amount;
        $call->save();

        return redirect()->back()->with('success', 'Payment Updated Successfully');
    }
}
