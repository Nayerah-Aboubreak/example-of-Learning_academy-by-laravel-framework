<?php

namespace App\Http\Controllers\Front;

use App\Setting;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ContactController extends Controller
{
    public function index()
    {
        $data['settings'] = Setting::first();

        return view('Front/contact/index')->with($data);
        

    }
    
}
