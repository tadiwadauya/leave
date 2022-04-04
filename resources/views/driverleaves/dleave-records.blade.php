<?php
/**
 * Created by PhpStorm for wls
 * User: Vincent Guyo
 * Date: 7/17/2020
 * Time: 9:34 AM
 */
?>

@extends('layouts.app')

@section('template_title')
    Showing Driver Leave Records
@endsection

@section('template_linked_css')
    <link rel="stylesheet" type="text/css" href="{{asset('css/dataTables.bootstrap4.min.css')}}">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css">

    <style type="text/css" media="screen">
        .users-table {
            border: 0;
        }
        .users-table tr td:first-child {
            padding-left: 15px;
        }
        .users-table tr td:last-child {
            padding-right: 15px;
        }
        .users-table.table-responsive,
        .users-table.table-responsive table {
            margin-bottom: 0;
        }
    </style>

    <link rel="stylesheet" href="{{ asset('css/jquery-ui.css')}}"/>

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
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <script src="{{ asset('js/custom_jquery.min.js') }}"></script>
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                Approved Driver Leave Records
                            </span>

                            <div class="btn-group pull-right btn-group-xs">
                                @role('admin')
                                <div class="btn pull-left btn-group-xs">
                                    <a class="btn btn-primary btn-danger btn-block" href="{{url('/driverleaves/deleted')}}">
                                        <i class="fa fa-fw fa-group" aria-hidden="true"></i>
                                        Deleted Driver Records
                                    </a>
                                </div>
                                @endrole

                            </div>
                        </div>
                    </div>

                    <div class="card-body">

                        {!! Form::open(array('route' => 'records.driverleave', 'method' => 'POST', 'role' => 'form', 'class' => 'needs-validation')) !!}

                        {!! csrf_field() !!}
                        <div class="row">

                            <div class="col-lg-10">
                                <div class="form-group mb-4">
                                    <div class="form-group col-lg-5 float-left">
                                        <label for="mdate">Date From :</label>
                                        <input type="text" name="date_from" class="form-control datepicker"
                                               id="datepicker" placeholder="e.g. 2019-01-31" autocomplete="off" required>
                                    </div>

                                    <div class="form-group col-lg-5 float-right">
                                        <label for="date-only">Date To :</label>
                                        <input type="text" name="date_to" class="form-control datepicker"
                                               id="datepicker2" placeholder="e.g. 2019-01-31" autocomplete="off" required>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-2 float-right">
                                <br>
                                {!! Form::button('Get Report', array('class' => 'btn btn-success margin-bottom-1 mb-1 float-right','type' => 'submit' )) !!}
                            </div>
                        </div>

                        {!! Form::close() !!}

                        @if(isset($leaves))
                            <strong>Showing Driver Leave Records from {{$from}} to {{$to}}</strong>
                            <div class="table-responsive users-table">
                                <table id="data-table" class="table table-striped table-sm data-table">
                                    <thead class="thead">
                                    <tr>
                                        <th>Pay Number</th>
                                        <th class="hidden-xs">Name </th>
                                        <th>Type of Leave</th>
                                        <th>Days Taken</th>
                                        <th>Date From</th>
                                        <th>Date To</th>
                                    </tr>
                                    </thead>
                                    <tbody id="users_table">
                                    @foreach($leaves as $leave)
                                        <tr>
                                            <td>{{$leave->paynumber}}</td>
                                            <td>{{$leave->full_name}}</td>
                                            <td>{{$leave->type_of_leave}}</td>
                                            <td ><a href="{{url('leaves/'.$leave->id)}}"> {{$leave->days_taken}}</a></td>
                                            <td>{{$leave->date_from}}</td>
                                            <td>{{$leave->date_to}}</td>
                                        </tr>
                                    @endforeach
                                    </tbody>

                                </table>

                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>

    @include('modals.modal-delete')

@endsection

@section('footer_scripts')
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            $('.data-table').dataTable({
                "paging": true,
                "lengthChange": true,
                "searching": true,
                "ordering": true,
                "info": true,
                "autoWidth": true,
                "dom": 'lBfrtip',
                "buttons": [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ],
                "sPaginationType": "full_numbers",
                'aoColumnDefs': [{
                    'bSortable': false,
                    'searchable': false,
                    'aTargets': ['no-search'],
                    'bTargets': ['no-sort']
                }]
            });
        });
    </script>

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

    @include('scripts.delete-modal-script')
    @include('scripts.save-modal-script')
    @if(config('usersmanagement.tooltipsEnabled'))
        @include('scripts.tooltips')
    @endif

    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.flash.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.html5.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.print.min.js"></script>
@endsection

