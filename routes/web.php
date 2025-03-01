<?php

use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/register', [UserController::class, 'index'])->name('register');
Route::post('/registerstore', [UserController::class, 'store']);


Route::get('/login', [UserController::class, 'login'])->name('login');

// Route::get('getdata',[ProductController::class,'api']);
// Route::post('proudct', [ProductController::class, 'store']);
// Route::post('updateproduct/{id}', [ProductController::class, 'update']);