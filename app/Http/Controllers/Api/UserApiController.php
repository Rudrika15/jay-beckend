<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserApiController extends Controller
{
    public function index()
    {
        return response()->json([
            'message' => 'Hello World',
        ]);
    }
    public function store(Request $request)
    {
        try {
            $request->validate([
                'name' => 'required',
                'phone' => 'required|digits:10|unique:users,phone',
                'email' => 'required|email|unique:users,email',
                'password' => 'required',
                'confirm_password' => 'required|same:password',
                'roles' => 'required',
                'birthdate' => 'required',
            ]);

            $user = new User();
            $user->name = $request->name;
            $user->phone = $request->phone;
            $user->email = $request->email;
            $user->password = Hash::make($request->password);
            $user->birthdate = $request->birthdate;
            $user->save();

            $user->assignRole($request->roles);

            return response()->json([
                'status' => true,
                'message' => 'User created successfully',
                'data' => $user
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage(),
                'data' => []
            ]);
        }
    }

    public function update(Request $request, $id)
    {
        try {
            $request->validate([
                'name' => 'required',
                'phone' => 'required|digits:10|unique:users,phone,' . $id,
                'email' => 'required|email|unique:users,email,' . $id,
                'birthdate' => 'required',
                'roles' => 'required',
            ]);
            $user = User::find($id);
            $user->name = $request->name;
            $user->phone = $request->phone;
            $user->email = $request->email;
            $user->birthdate = $request->birthdate;
            $user->save();

            $user->syncRoles($request->roles);

            return response()->json([
                'status' => true,
                'message' => 'User updated successfully',
                'data' => $user
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage(),
                'data' => []
            ]);
        }
    }
    public function destroy($id)
    {
        try {
            $user = User::find($id);
            $user->delete();
            return response()->json([
                'status' => true,
                'message' => 'User deleted successfully',
                'data' => $user
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage(),
                'data' => []
            ]);
        }
    }
}
