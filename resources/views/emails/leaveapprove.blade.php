@component('mail::message')
    {{ $details['greeting'] }}

    {{ $details['body'] }}

    <h4>Leave Summary</h4>
    <table style="border: 0; width: 100%">
        <tr>
            <td style="border: 0;"><strong>Type of Leave</strong></td>
            <td style="border: 0;">{{ $details['body1'] }}</td>
        </tr>
        <tr>
            <td style="border: 0;"><strong>Days Requested:</strong></td>
            <td style="border: 0;">{{ $details['body2'] }}</td>
        </tr>
        <tr>
            <td style="border: 0;"><strong>Date From:</strong></td>
            <td style="border: 0;">{{ $details['body3'] }}</td>
        </tr>
        <tr>
            <td style="border: 0;"><strong>Date To:</strong></td>
            <td style="border: 0;">{{ $details['body4'] }}</td>
        </tr>
    </table>

    {{ $details['body5'] }}

    @component('mail::button', ['url' => $details['approveURL']])
        Approve
    @endcomponent

    {{ $details['body6'] }}

    <table style="width: 100%">
        <tr>
            <td>
                @component('mail::button', ['url' => $details['rejectURL']])
                    Reject
                @endcomponent
            </td>
        </tr>
    </table>

    Thanks,<br>
    {{ config('app.name') }}
@endcomponent
