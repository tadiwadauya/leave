<?php
/**
 * Created by PhpStorm.
 * User: Vincent Guyo
 * Date: 9/25/2019
 * Time: 13:33
 */
?>

@extends('layouts.app')

@section('template_title')
    Showing Deleted Leave Requests
@endsection

@section('template_linked_css')
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css">
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
            margin-bottom: .15em;
        }
    </style>
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header bg-danger text-white">
                        <div style="display: flex; justify-content: space-between; align-items: center;">
                            <span id="card_title">
                                Deleted Leave Requests
                            </span>
                            <div class="float-right">
                                <a href="{{ route('leaves') }}" class="btn btn-light btn-sm float-right" data-toggle="tooltip" data-placement="left" title="Back to Leave requests">
                                    <i class="fa fa-fw fa-mail-reply" aria-hidden="true"></i>
                                    Back to Leave requests
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="card-body">

                        @if(count($leaves) === 0)

                            <tr>
                                <p class="text-center margin-half">
                                    No deleted requests found.
                                </p>
                            </tr>

                        @else

                            <div class="table-responsive users-table">
                                <table class="table table-striped table-sm data-table">
                                    <caption id="user_count">
                                        {{ trans_choice('usersmanagement.users-table.leave_caption', 1, ['userscount' => $leaves->count()]) }}
                                    </caption>
                                    <thead>
                                    <tr>
                                        <th>Pay Number</th>
                                        <th class="hidden-xs">Name </th>
                                        <th>Type of Leave</th>
                                        <th>Days Taken</th>
                                        <th>Date From</th>
                                        <th>Date To</th>
                                        <th>Deleted On</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    @foreach($leaves as $leave)
                                        <tr>
                                        @php
                                            $users = \App\Models\User::all()->where('paynumber', $leave->paynumber );
                                        @endphp
                                        <tr>
                                            <td>{{$leave->paynumber}}</td>
                                            @foreach($users as $user)
                                                <td>{{$user->first_name}} {{$user->last_name}}</td>
                                            @endforeach
                                            <td>{{$leave->type_of_leave}}</td>
                                            <td>{{$leave->days_taken}}</td>
                                            <td>{{$leave->date_from}}</td>
                                            <td>{{$leave->date_to}}</td>
                                            <td class="hidden-xs">{{$leave->deleted_at}}</td>
                                            <td>
                                                @if ($leave->status == '1')
                                                    @php $badgeClass = 'approved'; echo 'Approved'; @endphp
                                                @else
                                                    @php $badgeClass = 'warning'; echo 'Pending';@endphp
                                                @endif
                                                <span class="badge badge-{{$badgeClass}}"></span>
                                            </td>

                                            <td>
                                                {!! Form::model($leave, array('action' => array('SoftDeleteLeave@update', $leave->id), 'method' => 'PUT', 'data-toggle' => 'tooltip')) !!}
                                                {!! Form::button('<i class="fa fa-refresh" aria-hidden="true"></i>', array('class' => 'btn btn-success btn-block btn-sm', 'type' => 'submit', 'data-toggle' => 'tooltip', 'title' => 'Restore request')) !!}
                                                {!! Form::close() !!}
                                            </td>
                                            <td>
                                                <a class="btn btn-sm btn-info btn-block" href="{{ URL::to('leaves/deleted/' . $leave->id) }}" data-toggle="tooltip" title="Show Request">
                                                    <i class="fa fa-eye fa-fw" aria-hidden="true"></i>
                                                </a>
                                            </td>
                                            <td>
                                                {!! Form::model($leave, array('action' => array('SoftDeleteLeave@destroy', $leave->id), 'method' => 'DELETE', 'class' => 'inline', 'data-toggle' => 'tooltip', 'title' => 'Destroy Leave request.')) !!}
                                                {!! Form::hidden('_method', 'DELETE') !!}
                                                {!! Form::button('<i class="fa fa-user-times" aria-hidden="true"></i>', array('class' => 'btn btn-danger btn-sm inline','type' => 'button', 'style' =>'width: 100%;' ,'data-toggle' => 'modal', 'data-target' => '#confirmDelete', 'data-title' => 'Delete Leave Request', 'data-message' => 'Are you sure you want to delete this request ?')) !!}
                                                {!! Form::close() !!}
                                            </td>
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

    @if (count($leaves) > 10)
        @include('scripts.datatables')
    @endif
    @include('scripts.delete-modal-script')
    @include('scripts.save-modal-script')
    @include('scripts.tooltips')

@endsection

