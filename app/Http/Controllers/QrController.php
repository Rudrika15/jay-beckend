<?php

namespace App\Http\Controllers;

use App\Models\Qr;
use Illuminate\Http\Request;

class QrController extends Controller
{
    //
    public function index()
    {
        $data = Qr::all();
        return view('qr.index', compact('data'));
    }
    public function edit($id)
    {
        $data = Qr::find($id);
        return view('qr.edit', compact('data'));
    }
    public function update(Request $request)
    {
        $id = $request->id;
        $data = Qr::find($id);
        $data->name = $request->name;
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $filename = time() . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('images'), $filename);
            $data->image = $filename;
        }
        $data->status = $request->status;
        $data->save();
        return redirect()->back()->with('success', 'Qr Updated Successfully');
    }
    public function destroy($id)
    {
        $data = Qr::find($id);
        $data->delete();
        return redirect()->back()->with('success', 'Qr Deleted Successfully');
    }
}
