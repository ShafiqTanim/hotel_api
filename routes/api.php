<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\CustomerController;
use App\Http\Controllers\Api\BookingController;
//use App\Http\Controllers\Api\DesignationController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::controller(AuthController::class)->group(function(){
    Route::post('register','_register');
    Route::post('login','_login');
});

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
// Route::controller(DesignationController::class)->group(function(){
//     Route::get('designation','index');
//     Route::get('designation/{designation}','show');
//     Route::put('designation/{designation}','update');
//     Route::delete('designation/{designation}','destroy');
//     Route::post('designation/create','store');
// });
Route::controller(CustomerController::class)->group(function(){
     Route::get('customer/index','index');
     Route::get('customer/{customer}','show');
     Route::post('customer/edit/{customer}','update');
     Route::delete('customer/{customer}','destroy');
     Route::post('customer/create','store');
});
Route::controller(BookingController::class)->group(function(){
     Route::get('booking/index','index');
     Route::get('booking/{booking}','show');
     Route::post('booking/edit/{booking}','update');
     Route::delete('booking/{booking}','destroy');
     Route::post('booking/create','store');
});
