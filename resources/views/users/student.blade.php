@extends('layouts/frontLayout/front_design')
@section('content')
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
	.error{
		font-size: 12px;
		color: red;
		margin-bottom: 0px;
	}
	@media only screen and (max-width: 667px){
		.respo{
			margin-top: 137px;
    		margin-bottom: -30px;
		}
	}
</style>
<div class="container login-container">

	@if(Session::has('flash_message_error'))
	<div class="alert alert-danger alert-dismissible fade show respo" role="alert">
	  <strong>{!! session('flash_message_error') !!}</strong>
	  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
	    <span aria-hidden="true">&times;</span>
	  </button>
	</div>
	@endif
	@if(Session::has('flash_message_success'))			
	<div class="alert alert-success alert-dismissible fade show respo" role="alert">
	  <strong>{!! session('flash_message_success') !!}</strong>
	  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
	    <span aria-hidden="true">&times;</span>
	  </button>
	</div>
	@endif
	
    <div class="row" style="margin-top: 50px;">		
            <div class="col-lg-6 mx-auto">
                <div class="card card-item">
                    <div class="card-body">
                        <h3 class="card-title text-center fs-24 lh-35 pb-4">Student Login to Your Account!</h3>
                        <div class="section-block"></div>
                        <form action="{{url('dashboard')}}" method="post" class="pt-4">@csrf
                            <div class="input-box">
                                <label class="label-text">Email or Username</label>
                                <div class="form-group">
                                    <input class="form-control form--control" type="text" name="name" placeholder="Email or Username">
                                    <span class="la la-user input-icon"></span>
                                </div>
                            </div><!-- end input-box -->
                            <div class="input-box">
                                <label class="label-text">Password</label>
                                <div class="input-group mb-3">
                                    <span class="la la-lock input-icon"></span>
                                    <input class="form-control form--control password-field" type="password" name="password" placeholder="Password">
                                    <div class="input-group-append">
                                        <button class="btn theme-btn theme-btn-transparent toggle-password" type="button">
                                            <svg class="eye-on" xmlns="http://www.w3.org/2000/svg" height="22px" viewBox="0 0 24 24" width="22px" fill="#7f8897"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 6c3.79 0 7.17 2.13 8.82 5.5C19.17 14.87 15.79 17 12 17s-7.17-2.13-8.82-5.5C4.83 8.13 8.21 6 12 6m0-2C7 4 2.73 7.11 1 11.5 2.73 15.89 7 19 12 19s9.27-3.11 11-7.5C21.27 7.11 17 4 12 4zm0 5c1.38 0 2.5 1.12 2.5 2.5S13.38 14 12 14s-2.5-1.12-2.5-2.5S10.62 9 12 9m0-2c-2.48 0-4.5 2.02-4.5 4.5S9.52 16 12 16s4.5-2.02 4.5-4.5S14.48 7 12 7z"/></svg>
                                            <svg class="eye-off" xmlns="http://www.w3.org/2000/svg" height="22px" viewBox="0 0 24 24" width="22px" fill="#7f8897"><path d="M0 0h24v24H0V0zm0 0h24v24H0V0zm0 0h24v24H0V0zm0 0h24v24H0V0z" fill="none"/><path d="M12 6c3.79 0 7.17 2.13 8.82 5.5-.59 1.22-1.42 2.27-2.41 3.12l1.41 1.41c1.39-1.23 2.49-2.77 3.18-4.53C21.27 7.11 17 4 12 4c-1.27 0-2.49.2-3.64.57l1.65 1.65C10.66 6.09 11.32 6 12 6zm-1.07 1.14L13 9.21c.57.25 1.03.71 1.28 1.28l2.07 2.07c.08-.34.14-.7.14-1.07C16.5 9.01 14.48 7 12 7c-.37 0-.72.05-1.07.14zM2.01 3.87l2.68 2.68C3.06 7.83 1.77 9.53 1 11.5 2.73 15.89 7 19 12 19c1.52 0 2.98-.29 4.32-.82l3.42 3.42 1.41-1.41L3.42 2.45 2.01 3.87zm7.5 7.5l2.61 2.61c-.04.01-.08.02-.12.02-1.38 0-2.5-1.12-2.5-2.5 0-.05.01-.08.01-.13zm-3.4-3.4l1.75 1.75c-.23.55-.36 1.15-.36 1.78 0 2.48 2.02 4.5 4.5 4.5.63 0 1.23-.13 1.77-.36l.98.98c-.88.24-1.8.38-2.75.38-3.79 0-7.17-2.13-8.82-5.5.7-1.43 1.72-2.61 2.93-3.53z"/></svg>
                                        </button>
                                    </div>
                                </div>
                            </div><!-- end input-box -->
                            <div class="btn-box">
                                <div class="d-flex align-items-center justify-content-between pb-4">
                                    <a href="{{ url('/forgot-password') }}" class="btn-text">Forgot my password?</a>
                                </div>
                                <button class="btn theme-btn" type="submit">Login Account <i class="la la-arrow-right icon ml-1"></i></button>
                            </div><!-- end btn-box -->
                        </form>
                    </div><!-- end card-body -->
                </div><!-- end card -->
            </div><!-- end col-lg-7 -->
    </div>
</div>

<style>
	.right{
		float: right;
	}
	.login-container{
	    margin-top: 10%;
	}
	.login-form-1{
	    padding: 3%;
	    box-shadow: 0 5px 8px 0 rgba(0, 0, 0, 0.2), 0 9px 26px 0 rgba(0, 0, 0, 0.19);
	}
	.login-form-1 h3{
	    text-align: center;
	    color: #333;
	}
	.login-form-2{
	    padding: 3%;
	    /*background: #0062cc;*/
	    background-color: #00cc2c85;
    	/*background-image: url(images/frontend_images/register.jpg);*/
    	background-size: cover;
    	/*background-blend-mode: multiply;*/
	    box-shadow: 0 5px 8px 0 rgba(0, 0, 0, 0.2), 0 9px 26px 0 rgba(0, 0, 0, 0.19);
	}
	.login-form-2 h3{
	    text-align: center;
	    color: #fff;
	}
	.login-container form{
	    /*padding: 10%;*/
	    padding: 20px 20px 20px 20px;
	}
	.btnSubmit
	{
	    width: 50%;
	    border-radius: 1rem;
	    padding: 1.5%;
	    border: none;
	    cursor: pointer;
	}
	.login-form-1 .btnSubmit{
	    font-weight: 600;
	    color: #fff;
	    background-color: #00cc2c85;
	}
	.login-form-2 .btnSubmit{
	    font-weight: 600;
	    color: #000;
	    background-color: #fff;
	}
	.login-form-2 .ForgetPwd{
	    color: #fff;
	    font-weight: 600;
	    text-decoration: none;
	}
	.login-form-1 .ForgetPwd{
	    color: #0062cc;
	    font-weight: 600;
	    text-decoration: none;
}
</style>
<script>
	$(document).ready(function(){
		$('#myPassword').passtrength({
	      minChars: 6,
	      passwordToggle: true,
	      tooltip: true,
	      eyeImg : "images/frontend_images/eye.svg"
	    });
	});
</script>

@endsection