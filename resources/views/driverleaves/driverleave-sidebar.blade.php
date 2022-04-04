<?php
/**
 * Created by PhpStorm for wls
 * User: Vincent Guyo
 * Date: 7/17/2020
 * Time: 3:43 AM
 */

$paynumber = AUth::user()->paynumber;

$specialCount = \App\Models\Leave::where('type_of_leave','=','Compassionate')->where('paynumber','=',$paynumber)->where('status','=',1)->whereYear('created_at', '=', date('Y'))->sum('days_taken');
//$specialCount = \App\Models\Leave::where('type_of_leave','=','Compassionate')->where('status','=',1)->whereYear('created_at', '=', date('Y'))->count();

$sickCount = \App\Models\Leave::where('type_of_leave','=','Sick')->where('paynumber','=',$paynumber)->where('status','=',1)->whereYear('created_at', '=', date('Y'))->sum('days_taken');
//$sickCount = \App\Models\Leave::where('type_of_leave','=','Sick')->where('status','=',1)->whereYear('created_at', '=', date('Y'))->count();
//dd($sickCount);
$maternityCount = \App\Models\Leave::where('type_of_leave','=','Maternity')->where('paynumber','=',$paynumber)->where('status','=',1)->count();
?>

<div class="card">
    <div class="card-header text-white  bg-success">
        <div style="display: flex; justify-content: space-between; align-items: center;">
            Driver Leave Info
        </div>
    </div>

    <div class="card-body">
        <small> <u> According to the SI 26 of 2017, Section 17 for Transport Operating Industry. An employee is allowed:</u></small>
        <ul class="list-group">
            Compassionate days :  12
            <br/>
            Sick days : 180
            <br/>
            Maternity days :  3
        </ul>
        <br>
        <h5> <u>Previous Leave Records </u></h5>
        <div id="exceptions">

        </div>
    </div>

</div>

