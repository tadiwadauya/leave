<?php
/**
 * Created by PhpStorm.
 * User: Vincent Guyo
 * Date: 9/22/2019
 * Time: 20:25
 */
?>

@extends('layouts.app')

@section('template_title')
    Showing Departments
@endsection

@section('template_linked_css')
    @if(config('usersmanagement.enabledDatatablesJs'))
        <link rel="stylesheet" type="text/css" href="{{asset('css/dataTables.bootstrap4.min.css')}}">
    @endif
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
                                Departments
                            </span>

                        </div>
                    </div>

                    <div class="card-body">

                        <div class="btn pull-left btn-group-xs">
                            <a class="btn btn-primary btn-success btn-block" href="{{url('/departments/create')}}" data-toggle="tooltip" title="Create Department">
                                Create Department
                            </a>
                        </div>

                        <div class="table-responsive users-table">
                            <table class="table table-striped table-sm data-table">
                                <thead class="thead">
                                <tr>
                                    <th>Department</th>
                                    <th class="hidden-xs">Approver </th>
                                    <th>Approver Alternative</th>
                                    <th>Added</th>
                                    <th>Actions</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody id="users_table">
                                @foreach($departments as $department)
                                    @php
                                        $users = \App\Models\User::all()->where('paynumber', $department->manager );
                                        $users2 = \App\Models\User::all()->where('paynumber', $department->asst_manager );
                                    @endphp
                                    <tr>
                                        <td>{{$department->department}}</td>
                                        @foreach($users as $user)
                                        <td>{{$user->first_name}} {{$user->last_name}} </td>
                                        @endforeach
                                        @if($department->asst_manager == null)
                                            <td>Only 1 Approver </td>
                                        @else
                                            @foreach($users2 as $user2)
                                            <td>{{$user2->first_name}} {{$user2->last_name}} </td>
                                            @endforeach
                                        @endif
                                        <td>{{$department->created_at}}</td>
                                        <td>
                                            {!! Form::open(array('url' => 'departments/' . $department->id, 'class' => '', 'data-toggle' => 'tooltip', 'title' => 'Delete')) !!}
                                            {!! Form::hidden('_method', 'DELETE') !!}
                                            {!! Form::button('<i class="fa fa-trash-o fa-fw" aria-hidden="true"></i>  <span class="hidden-xs hidden-sm">Delete</span><span class="hidden-xs hidden-sm hidden-md"> Department</span>', array('class' => 'btn btn-danger btn-sm','type' => 'button', 'style' =>'width: 100%;' ,'data-toggle' => 'modal', 'data-target' => '#confirmDelete', 'data-title' => 'Delete Department', 'data-message' => 'Are you sure you want to delete this department ?')) !!}
                                            {!! Form::close() !!}
                                        </td>
                                        <td>
                                            <a class="btn btn-sm btn-success btn-block" href="{{ URL::to('departments/' . $department->id) }}" data-toggle="tooltip" title="Show">
                                                <i class="fa fa-eye fa-fw" aria-hidden="true"></i> <span class="hidden-xs hidden-sm">Show</span><span class="hidden-xs hidden-sm hidden-md"> Department</span>
                                            </a>
                                        </td>
                                        <td>
                                            <a class="btn btn-sm btn-info btn-block" href="{{ URL::to('departments/' . $department->id . '/edit') }}" data-toggle="tooltip" title="Edit">
                                                <i class="fa fa-pencil fa-fw" aria-hidden="true"></i> <span class="hidden-xs hidden-sm">Modify</span><span class="hidden-xs hidden-sm hidden-md"> Department</span>
                                            </a>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                                <tbody id="search_results"></tbody>
                                @if(config('usersmanagement.enableSearchUsers'))
                                    <tbody id="search_results"></tbody>
                                @endif

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
