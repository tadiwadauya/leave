<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;


class Leave extends Model
{
    //
    use Notifiable;
    use SoftDeletes;

    protected $table = 'leaves';

    protected $fillable = [
        'paynumber',
        'type_of_leave',
        'days_taken',
        'date_from',
        'date_to',
        'applied_by',
        'department',
        'address',
        'mobile',
        'applier_name'
    ];

    public function users(){
        return $this->belongsTo('App\Models\User');
    }
}