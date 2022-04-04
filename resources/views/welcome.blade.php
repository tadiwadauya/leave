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

<!-- -------------- Body Wrap  -------------- -->
<div id="main" class="animated fadeIn">

    <!-- -------------- Main Wrapper -------------- -->
    <section id="content_wrapper">

        <div id="canvas-wrapper">
            <canvas id="demo-canvas"></canvas>
        </div>

        <!-- -------------- Content -------------- -->
        <section id="content">

            <!-- -------------- Login Form -------------- -->
            <div class="allcp-form theme-primary mw320" id="login">
                <div class="bg-primary text-center mb20 br3 pv15">
                    <span style="color:#FFFFFF">
                        <strong><u>W</u>helson <u>G</u>DC <u>T</u>ransport - <u>L</u>eave <u>M</u>anagement <u>S</u>ystem</strong>
                    </span>
                </div>
                <div class="panel mw320">

                    <form method="POST" action="{{ route('login') }}">
                        @csrf

                        <div class="panel-body pn mv10">
                            @if (session('message'))
                                <div class="alert {{session('class')}}">
                                    {{ session('message') }}
                                </div>
                            @endif
                            <div class="section">
                                <label for="login" class="field prepend-icon">
                                    <input type="text" name="login" id="login" class="gui-input form-control{{ $errors->has('paynumber') || $errors->has('email') ? ' is-invalid' : '' }}" placeholder="Pay Number or Email" value="{{ old('paynumber') ?: old('email') }}" required
                                           autofocus>

                                    @if ($errors->has('paynumber') || $errors->has('email'))
                                        <span class="invalid-feedback">
                                            <strong>{{ $errors->first('paynumber') ?: $errors->first('email') }}</strong>
                                        </span>
                                    @endif

                                    <label for="email" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <!-- -------------- /section -------------- -->

                            <div class="section">
                                <label for="password" class="field prepend-icon">
                                    <input type="password" name="password" id="password" class="gui-input form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" placeholder="Password" required>

                                    @if ($errors->has('password'))
                                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                    @endif

                                    <label for="password" class="field-icon">
                                        <i class="fa fa-lock"></i>
                                    </label>
                                </label>
                            </div>
                            <!-- -------------- /section -------------- -->

                            <div class="section">
                             <div class="pull-left pt5">
                                    <a href="{{ route('password.request') }}">Forgot Password?</a>
                                </div>
                                <button type="submit" class="btn btn-bordered btn-primary pull-right">Log in</button>
                            </div>
                            <!-- -------------- /section -------------- -->

                        </div>

                    </form>

                </div>
                <!-- -------------- /Panel -------------- -->
            </div>
            <!-- -------------- /Spec Form -------------- -->

        </section>
        <!-- -------------- /Content -------------- -->

    </section>
    <!-- -------------- /Main Wrapper -------------- -->

</div>
<!-- -------------- /Body Wrap  -------------- -->

<!-- -------------- Scripts -------------- -->

<!-- -------------- jQuery -------------- -->
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

<!-- ****************************************ORIGINAL FORM *********************************************-->

