<?php
/**
 * Created by PhpStorm for wls
 * User: Vincent Guyo
 * Date: 7/16/2020
 * Time: 11:19 AM
 */
?>
@extends('layouts.app')

@section('template_title')
    All Drivers
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
                                Drivers
                            </span>

                            <div class="btn-group pull-right btn-group-xs">
                                <div class="btn pull-left btn-group-xs">
                                    <a class="btn btn-primary btn-success btn-block" href="{{url('/drivers/create')}}" >
                                        Add Driver
                                    </a>
                                </div>
                                @role('admin')
                                <div class="btn pull-left btn-group-xs">
                                    <a class="btn btn-primary btn-danger btn-block" href="{{url('/drivers/deleted')}}">
                                        <i class="fa fa-fw fa-group" aria-hidden="true"></i>
                                        Deleted Drivers
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
                                    <th>Address</th>
                                    <th>Cell Number</th>
                                    <th>Leave Days</th>
                                    <th class="no-search no-sort">Actions</th>
                                    @role('admin')<th class="no-search no-sort"></th>@endrole
                                </tr>
                                </thead>
                                <tbody id="users_table">
                                @foreach($drivers as $driver)
                                    <tr>
                                        <td>{{$driver->paynumber}}</td>
                                        <td>{{$driver->full_name}}</td>
                                        <td>{{$driver->address}}</td>
                                        <td>{{$driver->cell_no}}</td>
                                        <td>{{$driver->leave_days}}</td>
                                        <td>
                                            <a class="btn btn-sm btn-info btn-block" href="{{ URL::to('drivers/' . $driver->id . '/edit') }}" >
                                                <i class="fa fa-pencil fa-fw" aria-hidden="true"></i> <span class="hidden-xs hidden-sm">Modify</span><span class="hidden-xs hidden-sm hidden-md"> Driver</span>
                                            </a>
                                        </td>
                                        @role('admin')
                                        <td>

                                            {!! Form::open(array('url' => 'drivers/' . $driver->id, 'class' => '')) !!}
                                            {!! Form::hidden('_method', 'DELETE') !!}
                                            {!! Form::button('<i class="fa fa-trash-o fa-fw" aria-hidden="true"></i>  <span class="hidden-xs hidden-sm">Delete</span><span class="hidden-xs hidden-sm hidden-md"> Driver</span>', array('class' => 'btn btn-danger btn-sm','type' => 'button', 'style' =>'width: 100%;' ,'data-toggle' => 'modal', 'data-target' => '#confirmDelete', 'data-title' => 'Delete Driver', 'data-message' => 'Are you sure you want to delete this driver ?')) !!}
                                            {!! Form::close() !!}
                                        </td>
                                        @endrole
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

