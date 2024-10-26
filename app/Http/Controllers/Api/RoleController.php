<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use App\Models\Role;

class RoleController extends BaseController
{
    public function index(){
        $data=Role::get();
        return $this->sendResponse($data," data");
    }
}
