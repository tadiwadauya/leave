<?php
/**
 * Created by PhpStorm for wls
 * User: Tadiwanshe Dauya
 * Date: 1/11/2021
 * Time: 2:43 AM
 */

$userInfo = \App\Models\User::where('paynumber', $leave->paynumber )->first();
//dd($userInfo->first_name);
?>
<html>
<head>
    <style>
        body {
            font-family: sans-serif;
            font-size: 10pt;
        }

        p {
            margin: 0pt;
        }

        table.items {
            border: 0.1mm solid #000000;
        }

        td {
            vertical-align: top;
        }

        .items td {
            border-left: 0.1mm solid #000000;
            border-right: 0.1mm solid #000000;
        }

        table thead td {
            background-color: #EEEEEE;
            text-align: center;
            border: 0.1mm solid #000000;
            font-variant: small-caps;
        }

        .items td.blanktotal {
            background-color: #EEEEEE;
            border: 0.1mm solid #000000;
            background-color: #FFFFFF;
            border: 0mm none #000000;
            border-top: 0.1mm solid #000000;
            border-right: 0.1mm solid #000000;
        }

        .items td.totals {
            text-align: right;
            border: 0.1mm solid #000000;
        }

        .items td.cost {
            text-align: "." center;
        }
    </style>
</head>
<body>
<htmlpageheader name="myheader">
    <strong><p style="text-align: center; font-size: 14pt; font-weight: bold;">WHELSON TRANSPORT <br/>
            LEAVE FORM</p></strong>
</htmlpageheader>

<sethtmlpageheader name="myheader" value="on" show-this-page="1"/>

<table border="1" width="100%" style="font-family: Arial; border-collapse: collapse; font-size: 10pt;" cellpadding="5">
    <tr>
        <td style="width: 24%;">PAY NO</td>
        <td style="width: 24%;"><strong>{{$leave->paynumber}}</strong></td>
        <td style="width: 1%"></td>
        <td style="width: 24%;">DATE &nbsp;&nbsp;</td>
        <td style="width: 24%;"><strong>{{' '.date('M j Y', strtotime($leave->created_at))}}</strong></td>
        
    </tr>

    <tr>
        <td style="width: 24%;">NAME</td>
        <td style="width: 24%;"><strong>{{$userInfo->first_name.' '.$userInfo->last_name}}</strong></td>
        <td style="width: 1%"></td>
        <td style="width: 24%;">DEPARTMENT</td>
        <td style="width: 24%;"><strong>{{' '.$leave->department}}</strong></td>
    </tr>

    <tr>
        <td style="width: 24%;">CONTACT ADDRESS</td>
        <td style="width: 24%;"><strong>{{$userInfo->address}}</strong></td>
        <td style="width: 1%"></td>
        <td style="width: 24%;">CONTACT NO</td>
        <td style="width: 24%;"><strong>{{' '.$userInfo->mobile}}</strong></td>
    </tr>
</table>
<br/>
<p style="font-weight: bold; text-align: center; font-size: 10pt;">Apply for ANNUAL/SICK/MATERNITY/STUDY LEAVE please tick</p>
<br/>

@if ($leave->type_of_leave =='Annual' OR $leave->type_of_leave =='Sick' OR $leave->type_of_leave =='Maternity' OR $leave->type_of_leave =='Off Day' OR $leave->type_of_leave =='Compassionate')
<table border="1" width="100%" style="font-family: Arial; border-collapse: collapse; font-size: 10pt;" cellpadding="5">
    <tr>
        <td colspan="2" style="font-weight: bold; text-align: center;"><input type="checkbox" name="Off Day" value="Off Day" @if ($leave->type_of_leave =='Off Day') checked="checked" @endif> OFF DAY /
            <input type="checkbox" name="Annual" value="Annual" @if ($leave->type_of_leave =='Annual') checked="checked" @endif> ANNUAL LEAVE /
            <input type="checkbox" name="Sick" value="Sick" @if ($leave->type_of_leave =='Sick') checked="checked" @endif> SICK LEAVE /
            <input type="checkbox" name="Maternity" value="Maternity" @if ($leave->type_of_leave =='Maternity') checked="checked" @endif> MATERNITY LEAVE /
            <input type="checkbox" name="Compassionate" value="Compassionate" @if ($leave->type_of_leave =='Compassionate') checked="checked" @endif> COMPASSIONATE LEAVE
        </td>
    </tr>

    <tr>
        <td style="width: 23%;">FROM: (Date inclusive)</td>
        <td style="width: 77%; text-align: center;">{{$leave->date_from}}</td>
    </tr>

    <tr>
        <td>TO: (Date inclusive)</td>
        <td style="text-align: center;">{{$leave->date_to}}</td>
    </tr>

    <tr>
        <td>TOTAL LEAVE DAYS REQUESTED</td>
        <td style="text-align: center;">{{$leave->days_taken}}</td>
    </tr>

    <tr>
        <td colspan="2">DOCTORS NOTE PRODUCED</td>
    </tr>
    <tr>
        <td colspan="2">Doctor's note to be produced for sick leave exceeding 2 days</td>
    </tr>
