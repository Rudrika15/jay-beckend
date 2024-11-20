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
}
