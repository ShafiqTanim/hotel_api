<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\Customer;

class CustomerController extends BaseController
{
    public function index(){
        $data=Customer::get();
        return $this->sendResponse($data,"Customer data");
    }

    public function store(){
        $data=Customer::create($request->all());
        return $this->sendResponse($data,"Customer created successfully");
    }
    public function show(Customer $customer){
        return $this->sendResponse($customer,"Doctor created successfully");
    }

    public function update(Request $request,$id){

        $data=Customer::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Doctor updated successfully");
    }

    public function destroy(Customer $customer)
    {
        $doctor=$customer->delete();
        return $this->sendResponse($customer,"Doctor deleted successfully");
    }
}
