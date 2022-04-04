<?php
/**
 * Created by PhpStorm for wls
 * User: Vincent Guyo
 * Date: 1/10/2020
 * Time: 6:12 PM
 */
?>

@extends('layouts.app')

@section('template_title')
    Create Job Title
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
                    <div class="card-header text-white">
                        <div style="display: flex; justify-content: space-between; align-items: center;">
                            Add Job Title
                            <div class="pull-right">
                                <a href="{{ route('jobtitles') }}" class="btn btn-light btn-sm float-right" data-toggle="tooltip" data-placement="left" title="Back to Job Titles">
                                    <i class="fa fa-fw fa-reply-all" aria-hidden="true"></i>
                                    Back to Job Titles
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="card-body">
                        {!! Form::open(array('route' => 'jobtitles.store', 'method' => 'POST', 'role' => 'form', 'class' => 'needs-validation')) !!}

                        {!! csrf_field() !!}

                        <div class="form-group has-feedback row {{ $errors->has('jobtitle') ? ' has-error ' : '' }}">
                            {!! Form::label('jobtitle', 'Job Title', array('class' => 'col-md-3 control-label')); !!}
                            <div class="col-md-9">
                                <div class="input-group">
                                    {!! Form::text('jobtitle', NULL, array('id' => 'jobtitle', 'class' => 'form-control', 'placeholder' => 'e.g. Foromani')) !!}
                                    <div class="input-group-append">
                                        <label for="department" class="input-group-text">
                                            <i class="fa fa-fw fa-building" aria-hidden="true"></i>
                                        </label>
                                    </div>
                                </div>
                                @if ($errors->has('jobtitle'))
                                    <span class="help-block">
                                            <strong>{{ $errors->first('jobtitle') }}</strong>
                                        </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group has-feedback row {{ $errors->has('department') ? ' has-error ' : '' }}">
                            {!! Form::label('department', 'Department', array('class' => 'col-md-3 control-label')); !!}
                            <div class="col-md-9">
                                <div class="input-group">
                                    <select class="custom-select form-control dynamic" name="department" id="department">
                                        <option value="">Select Job Title Department</option>
                                        @if ($departments)
                                            @foreach($departments as $department)
                                                <option value="{{ $department->department }} ">{{ $department->department }}</option>
                                            @endforeach
                                        @endif
                                    </select>
                                    <div class="input-group-append">
                                        <label class="input-group-text" for="department">
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

                        {!! Form::button('Create Job Title', array('class' => 'btn btn-primary margin-bottom-1 mb-1 float-right','type' => 'submit' )) !!}
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
        $("#department").select2({
            placeholder: 'Please select Job Title Department',
            allowClear:true,
        });

    </script>

@endsection
{{--@else
    @php
        return redirect('/home')->with('error', 'You are not authorized to be there.');
    @endphp--}}


