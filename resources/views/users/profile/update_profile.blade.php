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
                    <div class="avatar bg-info rounded-circle"> {{mb_substr(ucfirst(Auth::User()->name) , 0, 1)}} </div>
                    <div class="media-body">
                        <h2 class="section__title fs-30 text-capitalize"> &nbsp;Hello {{Auth::User()->name}},</h2>
                    </div>
                </div>
            </div>
            <div class="section-block mb-5"></div>
            <div class="dashboard-heading mb-5">
                <h3 class="fs-22 font-weight-semi-bold">Update Profile </h3>
            </div>
            <div class="profile-detail mb-5">
                <form action="{{url('user/profile-update/')}}" method="post" id="profileUpdate" enctype='multipart/form-data'>@csrf
                <ul class="generic-list-item generic-list-item-flash">
                    <li><span class="profile-name">Name:</span><span class="profile-desc"><input type="text" name="name" class="form-control" value="{{Auth::User()->name}}" required></span></li>
                    <li><span class="profile-name">Email:</span><span class="profile-desc"><input type="email" name="email" class="form-control disabled" readonly value="{{Auth::User()->email}}" required></span></li>
                    <li><span class="profile-name">Phone Number:</span><span class="profile-desc"><input type="number" name="mobile" class="form-control" value="{{Auth::User()->mobile}}" required></span></li>
                    <li><span class="profile-name">Profile Picture:</span><span class="profile-desc"><input type="file" name="image" class="form-control" value="{{Auth::User()->image}}" required></span></li>
                    <li><span class="profile-name invisible"></span><span class="profile-desc"><button type="submit" class="btn theme-btn"><i class="la la-check-circle"></i> Update</button></span></li>
                </ul>
                </form>
            </div>
            <div class="row align-items-center dashboard-copyright-content pb-4">
                <div class="col-lg-12">
                    <p class="copy-desc">&copy; {{date('Y')}}. All Rights Reserved. | <a href="https://ycstech.in/" target="_blank">Design & Developed by YCS TechSoft Pvt. Ltd.</a></p>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection