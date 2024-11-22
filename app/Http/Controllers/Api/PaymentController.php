<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\Payment;

class PaymentController extends BaseController
{
    public function index(){
        $data=Payment::get();
        return $this->sendResponse($data,"Payment data");
    }

    public function store(Request $request){
        $data=Payment::create($request->all());
        return $this->sendResponse($data,"Payment created successfully");
    }
    public function show(Payment $payment){
        return $this->sendResponse($payment,"Payment created successfully");
    }

    public function update(Request $request,$id){

        $data=Payment::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Payment updated successfully");
    }

    public function destroy(Payment $payment)
    {
        $doctor=$payment->delete();
        return $this->sendResponse($payment,"Payment deleted successfully");
    }
}
