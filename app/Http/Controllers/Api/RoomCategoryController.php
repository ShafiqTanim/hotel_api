<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use App\Models\RoomCategory;

class RoomCategoryController extends BaseController
{
    public function index(){
        $data=RoomCategory::get();
        return $this->sendResponse($data,"RoomCategory data");
    }

    public function store(Request $request){
        $data=RoomCategory::create($request->all());
        return $this->sendResponse($data,"RoomCategory created successfully");
    }
    public function show(RoomCategory $roomcategory){
        return $this->sendResponse($roomcategory,"RoomCategory created successfully");
    }

    public function update(Request $request,$id){

        $data=RoomCategory::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"RoomCategory updated successfully");
    }

    public function destroy(RoomCategory $roomcategory)
    {
        $doctor=$roomcategory->delete();
        return $this->sendResponse($roomcategory,"RoomCategory deleted successfully");
    }
}
