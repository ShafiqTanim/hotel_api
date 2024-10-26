<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use App\Models\ServiceBill;

class ServiceBillController extends BaseController
{
    public function index(){
        $data=ServiceBill::get();
        return $this->sendResponse($data,"ServiceBill data");
    }

    public function store(Request $request){
        $data=ServiceBill::create($request->all());
        return $this->sendResponse($data,"ServiceBill created successfully");
    }
    public function show(ServiceBill $servicebill){
        return $this->sendResponse($servicebill,"ServiceBill created successfully");
    }

    public function update(Request $request,$id){

        $data=ServiceBill::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"ServiceBill updated successfully");
    }

    public function destroy(ServiceBill $servicebill)
    {
        $doctor=$servicebill->delete();
        return $this->sendResponse($servicebill,"ServiceBill deleted successfully");
    }
}
