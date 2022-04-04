<?php
/**
 * Created by PhpStorm.
 * User: Vincent Guyo
 * Date: 9/23/2019
 * Time: 08:48
 */
?>

@extends('layouts.app')

@section('template_title')
    {!! $department->department !!} Department
@endsection

@php
    $users = \App\Models\User::all()->where('paynumber', $department->manager );
    $users2 = \App\Models\User::all()->where('paynumber', $department->asst_manager );
@endphp

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-lg-10 offset-lg-1">

                <div class="card">
                    <div class="card-header text-white  bg-success">
                        <div style="display: flex; justify-content: space-between; align-items: center;">
                            {!! $department->department !!} Department
                            <div class="float-right">
                                <a href="{{ route('departments') }}" class="btn btn-light btn-sm float-right" data-toggle="tooltip" data-placement="left" title="Back to Departments">
                                    <i class="fa fa-fw fa-mail-reply" aria-hidden="true"></i>
                                    Back to Departments
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="card-body">

                        @if ($department->department)

                            <div class="col-sm-5 col-6 text-larger">
                                <strong>
                                    Department Name
                                </strong>
                            </div>

                            <div class="col-sm-7">
                                {{ $department->department }}
                            </div>

                            <div class="clearfix"></div>
                            <div class="border-bottom"></div>

                        @endif

                        @if ($department->manager)

                            <div class="col-sm-5 col-6 text-larger">
                                <strong>
                                    Manager (Main Approver)
                                </strong>
                            </div>

                            <div class="col-sm-7">
                                @foreach($users as $user)
                                    {{ $user->first_name }} {{ $user->last_name }}
                                @endforeach
                            </div>

                            <div class="clearfix"></div>
                            <div class="border-bottom"></div>

                        @endif

                        @if ($department->asst_manager)

                            <div class="col-sm-5 col-6 text-larger">
                                <strong>
                                    Assistant Manager (One who approves if and when the Manager is not available for approvals)
                                </strong>
                            </div>

                            <div class="col-sm-7">
                                @foreach($users2 as $user)
                                    {{ $user->first_name }} {{ $user->last_name }}
                                @endforeach
                            </div>

                            <div class="clearfix"></div>
                            <div class="border-bottom"></div>

                        @endif

                        @if ($department->created_at)

                            <div class="col-sm-5 col-6 text-larger">
                                <strong>
                                    Created On
                                </strong>
                            </div>

                            <div class="col-sm-7">
                                {{ $department->created_at }}
                            </div>

                            <div class="clearfix"></div>
                            <div class="border-bottom"></div>

                        @endif

                        @if ($department->updated_at)

                            <div class="col-sm-5 col-6 text-larger">
                                <strong>
                                    Last Modified
                                </strong>
                            </div>

                            <div class="col-sm-7">
                                {{ $department->updated_at }}
                            </div>

                            <div class="clearfix"></div>
                            <div class="border-bottom"></div>

                        @endif


                    </div>

                </div>
            </div>
        </div>
    </div>

    @include('modals.modal-delete')

@endsection

@section('footer_scripts')
    @include('scripts.delete-modal-script')
    @if(config('usersmanagement.tooltipsEnabled'))
        @include('scripts.tooltips')
    @endif
@endsection