</table>
<br/>
@else
<table border="1" width="100%" style="font-family: Arial; border-collapse: collapse; font-size: 10pt;" cellpadding="5">
    <tr>
        <td colspan="2" style="font-weight: bold; text-align: center;"><input type="checkbox" name="Off Day" value="Off Day" @if ($leave->type_of_leave =='Off Day') checked="checked" @endif> OFF DAY /
            <input type="checkbox" name="Annual" value="Annual" @if ($leave->type_of_leave =='Annual') checked="checked" @endif> ANNUAL LEAVE /
            <input type="checkbox" name="Sick" value="Sick" @if ($leave->type_of_leave =='Sick') checked="checked" @endif> SICK LEAVE /
            <input type="checkbox" name="Maternity" value="Maternity" @if ($leave->type_of_leave =='Maternity') checked="checked" @endif> MATERNITY LEAVE /
            <input type="checkbox" name="Compassionate" value="Compassionate" @if ($leave->type_of_leave =='Compassionate') checked="checked" @endif> COMPASSIONATE LEAVE
        </td>
    </tr>

    <tr>
        <td style="width: 23%;">FROM: (Date inclusive)</td>
        <td style="width: 77%; text-align: center;">N/A</td>
    </tr>

    <tr>
        <td>TO: (Date inclusive)</td>
        <td style="text-align: center;">N/A</td>
    </tr>

    <tr>
        <td>TOTAL LEAVE DAYS REQUESTED</td>
        <td style="text-align: center;">N/A</td>
    </tr>

    <tr>
        <td colspan="2">DOCTORS NOTE PRODUCED &nbsp;&nbsp;&nbsp;N/A</td>
    </tr>
    <tr>
        <td colspan="2">Doctor's note to be produced for sick leave exceeding 2 days. &nbsp;&nbsp;&nbsp;N/A</td>
    </tr>
</table>
<br/>
@endif

@if ($leave->type_of_leave =='Study')
<table border="1" width="100%" style="font-family: Arial; border-collapse: collapse; font-size: 10pt;" cellpadding="5">
    <tr>
        <td colspan="2" style="font-weight: bold; text-align: center;"><input type="checkbox" name="Study" value="Study" @if ($leave->type_of_leave =='Study') checked="checked" @endif> STUDY LEAVE</td>
    </tr>

    <tr>
        <td style="width: 23%;">FROM: (Date inclusive)</td>
        <td style="width: 77%; text-align: center;">{{$leave->date_from}}</td>
    </tr>

    <tr>
        <td>TO: (Date inclusive)</td>
        <td style="text-align: center;">{{$leave->date_to}}</td>
    </tr>

    <tr>
        <td>CURRENT STUDIES</td>
        <td style="text-align: center;">In the interest of the company <br/>(YES / NO)</td>
    </tr>

</table>
<br/>
@else
<table border="1" width="100%" style="font-family: Arial; border-collapse: collapse; font-size: 10pt;" cellpadding="5">
    <tr>
        <td colspan="2" style="font-weight: bold; text-align: center;"><input type="checkbox" name="Study" value="Study" @if ($leave->type_of_leave =='Study') checked="checked" @endif> STUDY LEAVE</td>
    </tr>

    <tr>
        <td style="width: 23%;">FROM: (Date inclusive)</td>
        <td style="width: 77%; text-align: center;">N/A</td>
    </tr>

    <tr>
        <td>TO: (Date inclusive)</td>
        <td style="text-align: center;">N/A</td>
    </tr>

    <tr>
        <td>CURRENT STUDIES</td>
        <td style="text-align: center; font-size: 14pt;">N/A</td>
    </tr>

</table>
<br/>
@endif

@if ($leave->type_of_leave =='Cash in Lieu of Leave (CILL)')
<table border="1" width="100%" style="font-family: Arial; border-collapse: collapse; font-size: 10pt;" cellpadding="5">
    <tr>
        <td colspan="2" style="font-weight: bold; text-align: center; border-bottom: none;"><input type="checkbox" name="Cash in Lieu of Leave (CILL)" value="Cash in Lieu of Leave (CILL)" @if ($leave->type_of_leave =='Cash in Lieu of Leave (CILL)') checked="checked" @endif> CASH IN LIEU OF LEAVE (CILL)</td>
    </tr>

    <tr>
         <td colspan="2" style="border-top: none;">NUMBER OF DAYS SURRENDERED &nbsp;&nbsp;&nbsp;&nbsp;{{$leave->days_taken}}</td>
    </tr>

