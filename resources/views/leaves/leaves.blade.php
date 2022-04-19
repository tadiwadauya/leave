<?php
/**
 * Created by PhpStorm.
 * User: Tadiwa Dauya
 * Date: 9/04/2022
 * Time: 13:28
 */
?>

@extends('layouts.app')

@section('template_title')
    Showing Leave Requests
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
                                Leave Requests
                            </span>

                            <div class="btn-group pull-right btn-group-xs">
                                <div class="btn pull-left btn-group-xs">
                                    <a class="btn btn-primary btn-success btn-block" href="{{url('/leaves/create')}}" >
                                        Apply for Leave
                                    </a>
                                </div>
                                @role('admin')
                                <div class="btn pull-left btn-group-xs">
                                    <a class="btn btn-primary btn-danger btn-block" href="{{url('/leaves/deleted')}}">
                                        <i class="fa fa-fw fa-group" aria-hidden="true"></i>
                                        Deleted Requests
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
                                    <th class="hidden-xs">Name </th>
                                    <th>Type of Leave</th>
                                     <th>Department</th>
                                    <th>Days Taken</th>
                                    <th>Date From</th>
                                    <th>Date To</th>
                                    <th>Applied On</th>
                                    <th>Status</th>
                                    <th class="no-search no-sort">{!! trans('usersmanagement.users-table.actions') !!}</th>
                                    @role('admin')<th class="no-search no-sort"></th>@endrole
                                </tr>
                                </thead>
                                <tbody id="users_table">
                                @foreach($leaves as $leave)
                                    <tr>
                                        <td>{{$leave->paynumber}}</td>
                                        <td>{{$leave->first_name}} {{$leave->last_name}}</td>
                                        <td>{{$leave->type_of_leave}}</td>
                                        <td>{{$leave->department}}</td>
                                        <td ><a href="{{url('leaves/'.$leave->id)}}"> {{$leave->days_taken}}</a></td>
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
                                        {{-- <td>
                                            
                                               @if ($leave->type_of_leave == 'Sick')    <a class="btn btn-sm btn-success btn-block" href="{{ URL::to('leavesick/' . $leave->id) }}">
                                                <i class="fa fa-eye fa-fw" aria-hidden="true"></i> <span class="hidden-xs hidden-sm">Show</span><span class="hidden-xs hidden-sm hidden-md"> Sicknote</span>
                                            </a>
                                               @elseif ($leave->type_of_leave == 'Study') N/A
                                                @endif 
                                       
                                        
                                        </td> --}}
                                        @role('admin')
                                        <td>

                                            {!! Form::open(array('url' => 'leaves/' . $leave->id, 'class' => '')) !!}
                                            {!! Form::hidden('_method', 'DELETE') !!}
                                            {!! Form::button('<i class="fa fa-trash-o fa-fw" aria-hidden="true"></i>  <span class="hidden-xs hidden-sm">Delete</span><span class="hidden-xs hidden-sm hidden-md"> Request</span>', array('class' => 'btn btn-danger btn-sm','type' => 'button', 'style' =>'width: 100%;' ,'data-toggle' => 'modal', 'data-target' => '#confirmDelete', 'data-title' => 'Delete Leave Request', 'data-message' => 'Are you sure you want to delete this request ?')) !!}
                                            {!! Form::close() !!}
                                        </td>
                                        @endrole
                                        <td>
                                            <a class="btn btn-sm btn-success btn-block" href="{{ URL::to('leaves/' . $leave->id) }}">
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
