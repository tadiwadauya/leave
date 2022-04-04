<?php
/**
 * Created by PhpStorm.
 * User: Vincent Guyo
 * Date: 9/22/2019
 * Time: 17:41
 */
?>

@extends('layouts.app')

@section('template_title')
    Request Leave
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

                    <div class="col-lg-3">
                        @include('leaves.leave-sidebar')
                    </div>

                <div class="col-lg-9">
                    <div class="card">

                        <div class="card-body">

                            <form method="post" action="{{ route('leaves.store') }}">
                                @csrf
                                <fieldset>
                                    <legend>Requesting For My Leave</legend>
                                    <div class="form-group col-lg-12">
                                        <div class="form-group col-lg-6">
                                                <input type="hidden" class="form-control" id="paynumber" name="paynumber" value="{{\Illuminate\Support\Facades\Auth::user()->paynumber}}" readonly/>
                                        </div>

                                        <div class="form-group col-lg-6">
                                            <label for="type_of_leave">Type of Leave :</label>
                                            <select id="type_of_leave" class="form-control" name="type_of_leave">
                                                <option value="">Select Leave Type</option>
                                                @foreach($leave_type as $e)
                                                    <option value="{{$e->leave_type}}" data-price=""
                                                            data-tag="">{{$e->leave_type}}</option>
                                                @endforeach
                                            </select>
                                        </div>

                                    </div>
                                    <div class="form-group has-feedback row {{ $errors->has('sample') ? ' has-error ' : '' }}">
                                        <div class="form-group col-lg-6">
                                            <label for="type_of_leave">Sick note</label>
                                            <div class="input-group"> 
                                                <input type="file" name="file"  >
                                                <div class="input-group-append">
                                                    <label class="input-group-text" for="sample">
                                                        <i class="fa fa-fw fa-plus-square" aria-hidden="true"></i>
                                                    </label>
                                                </div>
                                            </div>
                                           
                                        </div>
                                    </div>

                                    <div class="form-group has-feedback row {{ $errors->has('sample') ? ' has-error ' : '' }}">
                                        <div class="form-group col-lg-6">
                                            <label for="type_of_leave">Confirmation of exams or timetable</label>
                                            <div class="input-group"> 
                                                <input type="file" name="file"  >
                                                <div class="input-group-append">
                                                    <label class="input-group-text" for="sample">
                                                        <i class="fa fa-fw fa-plus-square" aria-hidden="true"></i>
                                                    </label>
                                                </div>
                                            </div>
                                           
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <input type="hidden" class="form-control" id="applier_name" name="applier_name" value="{{AUth::user()->first_name}} {{AUth::user()->last_name}}"/>
                                    </div>

                                    <div class="form-group">
                                        <label for="department">Department :</label>
                                        <input type="text" class="form-control" id="department" name="department" value="{{\Illuminate\Support\Facades\Auth::user()->department}}"
                                               readonly/>
                                    </div>

                                    <div class="form-group">
                                        <label for="address">Address :</label>
                                        <input type="text" class="form-control" id="address" name="address" value="{{\Illuminate\Support\Facades\Auth::user()->address}}" readonly/>
                                    </div>

                                    <div class="form-group">
                                        <label for="mobile">Mobile :</label>
                                        <input type="text" class="form-control" id="mobile" name="mobile" value="{{\Illuminate\Support\Facades\Auth::user()->mobile}}" readonly/>
                                    </div>

                                    <div class="form-group col-lg-12">
                                        <div class="form-group col-lg-6 ">
                                            <label for="mdate">Date From :</label>
                                            <input type="text" name="date_from" class="form-control datepicker"
                                                   id="datepicker" placeholder="e.g. 31-01-2019" required>
                                        </div>

                                    </div>

                                    <div class="form-group col-lg-12">

                                        <div class="form-group col-lg-6">
                                            <label for="date-only">Date To :</label>
                                            <input type="text" name="date_to" class="form-control datepicker"
                                                   id="datepicker2" placeholder="e.g. 31-01-2019" required>
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

                                    {{--<div class="form-group">
                                        <label for="days_taken">Days Taken (Please EXCLUDE weekends and public holidays for ANNUAL days.) :</label>
                                        <input type="text" class="form-control" id="days_taken" name="days_taken"  />
                                    </div>--}}

                                    <div class="form-group hidden">
                                        <input type="hidden" class="form-control" id="applied_by" name="applied_by"
                                               value="{{AUth::user()->paynumber}}"/>
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
                minDate: new Date(),
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
    </script>

@endsection

