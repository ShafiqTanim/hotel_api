<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\Employee;

class EmployeeController extends BaseController
{
    public function index(){
        $data=Employee::with('role')->get();
        return $this->sendResponse($data,"Employee data");
    }

    public function store(Request $request){
        $data=Employee::create($request->all());
        return $this->sendResponse($data,"Employee created successfully");
    }
    public function show(Employee $employee){
        return $this->sendResponse($employee,"Employee created successfully");
    }

    public function update(Request $request,$id){

        $data=Employee::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Employee updated successfully");
    }

    public function destroy(Employee $employee)
    {
        $doctor=$employee->delete();
        return $this->sendResponse($employee,"Employee deleted successfully");
    }
}
