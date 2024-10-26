<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use App\Models\RosterSchedule;

class RosterScheduleController extends BaseController
{
    public function index(){
        $data=RosterSchedule::get();
        return $this->sendResponse($data,"RosterSchedule data");
    }

    public function store(Request $request){
        $data=RosterSchedule::create($request->all());
        return $this->sendResponse($data,"RosterSchedule created successfully");
    }
    public function show(RosterSchedule $rosterschedule){
        return $this->sendResponse($rosterschedule,"RosterSchedule created successfully");
    }

    public function update(Request $request,$id){

        $data=RosterSchedule::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"RosterSchedule updated successfully");
    }

    public function destroy(RosterSchedule $rosterschedule)
    {
        $doctor=$rosterschedule->delete();
        return $this->sendResponse($rosterschedule,"RosterSchedule deleted successfully");
    }
}
