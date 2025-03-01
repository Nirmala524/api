<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class UserController extends Controller
{
   
    //============================register=============================
    public function index()
    {

        return view('auth.register');
    }
    public function store(Request $request)

    {

        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required',

        ]);
        $data = $request->all();
        $data['password'] = Hash::make($request->password);



        User::create($data);
        return redirect('/');
    }

    //  //=====================login=========================
     public function login()
     {
         return view('auth.login');
     }
    //  public function loginstore(Request $request)
    //  {
    //      $request->validate([
    //          'email' => 'required |email|',
    //          'password' => 'required|min:8',
    //      ]);
 
    //      $user = UserController::where('email', $request->email)->first();
 
    //      if (isset($user)) {
    //          if (Hash::check($request->password, $user->password)) {
    //              Session::put('email', $user->email);
    //              Session::put('name', $user->name);
    //              Session::put('user_id', $user->id);
    //              return redirect("/")->with('success', 'Login Successfully');
    //          } else {
    //              return redirect('login')->with('error', 'Password Not Matched');
    //          }
    //      } else {
    //          return redirect("login")->with('error', 'User Not Found');
    //      }
    //  }
 
    //  public function logout()
    //  {
    //      Session::flush();
    //      return redirect('/');
    //  }
}
