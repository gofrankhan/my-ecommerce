<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests\Auth\LoginRequest;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;


class AdminController extends Controller
{

    public function loginForm(){
    	return view('auth.admin_login');
    }

    public function Dashboard(){
    	 return view('admin.index');
    }
}
