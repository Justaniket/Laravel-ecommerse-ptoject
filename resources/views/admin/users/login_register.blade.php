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
        <div class="col-md-6 login-form-1">
            <h3><b>Login</b></h3>
            <form action="{{ url('/user-login') }}" method="post" id="loginForm" name="loginForm">
            	{{ csrf_field() }}
                <div class="form-group">
                    <input type="email" name="email" class="form-control right" placeholder="Your Email *" required/>
                </div><br><br>
                <div class="form-group">
                    <input type="password" name="password" class="form-control right" placeholder="Your Password *" required/>
                </div><br><br>
                <div class="form-group">
                    <input type="submit" class="btnSubmit" value="Login" style="box-shadow: 0px 5px 15px 0px rgba(46, 47, 45, 0.5); border-radius: 5px;" />
                    {{-- <a href="{{ url('redirect') }}" class="btn btn-primary" style="background: #007bff"><i class="fa fa-google"></i> Login with Google</a> --}}
                </div>
                <div class="form-group">
                    <a href="{{ url('/forgot-password') }}" class="ForgetPwd" style="text-decoration: underline;font-size: 14px;">Forgot Password?</a>
                </div>
            </form>
        </div>
        <div class="col-md-6 login-form-2">
            <h3 style="color: #000"><b>Register</b></h3>
            <p align="center">Don't have account, Create here</p>
           	<form style="margin-top: -30px;" id="registerForm" name="registerForm" action="{{ url('/user-register') }}" method="post">
           		{{ csrf_field() }}
                <div class="form-group">
                    <input type="text" id="name" name="name" class="form-control" placeholder="Name*" required />
                </div>
                <div class="form-group">
                    <input type="email" id="email" name="email" class="form-control" placeholder="Your Email*" required />
                </div>
                <div class="form-group">
                    <input type="password" id="myPassword" name="password" class="form-control" placeholder="Your Password *" required />
                </div>
                <div class="form-group">
                    <input type="submit" class="btnSubmit" value="Signup" style="box-shadow: 0px 5px 15px 0px rgba(46, 47, 45, 0.5); border-radius: 5px;"/>
                    {{-- <a href="{{ url('redirect') }}" class="btn btn-primary" style="background: #007bff"><i class="fa fa-google"></i> Login with Google</a> --}}
                </div>
            </form>
        </div>
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