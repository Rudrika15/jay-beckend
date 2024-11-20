<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    //
    public function index()
    {
        $data = Product::where('type', 'product')
            ->orderBy('created_at', 'desc')
            ->paginate(10);
        return view('product.index', compact('data'));
    }
    public function create()
    {
        return view('product.create');
    }
    public function store(Request $request)
    {

        $request->validate([
            'name' => 'required|string|max:255',  // Name validation
            'description' => 'required|string|max:5000',  // Description validation
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',  // Image validation
        ]);

        $product = new Product();
        $product->name = $request->name;
        $product->detail = $request->description;

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $filename = time() . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('images'), $filename);
            $product->image = $filename;
        }

        $product->type = 'product';

        $product->save();

        return redirect()->back()->with('success', 'Product created successfully.');
    }
}
