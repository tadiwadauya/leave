<?php
/**
 *Created by PhpStorm for wls
 *User: Vincent Guyo
 *Date: 9/22/2020
 *Time: 10:49 AM
 */

?>
<!DOCTYPE html>
<html>

<head>
    <!-- -------------- Meta and Title -------------- -->
    <meta charset="utf-8">
    <title>WheLeave - Whelson / GDC Transport</title>
    <meta name="keywords" content="Whelson Transport / GDC"/>
    <meta name="description" content="Whelson Transport / GDC , 64 Lytton Road, Workington, Harare, Zimbabwe">
    <meta name="author" content="Vincent H Guyo">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- -------------- Fonts -------------- -->
    <link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700'>
    <link href='https://fonts.googleapis.com/css?family=Lato:400,300,300italic,400italic,700,700italic' rel='stylesheet'
          type='text/css'>

    <!-- -------------- CSS - theme -------------- -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/skin/default_skin/css/theme.css')}}">

    <!-- -------------- CSS - allcp forms -------------- -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/allcp/forms/css/forms.css')}}">

    <!-- -------------- Favicon -------------- -->
    <link rel="shortcut icon" href="{{asset('assets/img/favicon.png')}}">

    <!-- -------------- IE8 HTML5 support  -------------- -->
    <!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<style>
    body.utility-page #main {
        overflow: hidden;
        background: url({{asset('assets/img/patterns/backgrounds/BG2.jpg')}}) top center no-repeat #2d494d
    }
</style>

<body class="utility-page sb-l-c sb-r-c">

<div id="main" class="animated fadeIn">

    <section id="content_wrapper">

        <div id="canvas-wrapper">
            <canvas id="demo-canvas"></canvas>
        </div>

        <section id="content">

            <div class="allcp-form theme-primary mw450" id="login">
                <div class="bg-primary text-center mb20 br3 pv15">
                    <span style="color:#FFFFFF">
                        <strong><u>W</u>helson <u>G</u>DC <u>T</u>ransport - <u>L</u>eave <u>M</u>anagement <u>S</u>ystem</strong>
                    </span>
                </div>
                <div class="panel mw450">
                    <div class="card">
                        <div class="card-body p-4">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="text-center mb-5">
                                        <img src="{{url('images/whelsonlogo.jpg')}}" height="32" alt="logo">
                                        <br><br>
                                    </div>
                                </div>
                            </div>

                            <div class="p-2">
                                {{--1 Leave Request approved successfully!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                                <div class="alert alert-success alert-dismissable fade show" role="alert">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <h4><i class="icon fa fa-check fa-fw" aria-hidden="true"></i> Success</h4>
                                    Leave Request approved successfully.!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                                </div>--}}
                                @if (session('success'))
                                    {{ session('success') }}
                                @endif

                                @if (session('error'))
                                    {{ session('error') }}
                                @endif
                            </div>
                        </div>
                </div>
            </div>
        </section>
    </section>
</div>

<script src="{{asset('assets/js/jquery/jquery-1.11.3.min.js')}}"></script>
<script src="{{asset('assets/js/jquery/jquery_ui/jquery-ui.min.js')}}"></script>

<!-- -------------- CanvasBG JS -------------- -->
<script src="{{asset('assets/js/plugins/canvasbg/canvasbg.js')}}"></script>

<!-- -------------- Theme Scripts -------------- -->
<script src="{{asset('assets/js/utility/utility.js')}}"></script>
<script src="{{asset('assets/js/demo/demo.js')}}"></script>
<script src="{{asset('assets/js/main.js')}}"></script>

<!-- -------------- Page JS -------------- -->
<script type="text/javascript">
    jQuery(document).ready(function () {

        "use strict";

        // Init Theme Core
        Core.init();

        // Init Demo JS
        Demo.init();

        // Init CanvasBG
        CanvasBG.init({
            Loc: {
                x: window.innerWidth / 5,
                y: window.innerHeight / 10
            }
        });

    });
</script>

<!-- -------------- /Scripts -------------- -->

</body>

</html>
