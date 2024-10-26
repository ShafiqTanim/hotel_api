<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use App\Models\FoodBill;

class FoodBillController extends BaseController
{
    public function index(){
        $data=FoodBill::get();
        return $this->sendResponse($data,"FoodBill data");
    }

    public function store(Request $request){
        $data=FoodBill::create($request->all());
        return $this->sendResponse($data,"FoodBill created successfully");
    }
    public function show(FoodBill $foodbill){
        return $this->sendResponse($foodbill,"FoodBill created successfully");
    }

    public function update(Request $request,$id){

        $data=FoodBill::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"FoodBill updated successfully");
    }

    public function destroy(FoodBill $foodbill)
    {
        $doctor=$foodbill->delete();
        return $this->sendResponse($foodbill,"FoodBill deleted successfully");
    }
}
