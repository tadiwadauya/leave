<?php
/**
 * Created by PhpStorm.
 * User: Vincent Guyo
 * Date: 9/22/2019
 * Time: 18:49
 */
?>

@extends('layouts.app')

@section('template_title')
    Create Department
@endsection

@section('template_fastload_css')
@endsection

@section('template_linked_css')

    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
    <link href="{{ asset('css/select2.min.css')}}" rel="stylesheet" />
@endsection

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">
                            Add Department
                            <div class="pull-right">
                                <a href="{{ route('departments') }}" class="btn btn-light btn-sm float-right" data-toggle="tooltip" data-placement="left" title="Back to Departments">
                                    <i class="fa fa-fw fa-reply-all" aria-hidden="true"></i>
                                    Back to Departments
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="card-body">
                        {!! Form::open(array('route' => 'departments.store', 'method' => 'POST', 'role' => 'form', 'class' => 'needs-validation')) !!}

                        {!! csrf_field() !!}

                        <div class="form-group has-feedback row {{ $errors->has('department') ? ' has-error ' : '' }}">
                            {!! Form::label('department', 'Department', array('class' => 'col-md-3 control-label')); !!}
                            <div class="col-md-9">
                                <div class="input-group">
                                    {!! Form::text('department', NULL, array('id' => 'department', 'class' => 'form-control', 'placeholder' => 'e.g. I.T.')) !!}
                                    <div class="input-group-append">
                                        <label for="department" class="input-group-text">
                                            <i class="fa fa-fw fa-building" aria-hidden="true"></i>
                                        </label>
                                    </div>
                                </div>
                                @if ($errors->has('department'))
                                    <span class="help-block">
                                            <strong>{{ $errors->first('department') }}</strong>
                                        </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group has-feedback row {{ $errors->has('manager') ? ' has-error ' : '' }}">
                            {!! Form::label('manager', 'Manager', array('class' => 'col-md-3 control-label')); !!}
                            <div class="col-md-9">
                                <div class="input-group">
                                    <select class="custom-select form-control" name="manager" id="manager">
                                        <option value="">Select Manager</option>

                                            @foreach($users as $user)
                                                <option value="{{ $user->paynumber }}">{{ $user->first_name }} {{ $user->last_name }} ({{ $user->email }}) - {{ $user->paynumber }}</option>
                                            @endforeach

                                    </select>
                                    <div class="input-group-append">
                                        <label class="input-group-text" for="manager">
                                            <i class="fa fa-user-circle" aria-hidden="true"></i>
                                        </label>
                                    </div>
                                </div>
                                @if ($errors->has('manager'))
                                    <span class="help-block">
                                            <strong>{{ $errors->first('manager') }}</strong>
                                        </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group has-feedback row {{ $errors->has('asst_manager') ? ' has-error ' : '' }}">
                            {!! Form::label('asst_manager', 'Assistant Manager', array('class' => 'col-md-3 control-label')); !!}
                            <div class="col-md-9">
                                <div class="input-group">
                                    <select class="custom-select form-control" name="asst_manager" id="asst_manager">
                                        <option value="">Select Assistant Manager</option>

                                            @foreach($users as $user)
                                                <option value="{{ $user->paynumber }}">{{ $user->first_name }} {{ $user->last_name }} ({{ $user->email }}) - {{ $user->paynumber }}</option>
                                            @endforeach

                                    </select>
                                    <div class="input-group-append">
                                        <label class="input-group-text" for="asst_manager">
                                            <i class="fa fa-user-circle" aria-hidden="true"></i>
                                        </label>
                                    </div>
                                </div>
                                @if ($errors->has('asst_manager'))
                                    <span class="help-block">
                                            <strong>{{ $errors->first('asst_manager') }}</strong>
                                        </span>
                                @endif
                            </div>
                        </div>


                        {!! Form::button('Create Department', array('class' => 'btn btn-success margin-bottom-1 mb-1 float-right','type' => 'submit' )) !!}
                        {!! Form::close() !!}
                    </div>

                </div>
            </div>
        </div>
    </div>

@endsection

@section('footer_scripts')
    <script src="{{ asset('js/custom_bootstrap.min.js')}}"></script>
    <script src="{{ asset('js/select2.min.js')}}"></script>

    <script type="text/javascript">
        $("#manager").select2({
            placeholder: 'Please select a user',
            allowClear:true,
        });

    </script>

    <script type="text/javascript">
        $("#asst_manager").select2({
            placeholder: 'Please select a user',
            allowClear:true,
        });

    </script>

@endsection
