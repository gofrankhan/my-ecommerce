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

    public function AdminProfileStore(Request $request){

		$id = Auth::user()->id;
		$data = User::find($id);
		$data->name = $request->name;
		$data->email = $request->email;


		if ($request->file('profile_photo_path')) {
			$file = $request->file('profile_photo_path');
			@unlink(public_path('upload/admin_images/'.$data->profile_photo_path));
			$filename = date('YmdHi').$file->getClientOriginalName();
			$file->move(public_path('upload/admin_images'),$filename);
			$data['profile_photo_path'] = $filename;
		}
		$data->save();

		$notification = array(
			'message' => 'Admin Profile Updated Successfully',
			'alert-type' => 'success'
		);

		return redirect()->route('admin.profile')->with($notification);

	} // end method 
}
