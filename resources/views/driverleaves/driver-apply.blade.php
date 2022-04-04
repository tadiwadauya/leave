<?php
/**
 * Created by PhpStorm for wls
 * User: Vincent Guyo
 * Date: 7/17/2020
 * Time: 3:12 AM
 */
?>
@extends('layouts.app')

@section('template_title')
    Request Leave For Driver
@endsection

@section('template_fastload_css')

@endsection

@section('template_linked_css')

    <link rel="stylesheet" href="{{ asset('css/jquery-ui.css')}}"/>
    <link href="{{ asset('css/select2.min.css')}}" rel="stylesheet"/>
    <style>

        .ui-datepicker-prev, .ui-datepicker-next {
            width: 4em !important;
        }

        .ui-datepicker-title > span {
            font-size: .85em !important;
        }

        .ui-datepicker-prev > span, .ui-datepicker-next > span {
            text-indent: 0;
            margin: 0 !important;
            text-align: center;
            height: inherit !important;
            width: inherit !important;
            background: 0 !important;
            left: 0 !important;
            transform: translateY(-25%);
            font-size: .65em;
            font-weight: normal;
        }
    </style>
@endsection

@section('content')

    <body>

    <div class="flex-center position-ref full-height">

        <script src="{{ asset('js/custom_jquery.min.js') }}"></script>

        <div class="container">
            <div class="row">

                <div class="col-lg-4">
                    @include('driverleaves.driverleave-sidebar')
                </div>

                <div class="col-lg-8">
                    <div class="card">

                        <div class="card-body">

                            <form method="post" action="{{ route('driverleaves.store') }}">
                                @csrf
                                <fieldset>
                                    <legend>Driver Leave Application</legend>
                                    <div class="form-group col-lg-12">
                                        <div class="form-group col-lg-6 float-left">
                                            <label for="paynumber">Driver Applying :</label>
                                            <select id="paynumber" class="form-control" name="paynumber">
                                                <option value="">Select driver</option>
                                                @foreach($drivers as $driver)
                                                    <option value="{{$driver->paynumber}}" data-price="{{$driver->address}}" data-tag="{{$driver->cell_no}}">{{$driver->paynumber}} - {{$driver->full_name}}</option>
                                                @endforeach
                                            </select>
                                        </div>

                                        <div class="form-group col-lg-6 float-right">
                                            <label for="type_of_leave">Type of Leave :</label>
                                            <select id="type_of_leave" class="form-control" name="type_of_leave">
                                                <option value="">Select Leave Type</option>
                                                @foreach($leave_type as $e)
                                                    <option value="{{$e->leave_type}}">{{$e->leave_type}}</option>
                                                @endforeach
                                            </select>
                                        </div>

                                    </div>

                                    <div class="form-group">
                                        <input type="hidden" class="form-control" id="applied_by" name="applied_by" value="{{AUth::user()->first_name}} {{AUth::user()->last_name}}"/>
                                    </div>

                                    <div class="form-group">
                                        <label for="address">Address :</label>
                                        <input type="text" class="form-control" id="address" name="address"  readonly/>
                                    </div>

                                    <div class="form-group">
                                        <label for="mobile">Mobile :</label>
                                        <input type="text" class="form-control" id="mobile" name="mobile"  readonly/>
                                    </div>

                                    <div class="form-group col-lg-12">
                                        <div class="form-group col-lg-6 ">
                                            <label for="mdate">Date From :</label>
                                            <input type="text" name="date_from" class="form-control datepicker" id="datepicker" placeholder="e.g. 31-01-2019" required>
                                        </div>

                                    </div>

                                    <div class="form-group col-lg-12">

                                        <div class="form-group col-lg-6">
                                            <label for="date-only">Date To :</label>
                                            <input type="text" name="date_to" class="form-control datepicker" id="datepicker2" placeholder="e.g. 31-01-2019" required>
                                        </div>
                                    </div>

                                    <div class="form-group col-lg-12">
                                        <div class="form-group col-lg-12 ">
                                            <label for="half_day">Half Day? :</label><em> (When requesting for a half
                                                day, please make sure you select the same date for "Date From:" and
                                                "Date To:" and select "Yes" below)</em><br/>
                                            <input type="radio" name="half_day" value="0" checked required>No
                                            <input type="radio" name="half_day" value="1" required>Yes
                                        </div>
                                    </div>

                                    <!-- Submit Button -->
                                    <div class="form-group">
                                        <div class="col-lg-10 col-lg-offset-2">
                                            <button type="submit" class="btn btn-primary">Request Leave</button>
                                        </div>
                                    </div>

                                </fieldset>

                            </form>
                        </div>
                    </div>
                </div>



            </div>
        </div>
    </div>

    </body>

@endsection
@section('footer_scripts')

    <script src="{{ asset('js/custom_bootstrap.min.js')}}"></script>
    <script src="{{ asset('js/select2.min.js')}}"></script>
    {{--<script src="{{ asset('js/jquery-ui.js')}}"></script>--}}
    <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>

    <script>
        jQuery(document).ready(function ($) {
            $('.datepicker').datepicker({
                navigationAsDateFormat: true,
                dateFormat: "yy-mm-dd",
                nextText: 'MM',
                prevText: 'MM'
            });
        });

        jQuery(document).ready(function ($) {
            $('.datepicker2').datepicker({
                navigationAsDateFormat: true,
                dateFormat: "yy-mm-dd"
            });
        });
    </script>


    <script type="text/javascript">

        $("#type_of_leave").select2({
            placeholder: 'Please select a Leave Type',
            allowClear: true,
        });

        $("#paynumber").select2({
            placeholder: 'Please select a driver',
            allowClear: true,
        }).on('change',function(){
            var price = $(this).children('option:selected').data('price');
            var price1 = $(this).children('option:selected').data('tag');
            $('#address').val(price);
            $('#mobile').val(price1);

            var raised_against = $(this).val();
            var _token = $("input[name='_token']").val();
            if(raised_against){
                $.ajax({
                    type:"get",
                    url:'{{url('/getPrevLeaves/')}}/'+raised_against,
                    _token: _token ,
                    success:function(res)
                    {
                        if(res)
                        {

                            $("#exceptions").empty();
                            $.each(res,function(key, value){
                                var url = '{{ route("driverleaves.show", ":id") }}';
                                url = url.replace(':id', value.id);
                                $("#exceptions").append(
                                    '<a href="'+url+'" target="_blank"><li>'+value.type_of_leave+ ' for '+value.days_taken+' days, from '+value.date_from+' to '+value.date_to+'</li></a>'
                                );
                            });


                        }
                    }

                });
            }
        });
    </script>

@endsection


