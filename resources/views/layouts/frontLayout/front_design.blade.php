<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="author" content="TechyDevs">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>@if(!empty($meta_title)){{$meta_title}} @else oshan @endif</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Google fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">

    <!-- Favicon -->
    <link rel="icon" sizes="16x16" href="{{asset ('images/frontend_images/Favi con-02.png')}}">

    <!-- inject:css -->
    <link href="{{asset('assets/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('assets/vendor/fontawesome/css/all.min.css')}}" rel="stylesheet">
    <link href="{{asset('assets/vendor/icofont/icofont.min.css')}}" rel="stylesheet">
    <link href="{{asset('assets/vendor/select2/css/select2.min.css')}}" rel="stylesheet">
    <link href="{{asset('assets/css/osahan.css')}}" rel="stylesheet">
    <link href="{{asset('assets/css/style.css')}}" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('assets/vendor/owl-carousel/owl.carousel.css')}}">
    <link rel="stylesheet" href="{{asset('assets/vendor/owl-carousel/owl.theme.css')}}">
    <link href="https://fonts.googleapis.com/css?family=Satisfy" rel="stylesheet">
    <!-- end inject -->
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
</head>

<body onload="modal()">

    <!-- start cssload-loader -->
    <!-- <div class="preloader">
        <div class="loader">
            <svg class="spinner" viewBox="0 0 50 50">
                <circle class="path" cx="25" cy="25" r="20" fill="none" stroke-width="5"></circle>
            </svg>
        </div>
    </div> -->
    <!-- end cssload-loader -->

    <div id="wrapper">
 
    @include('layouts.frontLayout.front_header')

    @yield('content')

    @include('layouts.frontLayout.front_footer')

    <!-- start scroll top -->
    <div id="scroll-top">
        <i class="la la-arrow-up fa" title="Go top"></i>
    </div>
    <!-- end scroll top -->

    </div>

    <script src="{{asset('assets/vendor/jquery/jquery-3.3.1.slim.min.js')}}" type="ae71748023c3274030b984ec-text/javascript"></script>
    <script src="{{asset('assets/vendor/bootstrap/js/bootstrap.bundle.min.js')}}" type="ae71748023c3274030b984ec-text/javascript"></script>
    <script src="{{asset('assets/vendor/select2/js/select2.min.js')}}" type="ae71748023c3274030b984ec-text/javascript"></script>
    <script src="{{asset('assets/vendor/owl-carousel/owl.carousel.js')}}" type="ae71748023c3274030b984ec-text/javascript"></script>
    <script src="{{asset('assets/js/custom.js')}}" type="ae71748023c3274030b984ec-text/javascript"></script>
    <script src="{{asset('cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js')}}" data-cf-settings="ae71748023c3274030b984ec-|49" defer></script>
    <script  src="https://static.cloudflareinsights.com/beacon.min.js/v84a3a4012de94ce1a686ba8c167c359c1696973893317" integrity="sha512-euoFGowhlaLqXsPWQ48qSkBSCFs3DPRyiwVu3FjR96cMPx+Fr+gpWRhIafcHwqwCqWS42RZhIudOvEI+Ckf6MA==" data-cf-beacon='{"rayId":"84f1b114f8190d72","version":"2024.2.0","r":1,"token":"dd471ab1978346bbb991feaa79e6ce5c","b":1}' crossorigin="anonymous"></script>

    <script>
        function modal() {
            // $('#popupModal').modal('show');
        }
    </script>
</body>
</html>

       








