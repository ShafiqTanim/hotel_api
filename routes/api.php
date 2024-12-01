<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\RoleController;
use App\Http\Controllers\Api\CustomerController;
use App\Http\Controllers\Api\BookingController;
use App\Http\Controllers\Api\RoomCategoryController;
use App\Http\Controllers\Api\ServiceListController;
use App\Http\Controllers\Api\ServiceBillController;
use App\Http\Controllers\Api\RoomListController;
use App\Http\Controllers\Api\EmployeeController;
use App\Http\Controllers\Api\MenuCategoryController;
use App\Http\Controllers\Api\MenuItemController;
use App\Http\Controllers\Api\MenuItemMenuCategoryController;
use App\Http\Controllers\Api\DayController;
use App\Http\Controllers\Api\ShiftController;
use App\Http\Controllers\Api\RosterScheduleController;
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
Route::controller(RoleController::class)->group(function(){
     Route::get('role/index','index');
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
     Route::post('customer/login','_login');
     Route::post('customer/register','_register');
});
Route::controller(RoomCategoryController::class)->group(function(){
     Route::get('roomcategory/index','index');
     Route::get('roomcategory/{roomcategory}','show');
     Route::post('roomcategory/edit/{roomcategory}','update');
     Route::delete('roomcategory/{roomcategory}','destroy');
     Route::post('roomcategory/create','store');
});
Route::controller(ServiceListController::class)->group(function(){
     Route::get('servicelist/index','index');
     Route::get('servicelist/{servicelist}','show');
     Route::post('servicelist/edit/{servicelist}','update');
     Route::delete('servicelist/{servicelist}','destroy');
     Route::post('servicelist/create','store');
});
Route::controller(ServiceBillController::class)->group(function(){
     Route::get('servicebill/index','index');
     Route::get('servicebill/{servicebill}','show');
     Route::post('servicebill/edit/{servicebill}','update');
     Route::delete('servicebill/{servicebill}','destroy');
     Route::post('servicebill/create','store');
});
Route::controller(RoomListController::class)->group(function(){
     Route::get('roomlist/index','index');
     Route::get('roomlist/{roomlist}','show');
     //Route::post('roomlist/edit/{roomlist}','update');
     Route::delete('roomlist/{roomlist}','destroy');
     Route::post('roomlist/create','store');
     Route::put('roomlist/edit/{roomlist}', 'update');

});
Route::controller(BookingController::class)->group(function(){
     Route::get('booking/index','index');
     Route::get('booking/{booking}','show');
     Route::post('booking/edit/{booking}','update');
     Route::delete('booking/{booking}','destroy');
     Route::post('booking/create','store');
});
Route::controller(EmployeeController::class)->group(function(){
     Route::get('employee/index','index');
     Route::get('employee/{employee}','show');
     Route::post('employee/edit/{employee}','update');
     Route::delete('employee/{employee}','destroy');
     Route::post('employee/create','store');
});
Route::controller(MenuCategoryController::class)->group(function(){
     Route::get('menucategory/index','index');
     Route::get('menucategory/{menucategory}','show');
     Route::post('menucategory/edit/{menucategory}','update');
     Route::delete('menucategory/{menucategory}','destroy');
     Route::post('menucategory/create','store');
});
Route::controller(MenuItemController::class)->group(function(){
     Route::get('menuitem/index','index');
     Route::get('menuitem/{menuitem}','show');
     Route::post('menuitem/edit/{menuitem}','update');
     Route::delete('menuitem/{menuitem}','destroy');
     Route::post('menuitem/create','store');
});
Route::controller(MenuItemMenuCategoryController::class)->group(function(){
     Route::get('menuitemmenucategory/index','index');
     Route::get('menuitemmenucategory/{menuitemmenucategory}','show');
     Route::post('menuitemmenucategory/edit/{menuitemmenucategory}','update');
     Route::delete('menuitemmenucategory/{menuitemmenucategory}','destroy');
     Route::post('menuitemmenucategory/create','store');
});
Route::controller(DayController::class)->group(function(){
    Route::get('day/index','index');
});
Route::controller(ShiftController::class)->group(function(){
    Route::get('shift/index','index');
});
Route::controller(RosterScheduleController::class)->group(function(){
    Route::get('rosterschedule/index','index');
    Route::get('rosterschedule/{rosterschedule}','show');
    Route::post('rosterschedule/edit/{rosterschedule}','update');
    Route::delete('rosterschedule/{rosterschedule}','destroy');
    Route::post('rosterschedule/create','store');
});
