@component('mail::message')
{{$details['greeting']}}

{{$details['body']}}

@component('mail::button', ['url' => $details['url']])
Approve
@endcomponent


Thanks,<br>
{{ config('app.name') }}
@endcomponent