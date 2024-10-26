<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use App\Models\MenuItem;

class MenuItemController extends BaseController
{
    public function index(){
        $data=MenuItem::get();
        return $this->sendResponse($data,"MenuItem data");
    }

    public function store(Request $request){
        $data=MenuItem::create($request->all());
        return $this->sendResponse($data,"MenuItem created successfully");
    }
    public function show(MenuItem $menuitem){
        return $this->sendResponse($menuitem,"MenuItem created successfully");
    }

    public function update(Request $request,$id){

        $data=MenuItem::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"MenuItem updated successfully");
    }

    public function destroy(MenuItem $menuitem)
    {
        $doctor=$menuitem->delete();
        return $this->sendResponse($menuitem,"MenuItem deleted successfully");
    }
}
