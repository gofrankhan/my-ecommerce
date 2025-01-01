<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Auth\AuthenticatedSessionController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::group(['prefix'=> 'admin', 'middleware' => ['admin:admin']],  function(){
    Route::post('/login/admin', [AdminController::class, 'loginAdmin'])->name('admin.login');
});

Route::get('/dashboard', function () {
    return view('admin.index');
})->middleware(['auth', 'verified'])->name('dashboard');

//Admin All route
Route::middleware('auth')->group(function () {
    Route::get('/admin/login', [AdminController::class, 'loginForm']);
    Route::get('/admin/logout', [AuthenticatedSessionController::class, 'destroy'])->name('admin.logout');
});

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
