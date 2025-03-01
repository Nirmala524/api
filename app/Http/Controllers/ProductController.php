<?php

namespace App\Http\Controllers;

use App\Models\product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use phpDocumentor\Reflection\PseudoTypes\True_;

class ProductController extends Controller
{
    public function index()
    {
        $product = product::all();
        return response()->json(['product' => $product], 200);
    }

    public function store(Request $request)
    {
        $data = $request->all();

        $request->validate([
            'name' => 'required | min:5 | max:30',
            'price' => 'required ',
            'desc' => 'required |min:5 |max:100',

        ]);
        $product = product::create($data);

        if (isset($product)) {
            return response()->json(['message' => ' successfully', 'data' => $product], 200);
        } else {
            return response()->json(['message' => 'Something went Wrong', 'data' => $product], 401);
        }


    }
    public function update(Request $request, string $id)
    {
        $data = product::find($id);
        $data->name = $request->name;
        $data->price = $request->price;
        $data->desc = $request->desc;
        $data->save();
        return response()->json($data);
    }
    public function destroy(string $id)
    {
        $product = product::find($id);
        $product->delete();
        return response()->json(['message' => 'Deleted']);
    }


    public function api()
    {
        $data = Http::get('https://jsonplaceholder.typicode.com/users');
        $two = json_decode($data, true);
        dd($two);

    }


}

//hevisi$&12