<?php
/**
 * Created by PhpStorm for wls
 * User: Vincent Guyo
 * Date: 7/16/2020
 * Time: 12:38 PM
 */
?>
@extends('layouts.app')

@section('template_title')
    Show Deleted Drivers
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
                                Showing Deleted Drivers
                            </span>
                            <div class="float-right">
                                <a href="{{ route('drivers') }}" class="btn btn-light btn-sm float-right" >
                                    <i class="fa fa-fw fa-mail-reply" aria-hidden="true"></i>
                                    Back to drivers
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="card-body">

                        @if(count($drivers) === 0)

                            <tr>
                                <p class="text-center margin-half">
                                    No drivers have been deleted so far.
                                </p>
                            </tr>

                        @else

                            <div class="table-responsive users-table">
                                <table class="table table-striped table-sm data-table">
                                    <thead>
                                    <tr>
                                        <th>Pay Number</th>
                                        <th>Name </th>
                                        <th>Address</th>
                                        <th>Cell Number</th>
                                        <th>Leave Days</th>
                                        <th>Deleted On</th>
                                        <th class="no-search no-sort">Actions</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    @foreach($drivers as $driver)
                                        <tr>
                                            <td>{{$driver->paynumber}}</td>
                                            <td>{{$driver->full_name}}</td>
                                            <td>{{$driver->address}}</td>
                                            <td>{{$driver->cell_no}}</td>
                                            <td>{{$driver->leave_days}}</td>
                                            <td>{{$driver->deleted_at}}</td>
                                            <td>
                                                {!! Form::model($driver, array('action' => array('SoftDeleteDriver@update', $driver->id), 'method' => 'PUT')) !!}
                                                {!! Form::button('<i class="fa fa-refresh" aria-hidden="true"></i>', array('class' => 'btn btn-success btn-block btn-sm', 'type' => 'submit', 'data-toggle' => 'tooltip', 'title' => 'Restore Driver')) !!}
                                                {!! Form::close() !!}
                                            </td>
                                            <td>
                                                {!! Form::model($driver, array('action' => array('SoftDeleteDriver@destroy', $driver->id), 'method' => 'DELETE', 'class' => 'inline', 'data-toggle' => 'tooltip', 'title' => 'Destroy Driver Record')) !!}
                                                {!! Form::hidden('_method', 'DELETE') !!}
                                                {!! Form::button('<i class="fa fa-user-times" aria-hidden="true"></i>', array('class' => 'btn btn-danger btn-sm inline','type' => 'button', 'style' =>'width: 100%;' ,'data-toggle' => 'modal', 'data-target' => '#confirmDelete', 'data-title' => 'Delete Driver', 'data-message' => 'Are you sure you want to delete this driver ?')) !!}
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

    @include('scripts.datatables')
    @include('scripts.delete-modal-script')
    @include('scripts.save-modal-script')
    @include('scripts.tooltips')

@endsection
