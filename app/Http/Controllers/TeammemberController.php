<?php

namespace App\Http\Controllers;

use App\Models\Team;
use App\Models\Teammember;
use App\Models\User;
use Illuminate\Container\Attributes\DB;
use Illuminate\Http\Request;

class TeammemberController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $team = Team::findOrFail($request->id);

        $member = Teammember::where('teamId', $request->id)->get();

        $data = User::whereHas('roles', function ($query) {
            $query->where('name', '=', 'user');
        })->get();

        return view('teammember.create', compact('data', 'team', 'member'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'userId' => 'required',
            'teamId' => 'required',
        ]);
         $userId = $request->userId;
        $teamId = $request->teamId;
        foreach ($userId as $key => $value) {
            $teammember = new Teammember();
            $teammember->teamId = $teamId;
            $teammember->userId = $value;
            $teammember->save();
        }

        return redirect()->back()->with('success', 'Team Member Added Successfully');
    }


    /**
     * Display the specified resource.
     */
    public function show(Teammember $teammember)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Teammember $teammember)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Teammember $teammember)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Teammember $teammember)
    {
        //
    }
}
