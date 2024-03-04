@extends('layouts/frontLayout/front_design')
@section('content')
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
	.error{
		color: red;
		margin-bottom: 0px;
	}
	@media only screen and (max-width: 667px){
		.respo{
			margin-top: 137px;
    		margin-bottom: -30px;
		}
	}
	.required:after{
        content: ' *'!important;
        color: red!important;
    }
</style>
<div class="container mt-2">
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
    <div class="row">		
        <div class="col-lg-6 mx-auto">
            <div >
                <div class="card-body">
                    <h3 class="card-title text-center fs-24 lh-35 pb-4">Trainer login</h3>
                    <form action="{{url('/trainer-login')}}" method="post" id="trainerLogin">@csrf
                        <div class="d-flex flex-wrap align-items-center pb-4">
                        </div>
                        <div class="input-box">
                            <label class="label-text required">Email</label>
                            <div class="form-group">
                                <input class="form-control form--control" type="email" name="email" placeholder="Email " required />
                                <span class="la la-user input-icon"></span>
                            </div>
                        </div>
                        <div class="input-box">
                            <label class="label-text required">Password</label>
                            <div class="form-group">
                                <input class="form-control form--control" type="password" name="password" placeholder="Password" required />
                                <span class="la la-lock input-icon"></span>
                            </div>
                        </div>
                        <div class="btn-box">
                            <div class="d-flex align-items-center justify-content-between pb-4">
                                <a href="{{ url('/forgot-password') }}" class="btn-text">Forgot my password?</a>
                            </div>
                            <button class="btn theme-btn loginBtn" type="submit">Login Account </button>
                            <p class="fs-14 pt-2">Don't have an account? <a href="{{ url('trainer-register') }}" class="text-color hover-underline">Register</a></p>
                        </div><!-- end btn-box -->
                    </form>
                </div><!-- end card-body -->
            </div><!-- end card -->
        </div><!-- end col-lg-7 -->
        <div class="col-lg-6 mx-auto">
            <img src="{{asset('images/frontend_images/login/trainerlogin.jpg')}}" width="100%" height="100%" alt="registerpage">
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