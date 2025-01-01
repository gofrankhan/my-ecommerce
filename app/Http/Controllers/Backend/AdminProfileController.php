<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

class AdminProfileController extends Controller
{
    //
    public function AdminProfile(){
        $userData = User::find(1);
        return view('admin.admin_profile_view', compact('userData'));
    }
}
