<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use App\Models\ReservationRequest;

class ReservationRequestController extends BaseController
{
    public function index(){
        $data=ReservationRequest::get();
        return $this->sendResponse($data,"ReservationRequest data");
    }

    public function store(Request $request){
        $data=ReservationRequest::create($request->all());
        return $this->sendResponse($data,"ReservationRequest created successfully");
    }
    public function show(ReservationRequest $reservationrequest){
        return $this->sendResponse($reservationrequest,"ReservationRequest created successfully");
    }

    public function update(Request $request,$id){

        $data=ReservationRequest::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"ReservationRequest updated successfully");
    }

    public function destroy(ReservationRequest $reservationrequest)
    {
        $doctor=$reservationrequest->delete();
        return $this->sendResponse($reservationrequest,"ReservationRequest deleted successfully");
    }
}
