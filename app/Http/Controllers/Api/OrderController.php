<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use App\Models\Order;

class OrderController extends BaseController
{
    public function index(){
        $data=Order::get();
        return $this->sendResponse($data,"Order data");
    }

    public function store(Request $request){
        $data=Order::create($request->all());
        return $this->sendResponse($data,"Order created successfully");
    }
    public function show(Order $order){
        return $this->sendResponse($order,"Order created successfully");
    }

    public function update(Request $request,$id){

        $data=Order::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Order updated successfully");
    }

    public function destroy(Order $order)
    {
        $doctor=$order->delete();
        return $this->sendResponse($order,"Order deleted successfully");
    }
}
