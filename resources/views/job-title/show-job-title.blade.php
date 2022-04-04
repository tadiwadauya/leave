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
    {!! $title->jobtitle !!} Title
@endsection

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-lg-10 offset-lg-1">

                <div class="card">
                    <div class="card-header text-white  bg-success">
                        <div style="display: flex; justify-content: space-between; align-items: center;">
                            {!! $title->jobtitle !!} Title
                            <div class="float-right">
                                <a href="{{ route('jobtitles') }}" class="btn btn-light btn-sm float-right" data-toggle="tooltip" data-placement="left" title="Back to Job Titles">
                                    <i class="fa fa-fw fa-mail-reply" aria-hidden="true"></i>
                                    Back to Job Titles
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="card-body">

                        @if ($title->jobtitle)

                            <div class="col-sm-5 col-6 text-larger">
                                <strong>
                                    Job Title
                                </strong>
                            </div>

                            <div class="col-sm-7">
                                {{ $title->jobtitle }}
                            </div>

                            <div class="clearfix"></div>
                            <div class="border-bottom"></div>

                        @endif

                        @if ($title->department)

                            <div class="col-sm-5 col-6 text-larger">
                                <strong>
                                    Department
                                </strong>
                            </div>

                            <div class="col-sm-7">
                                {{ $title->department }}
                            </div>

                            <div class="clearfix"></div>
                            <div class="border-bottom"></div>

                        @endif

                        @if ($title->created_at)

                            <div class="col-sm-5 col-6 text-larger">
                                <strong>
                                    Created On
                                </strong>
                            </div>

                            <div class="col-sm-7">
                                {{ $title->created_at }}
                            </div>

                            <div class="clearfix"></div>
                            <div class="border-bottom"></div>

                        @endif

                        @if ($title->updated_at)

                            <div class="col-sm-5 col-6 text-larger">
                                <strong>
                                    Last Modified
                                </strong>
                            </div>

                            <div class="col-sm-7">
                                {{ $title->updated_at }}
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

