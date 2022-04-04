<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    //

    protected $fillable = ['department', 'manager', 'asst_manager'];

    public function users(){
        return $this->hasMany('App\Models\User', 'department');
    }
}
