@php
    $email = session('adminSession');
  
    use App\Admin;
    use App\Models\about;
    use App\Models\domainsexplore;
    use App\Models\Services;
    use App\Models\products;
    use App\Models\gallery;
    use App\Models\Blogs;
    use App\Models\careers;
    use App\Models\Enquiry;
    use App\Models\User;
    use App\Models\Traineruser;
    use App\Models\Project;
    use App\Models\Ideaenquiry;
    use App\Models\Donateenquiry;

    $services = Services::count();
    $blogs = Blogs::count();
    $enquiry = Enquiry::count();
    $donateenquiry = Donateenquiry::count();
    $users = User::count();
    $traineruser = Traineruser::count();
    $project = Project::count();
    $ideaenquiry = Ideaenquiry::count();
  
  

  
@endphp

@extends('layouts/adminLayout/admin_design')
@section('content')

<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">Dashboard</h1>
                </div>
            </div>
        </div>
    </div>

    <section class="content">
        <div class="container-fluid">
            <div class="row">

                <div class="clearfix hidden-md-up"></div>
                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="info-box mb-3">
                            <span class="info-box-icon bg-dark elevation-1"><i class="nav-icon fas fa-users"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text" style="color: #000;">User</span>
                            <span class="info-box-number" style="color: #000;">{{ $users }} </span>
                        </div>
                    </div>
                </div>

                <div class="clearfix hidden-md-up"></div>
                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="info-box mb-3">
                        <span class="info-box-icon bg-gradient-olive elevation-1"><i class="nav-icon fas fa-user-graduate"></i></span>
                        <a href="{{url('/admin/view-traineruser')}}">
                        <div class="info-box-content">
                            <span class="info-box-text" style="color: #000;">Traineruser</span>
                            <span class="info-box-number" style="color: #000;">{{ $traineruser }} </span>
                        </div></a>
                    </div>
                </div>

                <div class="col-12 col-sm-6 col-md-3">
                    <div class="info-box">
                        <span class="info-box-icon bg-info elevation-1"><i class="nav-icon fas fa-check-double"></i></span>
                        <a href="{{url('/admin/view-services')}}">
                        <div class="info-box-content">
                            <span class="info-box-text" style="color: #000;">Services</span>
                            <span class="info-box-number" style="color: #000;">  {{ $services }}</span>
                        </div></a>
                    </div>
                </div>

                <div class="col-12 col-sm-6 col-md-3">
                    <div class="info-box">
                        <span class="info-box-icon bg-info elevation-1"><i class="nav-icon fas fa-project-diagram"></i></span>
                        <a href="{{url('/admin/view-project')}}">
                        <div class="info-box-content">
                            <span class="info-box-text" style="color: #000;">Project</span>
                            <span class="info-box-number" style="color: #000;">  {{ $project }}</span>
                        </div></a>
                    </div>
                </div>


                <div class="clearfix hidden-md-up"></div>
                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="info-box mb-3">
                            <span class="info-box-icon bg-success elevation-1"><i class="nav-icon fas fa-blog"></i></span>
                            <a href="{{url('/admin/view-blogs')}}">
                            <div class="info-box-content">
                            <span class="info-box-text" style="color: #000;">Blogs</span>
                            <span class="info-box-number" style="color: #000;">{{ $blogs }}</span>
                        </div></a>
                    </div>
                </div>

                <div class="clearfix hidden-md-up"></div>
                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="info-box mb-3">
                        <span class="info-box-icon bg-info elevation-1"><i class="nav-icon fas fa-envelope-open-text"></i></span>
                        <a href="{{url('/admin/view-joinus-enq')}}">
                        <div class="info-box-content">
                            <span class="info-box-text" style="color: #000;">Contact Enquiry</span>
                            <span class="info-box-number" style="color: #000;">{{ $enquiry }} </span>
                        </div></a>
                    </div>
                </div>

                <div class="clearfix hidden-md-up"></div>
                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="info-box mb-3">
                        <span class="info-box-icon bg-gradient-blue elevation-1"><i class="nav-icon fas fa-envelope-open-text"></i></span>
                        <a href="{{url('/admin/view-donateenquiry')}}">
                        <div class="info-box-content">
                            <span class="info-box-text" style="color: #000;">Donate Enquiry</span>
                            <span class="info-box-number" style="color: #000;">{{ $donateenquiry }} </span>
                        </div></a>
                    </div>
                </div>

                <div class="clearfix hidden-md-up"></div>
                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="info-box mb-3">
                        <span class="info-box-icon bg-warning elevation-1"><i class="nav-icon fas fa-exclamation-circle"></i></span>
                        <a href="{{url('/admin/view-ideaenquiry')}}">
                        <div class="info-box-content">
                            <span class="info-box-text" style="color: #000;">Idea Enquiry</span>
                            <span class="info-box-number" style="color: #000;">{{ $ideaenquiry }} </span>
                        </div></a>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
</div>
@endsection