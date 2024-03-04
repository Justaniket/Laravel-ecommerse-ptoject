<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="author" content="TechyDevs">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>@if(!empty($meta_title)){{$meta_title}} @else User Dashboard | Zillion Link - Connecting electronic society @endif</title>

    <!-- Google fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">

    <!-- Favicon -->
    <link rel="icon" sizes="16x16" href="{{asset('images/frontend_images/Favi con-02.png')}}">

    <!-- inject:css -->
    <link rel="stylesheet" href="{{asset('css/frontend_css/bootstrap.min.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('css/frontend_css/bootstrap-select.min.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('css/frontend_css/line-awesome.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('css/frontend_css/owl.carousel.min.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('css/frontend_css/owl.theme.default.min.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('css/frontend_css/bootstrap-select.min.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('css/frontend_css/fancybox.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('css/frontend_css/tooltipster.bundle.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('css/frontend_css/style.css')}}" type="text/css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <!-- end inject -->
</head>
<body>


@include('users/user_sidebar')

@yield('content')

<!-- start cssload-loader -->
<!-- <div class="preloader">
    <div class="loader">
        <svg class="spinner" viewBox="0 0 50 50">
            <circle class="path" cx="25" cy="25" r="20" fill="none" stroke-width="5"></circle>
        </svg>
    </div>
</div> -->
<!-- end cssload-loader -->

<!-- start scroll top -->
<div id="scroll-top">
    <i class="la la-arrow-up" title="Go top"></i>
</div>
<!-- end scroll top -->

<!-- Modal -->
<div class="modal fade modal-container" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-body text-center">
                <span class="la la-exclamation-circle fs-60 text-warning"></span>
                <h4 class="modal-title fs-19 font-weight-semi-bold pt-2 pb-1" id="deleteModalTitle">Your account will be deleted permanently!</h4>
                <p>Are you sure you want to delete your account?</p>
                <div class="btn-box pt-4">
                    <button type="button" class="btn font-weight-medium mr-3" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn theme-btn theme-btn-sm lh-30">Ok, Delete</button>
                </div>
            </div><!-- end modal-body -->
        </div><!-- end modal-content -->
    </div><!-- end modal-dialog -->
</div><!-- end modal -->


<!-- template js files -->
<script src="{{asset('js/frontend_js/jquery-3.4.1.min.js')}}"></script>
    <script src="{{asset('js/frontend_js/bootstrap.bundle.min.js')}}"></script>
    <script src="{{asset('js/frontend_js/bootstrap-select.min.js')}}"></script>
    <script src="{{asset('js/frontend_js/owl.carousel.min.js')}}"></script>
    <script src="{{asset('js/frontend_js/isotope.js')}}"></script>
    <script src="{{asset('js/frontend_js/waypoint.min.js')}}"></script>
    <script src="{{asset('js/frontend_js/jquery.counterup.min.js')}}"></script>
    <script src="{{asset('js/frontend_js/fancybox.js')}}"></script>
    <script src="{{asset('js/frontend_js/datedropper.min.js')}}"></script>
    <script src="{{asset('js/frontend_js/emojionearea.min.js')}}"></script>
    <script src="{{asset('js/frontend_js/tooltipster.bundle.min.js')}}"></script>
    <script src="{{asset('js/frontend_js/jquery.lazy.min.js')}}"></script>
    <script src="{{asset('js/frontend_js/main.js')}}"></script>
    <script src="{{asset('js/frontend_js/jquery.validate.js')}}"></script>
</body>
</html>