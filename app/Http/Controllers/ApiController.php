<?php

namespace App\Http\Controllers;

use App\Models\product;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class ApiController extends Controller
{
    public function index()
    {
        $customers = User::all();
        return response()->json(['message' => 'Customers retrieved successfully', 'data' => $customers], 200);
    }

    public function register(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|unique:users|max:255',
            'password' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => false,
                'message' => 'Validation error',
                'errors' => $validator->errors()
            ], 401);
        }

        $customer = User::create($input);
        return response()->json([
            'status' => true,
            'message' => 'Customer created successfully',
            'data' => $customer
        ], 200);
    }


public function update(Request $request, $id)
{
    $validator = Validator::make($request->all(), [
        'name' => 'required|string|max:255',
        'email' => 'required|string|email|max:255|unique:users,email,' . $id,
    ]);

    if ($validator->fails()) {
        return response()->json([
            'status' => false,
            'message' => 'Validation error',
            'errors' => $validator->errors()
        ], 401);
    }

    $customer = User::findOrFail($id);
    $customer->save($request->all());

    return response()->json([
        'status' => true,
        'message' => 'Customer updated successfully',
        'data' => $customer
    ], 200);
}




    public function login(Request $request)
    {

        $login = $request->all();
        $validation = Validator::make(
            $login,
            [
                'email' => 'required|email',
                'password' => 'required',
            ] 
        );

        if ($validation->fails()) {
            return response()->json(['message' => 'Enter Valid Data'], 401);
        } else {
            if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
                $user = Auth::user();
                $token = $user->createToken('auth_token')->plainTextToken;
                return response()->json(['message' => 'login successfully', 'user' => $user, 'token' => $token], 200);
            } else {
                return response()->json(['message' => 'Invalid login credentials'], 401);
            };
        }
    }


    public function logout(Request $request)
    {
        $request->user()->tokens()->delete();
        $request->user()->currentAccessToken()->delete();
        return response()->json(['message' => 'You have been successfully logged out.'], 200);
    }

    

   
}
