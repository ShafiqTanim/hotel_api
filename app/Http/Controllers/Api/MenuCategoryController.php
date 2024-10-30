<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\MenuCategory;

class MenuCategoryController extends BaseController
{
    public function index(){
        $data=MenuCategory::get();
        return $this->sendResponse($data,"MenuCategory data");
    }

    public function store(Request $request){
        $data=MenuCategory::create($request->all());
        return $this->sendResponse($data,"MenuCategory created successfully");
    }
    public function show(MenuCategory $menucategory){
        return $this->sendResponse($menucategory,"MenuCategory created successfully");
    }

    public function update(Request $request,$id){

        $data=MenuCategory::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"MenuCategory updated successfully");
    }

    public function destroy(MenuCategory $menucategory)
    {
        $doctor=$menucategory->delete();
        return $this->sendResponse($menucategory,"MenuCategory deleted successfully");
    }
}
