<?php
/**
 * Created by PhpStorm for wls
 * User: Vincent Guyo
 * Date: 7/17/2020
 * Time: 2:45 AM
 */
?>
@extends('layouts.app')

@section('template_title')
    Driver Leave Requests
@endsection

@section('template_linked_css')
    <link rel="stylesheet" type="text/css" href="{{asset('css/dataTables.bootstrap4.min.css')}}">
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
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">

                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                Driver Leave Requests
                            </span>

                            <div class="btn-group pull-right btn-group-xs">
                                <div class="btn pull-left btn-group-xs">
                                    <a class="btn btn-primary btn-success btn-block" href="{{url('/driverleaves/create')}}" >
                                        Apply for Driver Leave
                                    </a>
                                </div>
                                @role('admin')
                                <div class="btn pull-left btn-group-xs">
                                    <a class="btn btn-primary btn-danger btn-block" href="{{url('/driverleaves/deleted')}}">
                                        <i class="fa fa-fw fa-group" aria-hidden="true"></i>
                                        Deleted Driver Requests
                                    </a>
                                </div>
                                @endrole

                            </div>
                        </div>
                    </div>

                    <div class="card-body">

                        <div class="table-responsive users-table">
                            <table class="table table-striped table-sm data-table">
                                <thead class="thead">
                                <tr>
                                    <th>Pay Number</th>
                                    <th>Name </th>
                                    <th>Type of Leave</th>
                                    <th>Days Taken</th>
                                    <th>Date From</th>
                                    <th>Date To</th>
                                    <th>Applied On</th>
                                    <th>Status</th>
                                    <th>{!! trans('usersmanagement.users-table.actions') !!}</th>
                                    @role('admin')<th class="no-search no-sort"></th>@endrole
                                </tr>
                                </thead>
                                <tbody id="users_table">
                                @foreach($leaves as $leave)
                                    <tr>
                                        <td>{{$leave->paynumber}}</td>
                                        <td>{{$leave->full_name}}</td>
                                        <td>{{$leave->type_of_leave}}</td>
                                        <td ><a href="{{url('driverleaves/'.$leave->id)}}"> {{$leave->days_taken}}</a></td>
                                        <td>{{$leave->date_from}}</td>
                                        <td>{{$leave->date_to}}</td>
                                        <td>{{$leave->created_at}}</td>
                                        <td>
                                            @if ($leave->status == 1)
                                                @php $badgeClass = 'success'; echo 'Approved'; @endphp
                                            @elseif ($leave->status == 2)
                                                @php $badgeClass = 'danger'; echo 'Rejected';@endphp
                                            @elseif ($leave->status == 0)
                                                @php $badgeClass = 'warning'; echo 'Pending';@endphp
                                            @endif
                                            <span class="badge badge-{{$badgeClass}}"></span>
                                        </td>
                                        @role('admin')
                                        <td>

                                            {!! Form::open(array('url' => 'driverleaves/' . $leave->id, 'class' => '')) !!}
                                            {!! Form::hidden('_method', 'DELETE') !!}
                                            {!! Form::button('<i class="fa fa-trash-o fa-fw" aria-hidden="true"></i>  <span class="hidden-xs hidden-sm">Delete</span><span class="hidden-xs hidden-sm hidden-md"> Request</span>', array('class' => 'btn btn-danger btn-sm','type' => 'button', 'style' =>'width: 100%;' ,'data-toggle' => 'modal', 'data-target' => '#confirmDelete', 'data-title' => 'Delete Leave Request', 'data-message' => 'Are you sure you want to delete this request ?')) !!}
                                            {!! Form::close() !!}
                                        </td>
                                        @endrole
                                        <td>
                                            <a class="btn btn-sm btn-success btn-block" href="{{ URL::to('driverleaves/' . $leave->id) }}" >
                                                <i class="fa fa-eye fa-fw" aria-hidden="true"></i> <span class="hidden-xs hidden-sm">Show</span><span class="hidden-xs hidden-sm hidden-md"> Request</span>
                                            </a>
                                        </td>
                                        {{--<td>
                                            <a class="btn btn-sm btn-info btn-block" href="{{ URL::to('leaves/' . $leave->id . '/edit') }}" data-toggle="tooltip" title="Edit">
                                                <i class="fa fa-pencil fa-fw" aria-hidden="true"></i> <span class="hidden-xs hidden-sm">Modify</span><span class="hidden-xs hidden-sm hidden-md"> Request</span>
                                            </a>
                                        </td>--}}
                                    </tr>
                                @endforeach
                                </tbody>
                                <tbody id="search_results"></tbody>

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

