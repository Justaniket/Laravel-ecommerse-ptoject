@extends('layouts.frontLayout.front_design')
@section('content')

<section class="breadcrumb-area section-padding img-bg-2">
    <div class="overlay-bg"></div>
    <div class="container">
        <div class="breadcrumb-content d-flex flex-wrap align-items-center justify-content-between">
            <div class="section-heading">
                <h2 class="section__title text-white">Projects Details</h2>
            </div>
            <ul class="generic-list-item generic-list-item-white generic-list-item-arrow d-flex flex-wrap align-items-center">
                <li><a href="{{url('/')}}">Home</a></li>
                <li>Projects Details</li>
            </ul>
        </div>
    </div>
</section>

<!-- 
<section class="blog-area pt-50px pb-50px">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 mb-5">
                <div class="card card-item">
                    <div class="card-body">
                        <h3 class="fs-18 font-weight-semi-bold pt-3">{{$projects->title}}</h3>
                        <p class="card-text pb-3">{{$projects->description}}</p>
                    </div>
                </div>
            </div> 
        </div>
    </div>
</section> -->

<section class="blog-area pt-100px pb-100px">
    <div class="container">
        @if(Session::has('flash_message_success'))
            <div class="alert alert-success alert-block">
                <button type="button" class="close float-end" data-dismiss="alert">×</button>
                <strong>{!! session('flash_message_success') !!}</strong>
            </div>
        @endif
        <div class="row">
            <div class="col-lg-8 mb-5">
                <div class="col-lg-12">
                    <img src="{{asset('images/backend_images/project/'.$projects->image)}}" data-src="{{asset('images/backend_images/project/'.$projects->image)}}" alt="blog-img" class="img-fluid rounded-rounded lazy" style="width: 100%; height: 100%;">
                </div><!-- end col-lg-6 -->
                <div class="job-details-panel mb-30px">
                    <h3 class="fs-20 pb-3 font-weight-bold mt-5">Project Title</h3>
                    <p class="pb-3">{{$projects->title}}</p>
                </div><!-- end job-details-panel -->
                <div class="job-details-panel mb-30px">
                    <h3 class="fs-20 pb-3 font-weight-bold text-justify">Project Description</h3>
                    <p class="pb-3 text-justify">{{$projects->description}}</p>
                </div><!-- end job-details-panel -->
            </div><!-- end col-lg-8 -->
            <div class="col-lg-4">
                <h3 class="fs-24 font-weight-semi-bold pb-2">Enquiry for Pojects</h3>
                        <div class="divider"><span></span></div>
                        <form method="post" action="{{url('projectenquiry')}}" id="projectPage">@csrf
                            <div class="input-box">
                                <label class="label-text required">Your Name</label>
                                <div class="form-group">
                                    <input class="form-control form--control" type="text" name="name" placeholder="Your name" required>
                                    <span class="la la-user input-icon"></span>
                                </div>
                            </div><!-- end input-box -->
                            <div class="input-box">
                                <label class="label-text required">Your email</label>
                                <div class="form-group">
                                    <input class="form-control form--control" type="email" name="email" placeholder="Your email" required>
                                    <span class="la la-envelope input-icon"></span>
                                </div>
                            </div><!-- end input-box -->
                            <div class="input-box">
                                <label class="label-text required">Phone Number</label>
                                <div class="form-group">
                                    <input class="form-control form--control" type="text" name="mobile" placeholder="Your phone number" required>
                                    <span class="la la-user input-icon"></span>
                                </div>
                            </div><!-- end input-box -->
                            <div class="input-box">
                                <label class="label-text required">Message</label>
                                <div class="form-group">
                                    <textarea class="form-control form--control pl-4" name="comment" rows="3" placeholder="Write message" required></textarea>
                                </div>
                            </div><!-- end input-box -->
                            <div class="input-box">
                                <div class="g-recaptcha" data-sitekey="6LcmcNoiAAAAAOzl63vhZ_16fhQN-u4VfSmLRGN2"></div>
                            </div>
                            <div class="btn-box pt-2">
                                @if(Auth::check() && Auth::User()->id == $projects->user_id)
                                <button class="btn theme-btn disable" type="button">Send Message <i class="la la-arrow-right icon ml-1"></i></button>
                                @else
                                <button class="btn theme-btn proBtn"  value='Submit Form' type="submit">Send Message <i class="la la-arrow-right icon ml-1"></i></button>
                                @endif
                            </div><!-- end btn-box -->
                        </form>    
            </div><!-- end col-lg-4 -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end blog-area -->

@endsection