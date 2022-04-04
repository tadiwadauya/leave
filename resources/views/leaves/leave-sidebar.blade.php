<?php
/**
 * Created by PhpStorm for wls
 * User: Vincent Guyo
 * Date: 1/30/2020
 * Time: 7:45 AM
 */
$user = Auth::user();
$paynumber = AUth::user()->paynumber;

$specialCount = \App\Models\Leave::where('type_of_leave','=','Compassionate')->where('paynumber','=',$paynumber)->where('status','=',1)->whereYear('created_at', '=', date('Y'))->sum('days_taken');
//$specialCount = \App\Models\Leave::where('type_of_leave','=','Compassionate')->where('status','=',1)->whereYear('created_at', '=', date('Y'))->count();

$sickCount = \App\Models\Leave::where('type_of_leave','=','Sick')->where('paynumber','=',$paynumber)->where('status','=',1)->whereYear('created_at', '=', date('Y'))->sum('days_taken');
//$sickCount = \App\Models\Leave::where('type_of_leave','=','Sick')->where('status','=',1)->whereYear('created_at', '=', date('Y'))->count();
//dd($sickCount);
$maternityCount = \App\Models\Leave::where('type_of_leave','=','Maternity')
    ->where('paynumber','=',$paynumber)
    ->where('status','=',1)
    ->whereYear('created_at', date('Y'))
    ->sum('days_taken');
?>

<div class="card">
    <div class="card-header text-white  bg-success">
        <div style="display: flex; justify-content: space-between; align-items: center;">

            @php
                $user = \App\Models\User::where('paynumber','=', $paynumber )->firstOrFail();
            @endphp
            <td>{{$user->first_name}} {{$user->last_name}}</td> Leave Info

        </div>
    </div>

    <div class="card-body">
        Leave Balance: {{$user->leave_days}}
        <br>
        <small> <u> According to the SI 26 of 2017, Section 17 for Transport Operating Industry.</u></small>
        <ul class="list-group">

            Special/ Compassionate days taken: {{$specialCount}} / 12
            <br/>
            Sick days taken: {{$sickCount}} / 180
            <br/>
            @if ($user->gender == 'Female')
                Maternity days taken: {{$maternityCount}} / 98
            @endif
        </ul>
    </div>

</div>
