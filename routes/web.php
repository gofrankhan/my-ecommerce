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


/* ------------------------------------ Admin Route --------------------------------------------------*/

Route::prefix('admin')->group(function (){

    Route::get('/login',[AdminController::class, 'Index'])->name('login_from');
    
    Route::post('/login/owner',[AdminController::class, 'Login'])->name('admin.login');
    
    Route::get('/dashboard',[AdminController::class, 'Dashboard'])->name('admin.dashboard')->middleware('auth');
});

/*---------------------------------------- Admin Route --------------------------------------------------*/

Route::get('/dashboard', function () {
    return view('admin.index');
})->middleware(['auth', 'verified'])->name('dashboard');

//Admin All route
Route::middleware('auth')->group(function () {
    Route::get('/admin/login', [AdminController::class, 'loginForm']);
    Route::get('/admin/profile', [AdminProfileController::class, 'AdminProfile'])->name('admin.profile');
    Route::get('/admin/logout', [AuthenticatedSessionController::class, 'destroy'])->name('admin.logout');
});

//User All route
Route::get('/', [IndexController::class, 'index'])->name('index');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
