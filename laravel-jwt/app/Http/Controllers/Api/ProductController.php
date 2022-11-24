<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $product = Product::latest()->get();
        $product->each(function ($item, $key) {
            $item->name = Crypt::decryptString($item->name);
            $item->image = Crypt::decryptString($item->image);
            $item->image = route('showimage', $item->image);
        });

        return \response()->json([
            'message' => 'Success get data product',
            'data' => $product
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input =  $request->all();
        $image = $request->file('image');
        $imageName = date('YmdHis') . "." . $image->getClientOriginalExtension();
        $path =  'item/' . $imageName;
        $image->storeAs('item/', $imageName, ['disk' => 'public']);
        $input['image'] = $path;
        // dd($input);
        $input['name'] = Crypt::encryptString($input['name']);
        $input['image'] = Crypt::encryptString($input['image']);
        // dd($input);
        $p = Product::create($input);
        // dd($p);
        return response()->json([
            'message' => 'success',
            'data' => $p
        ], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Product::where('id', $id)->delete();
        return response()->json([
            'message' => 'success delete data'
        ]);
    }

    public function showID($id)
    {
        $product = Product::find($id);
        $product->name = Crypt::decryptString($product->name);
        $product->image = Crypt::decryptString($product->image);
        $product->image = route('showimage', $product->image);
        return \response()->json([
            'message' => 'Success get detail data product',
            'data' => $product
        ]);
    }
}
