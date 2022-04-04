<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class DriverLeave extends Model
{
    use SoftDeletes;

    protected $table = 'driver_leaves';

    protected $fillable = [
        'paynumber',
        'type_of_leave',
        'days_taken',
        'date_from',
        'date_to',
        'applied_by',
        'address',
        'mobile',
        'status',
        'approved_by',
        'approved_when',
        'approver_name',
    ];

    public function driver(){
        return $this->belongsTo('App\Models\Driver');
    }
}
