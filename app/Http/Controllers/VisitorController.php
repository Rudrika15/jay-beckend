<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class VisitorController extends Controller
{
    //

    public function homepage()
    {
        return view('visitor.pages.home');
    }
    public function about()
    {
        return view('visitor.pages.about');
    }

    public function product()
    {
        $data = Product::where('type', 'product')->get();
        return view('visitor.pages.product', compact('data'));
    }
    public function contact()
    {
        return view('visitor.pages.contact');
    }
}
