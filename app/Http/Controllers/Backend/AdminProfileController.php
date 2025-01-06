<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

class AdminProfileController extends Controller
{
    //
    public function AdminProfile(){
        $user = Auth::user();
        $userData = User::findOrFail($user->id);
        return view('admin.admin_profile_view', compact('userData'));
    }

    public function AdminProfileEdit(){
        $user = Auth::user();
        $userData = User::findOrFail($user->id);
        return view('admin.admin_profile_edit', compact('userData'));
    }
}
