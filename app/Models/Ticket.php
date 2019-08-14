<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Ticket extends Model
{
    protected $table = 'api_tickets';
//    protected $fillable = ['title'];
    public function user_relation(){
         return $this->belongsTo('App\Models\User', 'id_user');
    }
}
