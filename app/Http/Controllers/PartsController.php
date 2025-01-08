<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class PartsController extends Controller
{
    //

    public function index()
    {
        $data = Product::where('type', 'parts')
            ->orderBy('created_at', 'desc')
            ->paginate(10);
        // ->get();
        return view('part.index', compact('data'));
    }
    public function create()
    {
        return view('part.create');
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

        $product->type = 'parts';

        $product->save();

        return redirect()->route('parts.index')->with('success', 'Parts created successfully.');
    }
    public function edit($id)
    {
        $data = Product::find($id);
        return view('part.edit', compact('data'));
    }

    public function update(Request $request)
    {
        $id = $request->id;
        $data = Product::find($id);
        $data->name = $request->name;

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $filename = time() . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('images'), $filename);
            $data->image = $filename;
        }
        $data->detail = $request->detail;
        $data->save();
        if ($data->type == "product") {
            return redirect()->route('product.index')->with('success', 'Product Updated Successfully');
        } else {
            return redirect()->route('parts.index')->with('success', 'Parts Updated Successfully');
        }
    }

    public function delete($id, $name)
    {
        $data = Product::find($id);
        $data->delete();
        if ($name == "product") {
            return redirect()->route('product.index')->with('success', 'Product Deleted Successfully');
        } else {
            return redirect()->route('parts.index')->with('success', 'Parts Deleted Successfully');
        }
    }
}
