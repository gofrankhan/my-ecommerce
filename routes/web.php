<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Auth\AuthenticatedSessionController;
use App\Http\Controllers\Backend\AdminProfileController;
use App\Http\Controllers\Backend\BrandController;
use App\Http\Controllers\Frontend\IndexController;
use Illuminate\Support\Facades\Route;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use App\Http\Middleware\RoleMiddleware;

//Admin All route
Route::middleware([RoleMiddleware::class], 'auth', 'verified')->group(function () {
    Route::get('/admin/profile', [AdminProfileController::class, 'AdminProfile'])->name('admin.profile');
    Route::get('/admin/profile/edit', [AdminProfileController::class, 'AdminProfileEdit'])->name('admin.profile.edit');
    Route::post('/admin/profile/store', [AdminProfileController::class, 'AdminProfileStore'])->name('admin.profile.store');
    Route::get('/admin/change/password', [AdminProfileController::class, 'AdminChangePassword'])->name('admin.change.password');
    Route::post('/admin/update/password', [AdminProfileController::class, 'AdminUpdatePassword'])->name('admin.update.password');
    Route::get('/admin/logout', [AuthenticatedSessionController::class, 'destroy'])->name('admin.logout');
    Route::get('/admin/dashboard',[AdminController::class, 'Dashboard'])->name('admin.dashboard');
    Route::get('/admin/register',[AdminController::class, 'AdminRegister'])->name('admin.register');
    Route::post('new/admin/store',[AdminController::class, 'NewAdminStore'])->name('new.admin.store');
});

//User All route
Route::get('/', [IndexController::class, 'index'])->name('index');
Route::get('/admin/login', [AdminController::class, 'loginForm'])->name('admin.login');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::get('/user/profile', [IndexController::class, 'UserProfile'])->name('user.profile');
    Route::post('/user/profile/store', [IndexController::class, 'UserProfileStore'])->name('user.profile.store');
    Route::get('/user/profile', [IndexController::class, 'UserProfile'])->name('user.profile');
    Route::get('/user/dashboard', [IndexController::class, 'UserDashboard'])->name('user.dashboard');
    Route::get('/user/change/password', [IndexController::class, 'UserChangePassword'])->name('user.change.password');
    Route::post('/user/password/update', [IndexController::class, 'UserPasswordUpdate'])->name('user.password.update');
    Route::get('/user/logout', [IndexController::class, 'UserLogout'])->name('user.logout');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

//All Brand Route
Route::middleware([RoleMiddleware::class], 'auth', 'verified')->group(function () {
    Route::prefix('brand')->group(function(){
        Route::get('/view', [BrandController::class, 'BrandView'])->name('all.brands');
        Route::post('/store', [BrandController::class, 'BrandStore'])->name('brand.store');
        Route::get('/edit', [BrandController::class, 'BrandEdit'])->name('brand.edit');
        Route::post('/delete', [BrandController::class, 'BrandDelete'])->name('brand.delete');
    });
});
require __DIR__.'/auth.php';
