<?php
/**
 * Created by PhpStorm for wls
 * User: Vincent Guyo
 * Date: 7/16/2020
 * Time: 12:07 PM
 */
?>
@extends('layouts.app')

@section('template_title')
    Edit Driver {{$driver->paynumber}}
@endsection

@section('template_linked_css')
    <style type="text/css">
        .btn-save,
        .pw-change-container {
            display: none;
        }
    </style>

    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
@endsection

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">
                            Modifying {{$driver->paynumber}} details
                            <div class="pull-right">
                                <a href="{{ route('drivers') }}" class="btn btn-light btn-sm float-right" >
                                    <i class="fa fa-fw fa-reply-all" aria-hidden="true"></i>
                                    Back to Drivers
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        {!! Form::open(array('route' => ['drivers.update', $driver->id], 'method' => 'PUT', 'role' => 'form', 'class' => 'needs-validation')) !!}

                        {!! csrf_field() !!}

                        <div class="form-group has-feedback row {{ $errors->has('paynumber') ? ' has-error ' : '' }}">
                            {!! Form::label('paynumber', 'Pay Number', array('class' => 'col-md-3 control-label')); !!}
                            <div class="col-md-9">
                                <div class="input-group">
                                    {!! Form::text('paynumber', $driver->paynumber, array('id' => 'paynumber', 'class' => 'form-control', 'placeholder' => 'e.g. T2500')) !!}
                                    <div class="input-group-append">
                                        <label class="input-group-text" for="paynumber">
                                            <i class="fa fa-fw fa-barcode" aria-hidden="true"></i>
                                        </label>
                                    </div>
                                </div>
                                @if ($errors->has('paynumber'))
                                    <span class="help-block">
                                            <strong>{{ $errors->first('paynumber') }}</strong>
                                        </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group has-feedback row {{ $errors->has('full_name') ? ' has-error ' : '' }}">
                            {!! Form::label('full_name', 'Full Name', array('class' => 'col-md-3 control-label')); !!}
                            <div class="col-md-9">
                                <div class="input-group">
                                    {!! Form::text('full_name', $driver->full_name , array('id' => 'full_name', 'class' => 'form-control', 'placeholder' => 'e.g. Honor Driver')) !!}
                                    <div class="input-group-append">
                                        <label class="input-group-text" for="first_name">
                                            <i class="fa fa-fw {{ trans('forms.create_user_icon_firstname') }}" aria-hidden="true"></i>
                                        </label>
                                    </div>
                                </div>
                                @if ($errors->has('full_name'))
                                    <span class="help-block">
                                            <strong>{{ $errors->first('full_name') }}</strong>
                                        </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group has-feedback row {{ $errors->has('address') ? ' has-error ' : '' }}">
                            {!! Form::label('address', 'Address', array('class' => 'col-md-3 control-label')); !!}
                            <div class="col-md-9">
                                <div class="input-group">
                                    {!! Form::text('address', $driver->address, array('id' => 'address', 'class' => 'form-control', 'placeholder' => 'e.g. 7 Tashinga Gardens, 12 Browning Ave, Strathaven')) !!}
                                    <div class="input-group-append">
                                        <label class="input-group-text" for="address">
                                            <i class="fa fa-fw fa-address-book" aria-hidden="true"></i>
                                        </label>
                                    </div>
                                </div>
                                @if ($errors->has('address'))
                                    <span class="help-block">
                                            <strong>{{ $errors->first('address') }}</strong>
                                        </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group has-feedback row {{ $errors->has('cell_no') ? ' has-error ' : '' }}">
                            {!! Form::label('cell_no', 'Mobile Number', array('class' => 'col-md-3 control-label')); !!}
                            <div class="col-md-9">
                                <div class="input-group">
                                    {!! Form::text('cell_no', $driver->cell_no, array('id' => 'cell_no', 'class' => 'form-control', 'placeholder' => 'e.g. 0773418009')) !!}
                                    <div class="input-group-append">
                                        <label class="input-group-text" for="mobile">
                                            <i class="fa fa-fw fa-mobile-phone" aria-hidden="true"></i>
                                        </label>
                                    </div>
                                </div>
                                @if ($errors->has('cell_no'))
                                    <span class="help-block">
                                            <strong>{{ $errors->first('cell_no') }}</strong>
                                        </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group has-feedback row {{ $errors->has('leave_days') ? ' has-error ' : '' }}">
                            {!! Form::label('leave_days', 'Leave Days', array('class' => 'col-md-3 control-label')); !!}
                            <div class="col-md-9">
                                <div class="input-group">
                                    {!! Form::text('leave_days', $driver->leave_days, array('id' => 'leave_days', 'class' => 'form-control', 'placeholder' => 'e.g. 15.31')) !!}
                                    <div class="input-group-append">
                                        <label for="email" class="input-group-text">
                                            <i class="fa fa-fw fa-code" aria-hidden="true"></i>
                                        </label>
                                    </div>
                                </div>
                                @if ($errors->has('leave_days'))
                                    <span class="help-block">
                                            <strong>{{ $errors->first('leave_days') }}</strong>
                                        </span>
                                @endif
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-12 col-sm-6 mb-2">

                            </div>
                            <div class="col-12 col-sm-6">
                                {!! Form::button(trans('forms.save-changes'), array('class' => 'btn btn-success btn-block margin-bottom-1 mt-3 mb-2 btn-save','type' => 'button', 'data-toggle' => 'modal', 'data-target' => '#confirmSave', 'data-title' => trans('modals.edit_user__modal_text_confirm_title'), 'data-message' => trans('modals.edit_user__modal_text_confirm_message'))) !!}
                            </div>
                        </div>
                        {!! Form::close() !!}
                    </div>

                </div>
            </div>
        </div>
    </div>

    @include('modals.modal-save')
    @include('modals.modal-delete')

@endsection

@section('footer_scripts')
    @include('scripts.delete-modal-script')
    @include('scripts.save-modal-script')
    @include('scripts.check-changed')
    <script src="{{ asset('js/custom_bootstrap.min.js')}}"></script>

@endsection
