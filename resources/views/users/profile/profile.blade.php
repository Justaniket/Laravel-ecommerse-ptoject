@extends('users.user_design')
@section('content')

<section class="dashboard-area">
    <div class="dashboard-content-wrap">
        <div class="dashboard-menu-toggler btn theme-btn theme-btn-sm lh-28 theme-btn-transparent mb-4 ml-3">
            <i class="la la-bars mr-1"></i> Dashboard Nav
        </div>
        <div class="container-fluid">
            <div class="breadcrumb-content d-flex flex-wrap align-items-center justify-content-between mb-2">
                <div class="media media-card align-items-center">
                @if(!empty(Auth::User()->image))   
                    <img src="{{ url('profilepic/'.Auth::User()->image); }}" class="d-profile-img-edit img-fluid" alt="" style="height: 102px; border-radius: 22px; object-fit: cover;">
                @else
                    <div class="avatar bg-info rounded-circle"> {{mb_substr(ucfirst(Auth::User()->name) , 0, 1)}} </div>
                @endif    
                    <div class="media-body">
                        <h2 class="section__title text-capitalize" style="font-size: 22px;"> &nbsp;&nbsp;Hello {{Auth::User()->name}},</h2>
                    </div>
                </div>
            </div>
            <div class="section-block mb-5"></div>
            <div class="dashboard-heading mb-5">
                <h3 class="fs-22 font-weight-semi-bold">My Profile <a href="{{url('user/profile-update/')}}" class="btn btn-link"><i class="la la-pencil-alt fs-20"></i></a></h3>
            </div>
            @if(Session::has('flash_message_error')) 

            <div class="alert alert-danger alert-dismissible fade show" role="alert">
              <strong>{!! session('flash_message_error') !!}</strong>
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            @endif
            @if(Session::has('flash_message_success'))          
            <div class="alert alert-success alert-dismissible fade show" role="alert">
              <strong>{!! session('flash_message_success') !!}</strong>
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            @endif
            
            <div class="profile-detail mb-5">
                <ul class="generic-list-item generic-list-item-flash">
                    <li><span class="profile-name">Name:</span><span class="profile-desc">{{Auth::User()->name}}</span></li>
                    <li><span class="profile-name">Email:</span><span class="profile-desc">{{Auth::User()->email}}</span></li>
                    <li><span class="profile-name">Phone Number:</span><span class="profile-desc">{{Auth::User()->mobile}}</span></li>

                </ul>
            </div>
            <div class="row align-items-center dashboard-copyright-content pb-4">
                <div class="col-lg-12">
                    <p class="copy-desc">&copy; {{date('Y')}}. All Rights Reserved. | <a href="https://ycstech.in/" target="_blank">Design & Developed by YCS TechSoft Pvt. Ltd.</a></p>
                </div><!-- end col-lg-6 -->
            </div>
        </div>
    </div>
</section>

@endsection