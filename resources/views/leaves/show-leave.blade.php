<?php
/**
 * Created by PhpStorm.
 * User: Vincent Guyo
 * Date: 9/25/2019
 * Time: 12:48
 */
?>

@extends('layouts.app')

@section('template_title')
    {!! $leave->paynumber !!} Leave Request
@endsection

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-lg-10 offset-lg-1">

                <div class="card">
                    <div class="card-header text-white  bg-success">
                        <div style="display: flex; justify-content: space-between; align-items: center;">
                            {!! $leave->paynumber !!} Leave Request
                            <div class="float-right">
                                <a href="{{ route('leaves') }}" style="margin-left:3em" class="btn btn-light btn-sm float-right" data-toggle="tooltip" data-placement="left" title="Back to Leave List">
                                    <i class="fa fa-fw fa-mail-reply" aria-hidden="true"></i>
                                    Back to Leave List
                                </a>

                                <a href="{{ url('/leave-pdf/'.$leave->id) }}" class="btn btn-light btn-sm float-right" data-toggle="tooltip" data-placement="left" title="After downloading, submit to Human Resources">
                                    <i class="fa fa-fw fa-download" aria-hidden="true"></i>
                                    Download Form
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="card-body">

                        @if ($leave->paynumber)

                            <div class="col-sm-5 col-6 text-larger">
                                <strong>
                                    Applier's Pay Number
                                </strong>
                            </div>

                            <div class="col-sm-7">
                                {{ $leave->paynumber }}
                            </div>

                            <div class="clearfix"></div>
                            <div class="border-bottom"></div>

                        @endif



                        <div class="col-sm-5 col-6 text-larger">
                            <strong>
                                Applier's Name
                            </strong>
                        </div>

                        <div class="col-sm-7">
                            {{ $user->first_name }} {{ $user->last_name }}
                        </div>

                        <div class="clearfix"></div>
                        <div class="border-bottom"></div>



                        @if ($leave->type_of_leave)

                            <div class="col-sm-5 col-6 text-larger">
                                <strong>
                                    Type of Leave Requested
                                </strong>
                            </div>

                            <div class="col-sm-7">
                                {{ $leave->type_of_leave }}
                            </div>

                            <div class="clearfix"></div>
                            <div class="border-bottom"></div>

                        @endif

                        @if ($leave->status)

                            <div class="col-sm-5 col-6 text-larger">
                                <strong>
                                    Status
                                </strong>
                            </div>

                            <div class="col-sm-7">
                                @if ($leave->status == 1)
                                    <span class="badge badge-success">
                                        Approved
                                    </span>
                                @elseif ($leave->status == 2)
                                    <span class="badge badge-danger">
                                        Rejected
                                    </span>
                                @elseif ($leave->status == 0)
                                    <span class="badge badge-warning">
                                        Pending
                                    </span>
                                @endif
                            </div>

                            <div class="clearfix"></div>
                            <div class="border-bottom"></div>

                        @endif

                        @if ($leave->created_at)

                            <div class="col-sm-5 col-6 text-larger">
                                <strong>
                                    Requested On
                                </strong>
                            </div>

                            <div class="col-sm-7">
                                {{ $leave->created_at }}
                            </div>

                            <div class="clearfix"></div>
                            <div class="border-bottom"></div>

                        @endif

                        @if ($leave->days_taken)

                            <div class="col-sm-5 col-6 text-larger">
                                <strong>
                                    Days Requested
                                </strong>
                            </div>

                            <div class="col-sm-7">
                                {{ $leave->days_taken }}
                            </div>

                            <div class="clearfix"></div>
                            <div class="border-bottom"></div>

                        @endif

                        @if ($leave->date_from)

                            <div class="col-sm-5 col-6 text-larger">
                                <strong>
                                    Date Requested From
                                </strong>
                            </div>

                            <div class="col-sm-7">
                                {{ $leave->date_from }}
                            </div>

                            <div class="clearfix"></div>
                            <div class="border-bottom"></div>

                        @endif

                        @if ($leave->date_to)

                            <div class="col-sm-5 col-6 text-larger">
                                <strong>
                                    Date Requested To
                                </strong>
                            </div>

                            <div class="col-sm-7">
                                {{ $leave->date_to }}
                            </div>

                            <div class="clearfix"></div>
                            <div class="border-bottom"></div>

                        @endif

                        @if ($leave->approved_by)

                            <div class="col-sm-5 col-6 text-larger">
                                <strong>
                                    Approved By
                                </strong>
                            </div>

                            <div class="col-sm-7">
                                {{ $leave->approved_by }}
                            </div>

                            <div class="clearfix"></div>
                            <div class="border-bottom"></div>

                        @endif

                        @if ($leave->approver_name)

                            <div class="col-sm-5 col-6 text-larger">
                                <strong>
                                    Approver
                                </strong>
                            </div>

                            <div class="col-sm-7">
                                {{ $leave->approver_name }}
                            </div>

                            <div class="clearfix"></div>
                            <div class="border-bottom"></div>

                        @endif

                        @if ($leave->approved_when)

                            <div class="col-sm-5 col-6 text-larger">
                                <strong>
                                    Approved When
                                </strong>
                            </div>

                            <div class="col-sm-7">
                                {{ $leave->approved_when }}
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
