<?php

use App\Http\Controllers\ApiController;
use App\Http\Controllers\ProductController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use function Pest\Laravel\get;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');


Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::post('logout', [ApiController::class, 'logout']);
    Route::get('getdata', [ProductController::class, 'index']);
    Route::post('proudct', [ProductController::class, 'store']);
    Route::post('updateproduct/{id}', [ProductController::class, 'update']);
    Route::get('delete/{id}', [ProductController::class, 'destroy']);
});

Route::get('user', [ApiController::class, 'index']);

Route::post('register', [ApiController::class, 'register']);
Route::post('userupdate/{id}', [ApiController::class, 'update']);
Route::post('login', [ApiController::class, 'login']);
