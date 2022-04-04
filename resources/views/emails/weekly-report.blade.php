<!DOCTYPE html>
<html>
<head>
    <title>Weekly Leave Report</title>
    <style>
        #customers {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #customers td, #customers th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customers tr:nth-child(even){background-color: #f2f2f2;}

        #customers tr:hover {background-color: #ddd;}

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #04AA6D;
            color: white;
        }
        .footer{
            text-align: center;
            background: #e3e3e3;
            paddding:20px;
        }
    </style>

</head>
<body>
    <div class="container">
        <table id="customers">

            <tr>
                <th>Paynumber</th>
                <th>Name</th>
                <th>Type of Leave</th>
                <th>Days Taken</th>
                <th>Date From</th>
                <th>Date To</th>
                <th>Applied On</th>
                <th>Leave Status</th>
                <th>Approved By</th>
            </tr>
                @foreach($leaves as $leave)
                    <tr>
                        <td>{{ $leave->paynumber }}</td>
                        <td>{{ $leave->applier_name }}</td>
                        <td>{{ $leave->type_of_leave }}</td>
                        <td>{{ $leave->days_taken }}</td>
                        <td>{{ $leave->date_from }}</td>
                        <td>{{ $leave->date_to }}</td>
                        <td>{{ $leave->created_at }}</td>
                        <td>
                            @if($leave->status == 1)
                                Approved
                            @else
                                Not Approved
                            @endif
                        </td>
                        <td>{{ $leave->approver_name }}</td>
                    </tr>
                @endforeach
        </table>
    </div>

    <div class="footer">
        <h5>Regards,</h5>
        <p>Whelson Leave System</p>
    </div>


</body>
</html>