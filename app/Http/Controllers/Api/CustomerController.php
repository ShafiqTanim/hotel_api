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

    public function store(Request $request){
        $data=Customer::create($request->all());
        return $this->sendResponse($data,"Customer created successfully");
    }
    public function show(Customer $customer){
        return $this->sendResponse($customer,"Customer created successfully");
    }

    public function update(Request $request,$id){
        $input =$request->all();
        unset($input['isTrusted'], $input['_vts']);
        $data=Customer::where('id',$id)->update($input);
        return $this->sendResponse($id,"Customer updated successfully");
    }

    public function destroy(Customer $customer)
    {
        $doctor=$customer->delete();
        return $this->sendResponse($customer,"Customer deleted successfully");
    }

    public function _login(Request $r)
    {
        $data=Customer::where('email',$r->email)
                ->where('password',$r->password)
                ->first()?->toArray();
        if($data){
            $d['token']=$data['id'];
            $d['data']=$data;
            return $this->sendResponse($d,"User login successfully");
        }else{
            return $this->sendError(['error'=>'contact number or password is not correct'],"Unauthorized",400);
        }
    }
    public function _register(Request $r)
    {
        $validated = $r->validate([
            'name' => 'required|string',
            'email' => 'required|unique:customers,email|email',
            'contact' => 'required|unique:customers,contact',
            'nid' => 'required|unique:customers,nid',
            'password' => 'required|min:6',
            'c_password' => 'required|same:password',
        ]);

        // Hash the password before saving
        // $validated['password'] = Hash::make($r->password);

        $customer = Customer::create($validated);

        return $this->sendResponse($customer, "Customer registered successfully");
    }
}
