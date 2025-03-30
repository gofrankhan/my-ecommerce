<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\User;
use Carbon\Carbon;
use Image;
use Auth;
use Illuminate\Support\Facades\Hash;

class AdminUserController extends Controller
{
    //
    public function AllAdminRole()
    {

        $adminuser = User::where('type', 2)->latest()->get();
        return view('backend.role.admin_role_all', compact('adminuser'));
    } // end method 


    public function AddAdminRole()
    {
        return view('backend.role.admin_role_create');
    }



    public function StoreAdminRole(Request $request)
    {


        $image = $request->file('profile_photo_path');
        $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        // Image::make($image)->resize(225, 225)->save('upload/admin_images/' . $name_gen);
        $save_url = 'upload/admin_images/' . $name_gen;
        $destinationPath = 'upload/admin_images/';
        $image->move($destinationPath, $name_gen);

        User::insert([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'role' => 'admin',
            'phone' => $request->phone,
            'brand' => $request->brand,
            'category' => $request->category,
            'product' => $request->product,
            'slider' => $request->slider,
            'coupons' => $request->coupons,

            'shipping' => $request->shipping,
            'blog' => $request->blog,
            'setting' => $request->setting,
            'returnorder' => $request->returnorder,
            'review' => $request->review,

            'orders' => $request->orders,
            'stock' => $request->stock,
            'reports' => $request->reports,
            'allusers' => $request->alluser,
            'adminuserrole' => $request->adminuserrole,
            'type' => 2,
            'profile_photo_path' => $save_url,
            'created_at' => Carbon::now(),


        ]);

        $notification = array(
            'message' => 'Admin User Created Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.admin.user')->with($notification);
    } // end method 



    public function EditAdminRole($id)
    {

        $adminuser = User::findOrFail($id);
        return view('backend.role.admin_role_edit', compact('adminuser'));
    } // end method 




    public function UpdateAdminRole(Request $request)
    {

        $admin_id = $request->id;
        $old_img = $request->old_image;

        if ($request->file('profile_photo_path')) {

            unlink($old_img);
            $image = $request->file('profile_photo_path');
            $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
            // Image::make($image)->resize(225, 225)->save('upload/admin_images/' . $name_gen);
            $destinationPath = 'upload/admin_images/';
            $image->move($destinationPath, $name_gen);
            $save_url = 'upload/admin_images/' . $name_gen;


            User::findOrFail($admin_id)->update([
                'name' => $request->name,
                'email' => $request->email,

                'phone' => $request->phone,
                'brand' => $request->brand,
                'category' => $request->category,
                'product' => $request->product,
                'slider' => $request->slider,
                'coupons' => $request->coupons,

                'shipping' => $request->shipping,
                'blog' => $request->blog,
                'setting' => $request->setting,
                'returnorder' => $request->returnorder,
                'review' => $request->review,

                'orders' => $request->orders,
                'stock' => $request->stock,
                'reports' => $request->reports,
                'allusers' => $request->alluser,
                'adminuserrole' => $request->adminuserrole,
                'type' => 2,
                'profile_photo_path' => $save_url,
                'created_at' => Carbon::now(),

            ]);

            $notification = array(
                'message' => 'Admin User Updated Successfully',
                'alert-type' => 'info'
            );

            return redirect()->route('all.admin.user')->with($notification);
        } else {

            User::findOrFail($admin_id)->update([
                'name' => $request->name,
                'email' => $request->email,

                'phone' => $request->phone,
                'brand' => $request->brand,
                'category' => $request->category,
                'product' => $request->product,
                'slider' => $request->slider,
                'coupons' => $request->coupons,

                'shipping' => $request->shipping,
                'blog' => $request->blog,
                'setting' => $request->setting,
                'returnorder' => $request->returnorder,
                'review' => $request->review,

                'orders' => $request->orders,
                'stock' => $request->stock,
                'reports' => $request->reports,
                'allusers' => $request->alluser,
                'adminuserrole' => $request->adminuserrole,
                'type' => 2,

                'created_at' => Carbon::now(),

            ]);

            $notification = array(
                'message' => 'Admin User Updated Successfully',
                'alert-type' => 'info'
            );

            return redirect()->route('all.admin.user')->with($notification);
        } // end else 

    } // end method 


    public function DeleteAdminRole($id)
    {

        $adminimg = User::findOrFail($id);
        $img = $adminimg->profile_photo_path;
        unlink($img);

        User::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Admin User Deleted Successfully',
            'alert-type' => 'info'
        );

        return redirect()->back()->with($notification);
    } // end method 
}
