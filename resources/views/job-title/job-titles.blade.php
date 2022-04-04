<?php
/**
 * Created by PhpStorm for wls
 * User: Vincent Guyo
 * Date: 1/10/2020
 * Time: 6:10 PM
 */
?>

@extends('layouts.app')

@section('template_title')
    Showing Job Titles
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
                                Job Titles
                            </span>

                            <div class="btn-group pull-right btn-group-xs">

                                @permission('job.title.create')
                                <div class="btn pull-left btn-group-xs">
                                    <a class="btn btn-light btn-block" href="{{url('/jobtitles/create')}}" data-toggle="tooltip" title="Create Job Title">
                                        Create Job Title
                                    </a>
                                </div>
                                @endpermission
                            </div>

                        </div>
                    </div>

                    <div class="card-body">
                        <div class="table-responsive users-table">
                            <table class="table table-striped table-sm data-table">
                                <thead class="thead">
                                <tr>
                                    <th>Job Title </th>
                                    <th>Department</th>
                                    <th>Added</th>
                                    <th class="no-search no-sort">Actions</th>
                                    @permission('job.title.delete')<th class="no-search no-sort"></th>@endpermission
                                    <th class="no-search no-sort"></th>
                                </tr>
                                </thead>
                                <tbody id="users_table">
                                @foreach($titles as $title)
                                    <tr>
                                        <td>{{$title->jobtitle}}</td>
                                        <td>{{$title->department}}</td>
                                        <td>{{$title->created_at}}</td>
                                        @permission('job.title.delete')
                                        <td class="no-search no-sort">
                                            {!! Form::open(array('url' => 'jobtitles/' . $title->id, 'class' => '', 'data-toggle' => 'tooltip', 'title' => 'Delete')) !!}
                                            {!! Form::hidden('_method', 'DELETE') !!}
                                            {!! Form::button('<i class="fa fa-trash-o fa-fw" aria-hidden="true"></i>  <span class="hidden-xs hidden-sm">Delete</span><span class="hidden-xs hidden-sm hidden-md"> Job Title</span>', array('class' => 'btn btn-danger btn-sm','type' => 'button', 'style' =>'width: 100%;' ,'data-toggle' => 'modal', 'data-target' => '#confirmDelete', 'data-title' => 'Delete Job Title', 'data-message' => 'Are you sure you want to delete this job title ?')) !!}
                                            {!! Form::close() !!}
                                        </td>
                                        @endpermission
                                        <td class="no-search no-sort">
                                            <a class="btn btn-sm btn-success btn-block" href="{{ URL::to('jobtitles/' . $title->id) }}" data-toggle="tooltip" title="Show">
                                                <i class="fa fa-eye fa-fw" aria-hidden="true"></i> <span class="hidden-xs hidden-sm">Show</span><span class="hidden-xs hidden-sm hidden-md"> Job Title</span>
                                            </a>
                                        </td>
                                        <td class="no-search no-sort">
                                            <a class="btn btn-sm btn-info btn-block" href="{{ URL::to('jobtitles/' . $title->id . '/edit') }}" data-toggle="tooltip" title="Edit">
                                                <i class="fa fa-pencil fa-fw" aria-hidden="true"></i> <span class="hidden-xs hidden-sm">Modify</span><span class="hidden-xs hidden-sm hidden-md"> Job Title</span>
                                            </a>
                                        </td>
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

