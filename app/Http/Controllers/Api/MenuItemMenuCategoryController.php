<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use App\Models\MenuItemMenu;

class MenuItemMenuCategoryController extends BaseController
{
    public function index(){
        $data=MenuItemMenuCategory::get();
        return $this->sendResponse($data,"MenuItemMenuCategory data");
    }

    public function store(Request $request){
        $data=MenuItemMenuCategory::create($request->all());
        return $this->sendResponse($data,"MenuItemMenuCategory created successfully");
    }
    public function show(MenuItemMenuCategory $menuitemmenucategory){
        return $this->sendResponse($menuitemmenucategory,"MenuItemMenuCategory created successfully");
    }

    public function update(Request $request,$id){

        $data=MenuItemMenuCategory::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"MenuItemMenuCategory updated successfully");
    }

    public function destroy(MenuItemMenuCategory $menuitemmenucategory)
    {
        $doctor=$menuitemmenucategory->delete();
        return $this->sendResponse($menuitemmenucategory,"MenuItemMenuCategory deleted successfully");
    }
}
