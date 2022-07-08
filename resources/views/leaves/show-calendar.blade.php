@extends('layouts.app')

@section('template_title')
    View Policy   
@endsection

@section('template_linked_css')
    <style>
        .view-section{
            padding: 0;
            margin:0;
        }
        .pdf-section{
            margin: 0;
            padding: 0
        }
        .pdf-section iframe{
            width: 100%;
            height: 100vh;
        }
        .policy-header{
            padding:0 2.5rem;
        }
        .policy-header h3{
            margin-bottom:1rem;
            padding-bottom: 0.5rem;
            text-align: center;
        }
    </style>
@endsection

@section('content')
    <div class="view-section">
        <div class="policy-header">
            <h3><span class="float-left"><a href="{{ url('/leaves/download/'.$leave->studyfile)}}" class="btn btn-outline-primary btn-md" >Download</a></span>    Download <span class="float-right"><a href="{{ url('/leaves')}}" class="btn btn-outline-info btn-md">Back to Leaves</a></span></h3>
        </div>
        <div class="pdf-section">
            <iframe src="{{ url('documents/study/'.$leave->studyfile)}}" frameborder="0"></iframe>
        </div>
    </div>
    
@endsection

