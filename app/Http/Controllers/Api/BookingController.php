<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\Booking;

class BookingController extends BaseController
{
    public function index(){
        $data=Booking::with('customerid','roomlistid')->get();
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

    public function approveBooking($id)
    {
        // Find the booking by ID
        $booking = Booking::find($id);

        if (!$booking) {
            return $this->sendError('Booking not found', 404);
        }

        // Check if the room is associated and is currently available
        $room = RoomList::find($booking->room_list_id);
        if (!$room) {
            return $this->sendError('Room not found', 404);
        }

        if ($room->status != 0) {
            return $this->sendError('Room is not available for booking', 400);
        }

        // Update the room status to booked (1)
        $room->status = 1; // 1 = booked
        $room->save();

        // Update the booking status to approved (0)
        $booking->status = 0; // 0 = active (approved)
        $booking->save();

        return $this->sendResponse($booking, "Booking approved successfully");
    }
}
