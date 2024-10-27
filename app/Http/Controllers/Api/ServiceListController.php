<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\ServiceList;

class ServiceListController extends BaseController
{
    public function index(){
        $data=ServiceList::get();
        return $this->sendResponse($data,"ServiceList data");
    }

    public function store(Request $request){
        $data=ServiceList::create($request->all());
        return $this->sendResponse($data,"ServiceList created successfully");
    }
    public function show(ServiceList $servicelist){
        return $this->sendResponse($servicelist,"ServiceList created successfully");
    }

    public function update(Request $request,$id){

        $data=ServiceList::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"ServiceList updated successfully");
    }

    public function destroy(ServiceList $servicelist)
    {
        $doctor=$servicelist->delete();
        return $this->sendResponse($servicelist,"ServiceList deleted successfully");
    }
}
