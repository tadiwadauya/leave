<?php
/**
 * Created by PhpStorm.
 * User: Vincent Guyo
 * Date: 9/23/2019
 * Time: 09:23
 */
?>

@extends('layouts.app')

@section('template_title')
    Modify {!! $department->department !!} Department
@endsection

@php
    $users = \App\Models\User::all()->where('paynumber', $department->manager );
    $users2 = \App\Models\User::all()->where('paynumber', $department->asst_manager );
    $users_all = \App\Models\User::all();
@endphp

@section('template_linked_css')
    <style type="text/css">
        .btn-save,
        .pw-change-container {
            display: none;
        }
    </style>

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
                            Editing {!! $department->department !!} Department
                            <div class="pull-right">
                                <a href="{{ route('departments') }}" class="btn btn-light btn-sm float-right" data-toggle="tooltip" data-placement="top" title="Back to Departments">
                                    <i class="fa fa-fw fa-reply-all" aria-hidden="true"></i>
                                    Back to Departments
                                </a>
                                <a href="{{ url('/departments/' . $department->id) }}" class="btn btn-light btn-sm float-right" data-toggle="tooltip" data-placement="left" title="Back to Department">
                                    <i class="fa fa-fw fa-reply" aria-hidden="true"></i>
                                    Back to Department
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        {!! Form::open(array('route' => ['departments.update', $department->id], 'method' => 'PUT', 'role' => 'form', 'class' => 'needs-validation')) !!}

                        {!! csrf_field() !!}

                        <div class="form-group has-feedback row {{ $errors->has('department') ? ' has-error ' : '' }}">
                            {!! Form::label('department', 'Department ', array('class' => 'col-md-3 control-label')); !!}
                            <div class="col-md-9">
                                <div class="input-group">
                                    {!! Form::text('department', $department->department, array('id' => 'department', 'class' => 'form-control', 'placeholder' => 'Department Name')) !!}
                                    <div class="input-group-append">
                                        <label class="input-group-text" for="department">
                                            <i class="fa fa-fw fa-building" aria-hidden="true"></i>o
                                        </label>
                                    </div>
                                </div>
                                @if($errors->has('department'))
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
                                        @foreach($users as $user)
                                            <option value="{{ $user->paynumber }}">{{ $user->first_name }} {{ $user->last_name }} ({{ $user->email }}) - {{ $user->paynumber }}</option>
                                        @endforeach
                                            @foreach($users_all as $user)
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
                                        @foreach($users2 as $user2)
                                            <option value="{{ $user2->paynumber }}">{{ $user2->first_name }} {{ $user2->last_name }} ({{ $user2->email }}) - {{ $user2->paynumber }}</option>
                                        @endforeach
                                            @foreach($users_all as $user)
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

                        <div class="row">

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
