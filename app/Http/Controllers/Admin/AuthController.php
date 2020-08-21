<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AuthController extends Controller
{
    public function login()
    {
        return view('Admin.auth.login');
    }

    public function doLogin(Request $request)
    {
        $data = $request->validate([
            'email' => 'required|email|max:191',
            'password' => 'required|string',
        ]);

        if(!auth()->guard('admin')->attempt([ 'email'=>$data['email'], 'password'=>$data['password'] ]))
        {
            return back();
        }else
        {
            return redirect(route('Admin.home'));
        }
    }

    public function logout()
    {
        auth()->guard('admin')->logout();

        return  redirect(route('Admin.login'));
    }
}
