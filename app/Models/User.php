<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    protected $table = 'system_user';
//    protected $fillable = ['title'];
    public function user_relation(){
         return $this->belongsTo('App\User')->withDefault();
    }
}
