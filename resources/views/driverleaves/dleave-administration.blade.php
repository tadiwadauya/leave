<?php
/**
 * Created by PhpStorm for wls
 * User: Vincent Guyo
 * Date: 7/17/2020
 * Time: 10:06 AM
 */
?>
@extends('layouts.app')

@section('template_title')
    Driver Leave Administration
@endsection

@section('template_linked_css')
    <link rel="stylesheet" type="text/css" href="{{asset('css/dataTables.bootstrap4.min.css')}}">
    <style type="text/css" media="screen">
        .leave-table {
            border: 0;
        }
        .leave-table tr td:first-child {
            padding-left: 15px;
        }
        .leave-table tr td:last-child {
            padding-right: 15px;
        }
        .leave-table.table-responsive,
        .leave-table.table-responsive table {
            margin-bottom: 0;
        }
    </style>
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">

                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                 Driver Leave Administration
                            </span>

                            <div class="btn-group pull-right btn-group-xs">

                            </div>
                        </div>
                    </div>

                    <div class="card-body">

                        <div class="table-responsive leave-table">
                            <table class="table table-striped table-sm data-table">

                                <thead class="thead">
                                <tr>
                                    <th>Pay Number</th>
                                    <th>Full Name </th>
                                    <th>Leave Days Due</th>
                                    <th>Total Days Taken</th>
                                    <th>Total Days Left</th>
                                </tr>
                                </thead>
                                <tbody id="users_table">
                                @foreach($leaves as $leave)
                                    <tr>
                                        <td>{{$leave->paynumber}}</td>
                                        <td>{{$leave->full_name}} </td>
                                        <td>{{$leave->leave_days}}</td>
                                        <td>{{$leave->totalDaysTaken}}</td>
                                        <td>{{$leave->leave_days - $leave->totalDaysTaken}}</td>
                                    </tr>
                                @endforeach
                                </tbody>

                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @include('modals.modal-delete')

@endsection

@section('footer_scripts')
    @include('scripts.datatables')
    @include('scripts.delete-modal-script')
    @include('scripts.save-modal-script')
    @if(config('usersmanagement.tooltipsEnabled'))
        @include('scripts.tooltips')
    @endif

@endsection



