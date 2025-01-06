<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Auth\AuthenticatedSessionController;
use App\Http\Controllers\Backend\AdminProfileController;
use App\Http\Controllers\Frontend\IndexController;
use Illuminate\Support\Facades\Route;

Route::get('/welcome', function () {
    return view('welcome');
});

// Route::group(['prefix'=> 'admin', 'middleware' => ['admin:admin']],  function(){
//     Route::post('/login/admin', [AdminController::class, 'loginAdmin'])->name('admin.login');
// });

//Admin All route
Route::middleware('auth', 'verified')->group(function () {
    Route::get('/admin/profile', [AdminProfileController::class, 'AdminProfile'])->name('admin.profile');
    Route::get('/admin/logout', [AuthenticatedSessionController::class, 'destroy'])->name('admin.logout');
    Route::get('/admin/dashboard',[AdminController::class, 'Dashboard'])->name('admin.dashboard');
});

//User All route
Route::get('/', [IndexController::class, 'index'])->name('index');
Route::get('/admin/login', [AdminController::class, 'loginForm'])->name('admin.login');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
