<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller {

    public function getDataUser() {
//        $data_user = [{"name":"Seleccione", "id":0}];
        $data = User::where('id_tipouser', '=', '2')->whereNull('deleted_at')->get(['id', 'name']); //['id', 'name']
//        $data=["name"=>"name", "id"=>0];
//        foreach($data_user as $row) {
//            $obj = new \stdClass();
//            $obj->name = $row->name;
//            $obj->id = $row->id;
//            array_push($data, $obj);
//        }

        return $data;
    }

}
