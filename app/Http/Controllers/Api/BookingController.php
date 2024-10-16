<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\Booking;

class BookingController extends BaseController
{
    public function index(){
        $data=Booking::get();
        return $this->sendResponse($data,"Booking data");
    }

    public function store(Request $request){
        $data=Booking::create($request->all());
        return $this->sendResponse($data,"Booking created successfully");
    }
    public function show(Booking $booking){
        return $this->sendResponse($booking,"Booking created successfully");
    }

    public function update(Request $request,$id){

        $data=Booking::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Booking updated successfully");
    }

    public function destroy(Booking $booking)
    {
        $doctor=$booking->delete();
        return $this->sendResponse($booking,"Booking deleted successfully");
    }
}
