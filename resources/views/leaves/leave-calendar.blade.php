<?php
/**
 * Created by PhpStorm for wheleave
 * User: Vincent Guyo
 * Date: 10/11/2019
 * Time: 10:34
 */

?>

@extends('layouts.app')

@section('template_title')
    {{AUth::user()->department}} Leave Calendar
@endsection

@section('template_fastload_css')

@endsection

@section('template_linked_css')
    <link rel="stylesheet" href="{{ asset('css/fullcalendar.min.css')}}"/>

    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
    <link href="{{ asset('css/select2.min.css')}}" rel="stylesheet" />
@endsection

@section('content')

    <div class="container">
        <div class="panel panel-primary">
            <div class="panel-heading">
                {{AUth::user()->department}} Leave Calendar
            </div>

            <div class="panel-body" >
                 {!! $calendar_details->calendar() !!}
            </div>
        </div>
    </div>

@endsection

@section('footer_scripts')

    <script src="{{ asset('js/custom_jquery.min.js')}}"></script>
    <script src="{{ asset('js/moment.min.js')}}"></script>
    <script src="{{ asset('js/fullcalendar.min.js')}}"></script>
    {!! $calendar_details->script() !!}
    <!-- Scripts -->
    <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>

    <script src="{{ asset('js/custom_bootstrap.min.js')}}"></script>
    <script src="{{ asset('js/select2.min.js')}}"></script>


    <script>
        jQuery(document).ready(function($) {
            $('.datepicker').datepicker({
                dateFormat: "yy-mm-dd"
            });
        });

        jQuery(document).ready(function($) {
            $('.datepicker2').datepicker({
                dateFormat: "yy-mm-dd"
            });
        });
    </script>

    <script type="text/javascript">
        $("#paynumber").select2({
            placeholder: 'Please select a user',
            allowClear:true,
        }).on('change',function(){
            var price = $(this).children('option:selected').data('price');
            var price2 = $(this).children('option:selected').data('tager');
            var price1 = $(this).children('option:selected').data('tag');
            $('#department').val(price);
            $('#mobile').val(price1);
            $('#address').val(price2);
        });

        $("#type_of_leave").select2({
            placeholder: 'Please select a Leave Type',
            allowClear:true,
        });
    </script>
@endsection