</table>
<br/>
@else
<table border="1" width="100%" style="font-family: Arial; border-collapse: collapse; font-size: 10pt;" cellpadding="5">
    <tr>
        <td colspan="2" style="font-weight: bold; text-align: center; border-bottom: none;"><input type="checkbox" name="Cash in Lieu of Leave (CILL)" value="Cash in Lieu of Leave (CILL)" @if ($leave->type_of_leave =='Cash in Lieu of Leave (CILL)') checked="checked" @endif> CASH IN LIEU OF LEAVE (CILL)</td>
    </tr>

    <tr>
        <td colspan="2" style="border-top: none;">NUMBER OF DAYS SURRENDERED &nbsp;&nbsp;&nbsp;&nbsp;N/A</td>
    </tr>

</table>
<br/>
@endif

<table border="1" width="100%" style="font-family: Arial; border-collapse: collapse; font-size: 10pt;" cellpadding="5">

    <tr>
        <td style="width: 60%;">SIGNATURE</td>
        <td style="width: 40%; text-align: center;">@if ($leave->status == 1)
                @php $badgeClass = 'success'; echo 'Approved'; @endphp
            @elseif ($leave->status == 2)
                @php $badgeClass = 'danger'; echo 'Rejected';@endphp
            @elseif ($leave->status == 0)
                @php $badgeClass = 'warning'; echo 'Pending';@endphp
            @endif</td>
    </tr>

    <tr>
        <td style="text-align: center; border-right: none;">Applicant</td>
        <td style="border-left: none;">Department Manager</td>
    </tr>

</table>
<br/>
<p style="font-weight: bold; text-align: center; font-size: 10pt;">ADMINISTRATION USE ONLY</p>
<br/>

<table border="1" width="100%" style="font-family: Arial; border-collapse: collapse; font-size: 10pt;">
    <tr>
        <td style="width: 24%; border-right: none;"></td>
        <td style="width: 19%; border-left: none;">ANNUAL LEAVE</td>
        <td style="width: 19%;">SICK LEAVE</td>
        <td style="width: 19%;">MATERNITY LEAVE</td>
        <td style="width: 19%;">STUDY LEAVE</td>
    </tr>

    <tr>
        <td>NUMBER OF DAYS DUE</td>
        <td style="text-align: center;">
            @if($leave->type_of_leave =='Annual')
                {{$userInfo->leave_days}} 
            @else
                {{$userInfo->leave_days}} 
            @endif
        </td>
        <td style="text-align: center;">{{$userInfo->sick_days}}</td>
        <td style="text-align: center;">
            @if($userInfo->gender == "Female")
                {{$userInfo->maternity}}
            @else
                N/A
            @endif
        </td>
        <td style="text-align: center;">
            {{$userInfo->study_leave_days}}
        </td>
    </tr>



    @foreach($sickleaves as $leaved) @foreach($leaves as $leave)
    <tr>
        <td>NUMBER OF DAYS TAKEN</td>
        <td style="text-align: center;">{{$leave->totalDaysTaken}}</td>
        <td style="text-align: center;">{{$leaved->totalDaysTaken}}</td>
        <td style="text-align: center;"></td>
        <td style="text-align: center;"></td>
    </tr> 
    @endforeach 
    @endforeach 
    <tr>
        <td>NUMBER OF DAYS CASHED</td>
        <td style="text-align: center;"></td>
        <td style="text-align: center;">N/A</td>
        <td style="text-align: center;">N/A</td>
        <td style="text-align: center;">N/A</td>
    </tr>

    <tr>
        <td>VALUE</td>
        <td style="text-align: center;"></td>
        <td style="text-align: center;">N/A</td>
        <td style="text-align: center;">N/A</td>
        <td style="text-align: center;">N/A</td>
    </tr>

    <tr>
        <td>NUMBER OF DAYS LEFT</td>
        <td style="text-align: center;"> </td>
        <td style="text-align: center;"></td>
        <td style="text-align: center;"></td>
        <td style="text-align: center;"></td>
    </tr>

    <tr>
        <td>ENTERED DATE</td>
        <td style="border-right: none;"></td>
        <td colspan="2" style="border-left: none;">SIGNATURE</td>
        <td style="text-align: center;">N/A</td>
    </tr>
  
</table>

</body>
</html>

