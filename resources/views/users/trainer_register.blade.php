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
            <div class="col-lg-12 mx-auto">
                 <div class="card card-item">
                    <div class="card-body">
                        <h3 class="card-title text-center fs-24 lh-35 pb-4">Trainer register</h3>
                        <form action="{{ url('trainer-register') }}" method="post" id="trainerReg" class="row">@csrf
                            <div class="input-box col-lg-6">
                                <label class="label-text required">Full Name</label>
                                <div class="form-group ">
                                    <input class="form-control form--control " type="text" name="name"  placeholder="Full Name" required>
                                    <span class="la la-user input-icon"></span>
                                </div>
                            </div><!-- end input-box -->
                            <div class="input-box col-lg-6">
                                <label class="label-text required">Date Of Birth</label>
                                <div class="form-group">
                                    <input class="form-control form--control " type="date" name="date" placeholder="Date Of Birth"  required="required">
                                    <span class="la la-calendar input-icon"></span>
                                </div>
                            </div><!-- end input-box -->
                            <div class="input-box col-lg-6">
                                <label class="label-text required">Nationality</label>
                                <div class="form-group">
                                    <input class="form-control form--control" type="text" name="nationality" placeholder="Nationality" required="required">
                                    <span class="la la-address-card input-icon"></span>
                                </div>
                            </div><!-- end input-box -->
                            <div class="input-box col-lg-6">
                                <label class="label-text required">Registration For</label>
                                <div class="form-group">
                                    <select name="registration" class="select-control form-control" title="Please select services" required="required">
                                        <option value="">-- Please select Services --</option>
                                        <option value="yuva Program">-- yuva Program --</option>    
                                        <option value="Industry Traning Progarm">Industry Traning Progarm</option>
                                        <option value="Industry Orientation Progarm">Industry Orientation Progarm</option>
                                        <option value="Industry Acceleration programs">-- Industry Acceleration programs --</option>
                                        <option value="Continual Improvement Package">Continual Improvement Package</option>
                                        <option value="Quality Improvement Package">Quality Improvement Package</option>
                                        <option value="Operations Improvement Package">Operations Improvement Package</option>
                                        <option value="Change Management Package">Change Management Package</option>
                                        <option value="Operator Boost Programs">Operator Boost Programs</option>
                                        <option value="EMS Boot Camp">EMS Boot Camp</option>
                                        <option value="Job Oriented Training programs">Job Oriented Training programs</option>
                                        <option value="Cyber security">--Cyber security--</option>
                                        <option value="EMS Consultancy">--EMS Consultancy--</option>
                                        <option value="Psychology Consultation">--Psychology Consultation--</option>
                                        <option>Other</option>
                                    </select> 
                                </div>
                            </div><!-- end input-box -->
                            <div class="input-box col-lg-6">
                                <label class="label-text required">Upload Photo</label>
                                <div class="form-group">
                                    <input class="form-control form--control" type="file" name="photo" placeholder="Upload Photo" required>
                                    <span class="la la-image input-icon"></span>
                                </div>
                            </div><!-- end input-box -->
                            <div class="input-box col-lg-6">
                                <label class="label-text required">Upload Resume</label>
                                <div class="form-group">
                                    <input class="form-control form--control" type="file" name="resume" placeholder="Upload Resume" required>
                                    <span class="la la-upload input-icon"></span>
                                </div>
                            </div><!-- end input-box -->
                            <div class="input-box col-lg-6">
                                <label class="label-text required">Preferable Days Of Training</label>
                                <div class="form-group">
                                    <input class="form-control form--control" type="number" name="days" placeholder="Preferable days of training" required="required">
                                    <span class="la la-calendar input-icon"></span>
                                </div>
                            </div><!-- end input-box -->
                            <div class="input-box col-lg-6">
                                <label class="label-text required">Current Residence</label>
                                <div class="form-group">
                                    <input class="form-control form--control" type="text" name="residence" placeholder="Current residence" required="required">
                                    <span class="la la-address-card input-icon"></span>
                                </div>
                            </div><!-- end input-box -->
                            <div class="input-box col-lg-6">
                                <label class="label-text required">District</label>
                                <div class="form-group">
                                    <input class="form-control form--control" type="text" name="district" placeholder="District" required="required">
                                    <span class="la la-address-card input-icon"></span>
                                </div>
                            </div><!-- end input-box -->
                            <div class="input-box col-lg-6">
                                <label class="label-text required">State</label>
                                <div class="form-group">
                                    <input class="form-control form--control" type="text" name="state" placeholder="State" required="required">
                                    <span class="la la-address-card input-icon"></span>
                                </div>
                            </div><!-- end input-box -->
                            <div class="input-box col-lg-6">
                                <label class="label-text required">Mobile Number</label>
                                <div class="form-group">
                                    <input class="form-control form--control" type="number" name="mobile" placeholder="Enter Mobile Number" required>
                                    <span class="la la-phone input-icon"></span>
                                </div>
                            </div><!-- end input-box -->
                            <div class="input-box col-lg-6">
                                <label class="label-text required">Email Address</label>
                                <div class="form-group">
                                    <input class="form-control form--control" type="email" name="email"  placeholder="Email Address" title="Please Enter Email Address." required>
                                    <span class="la la-envelope input-icon"></span>
                                </div>
                            </div><!-- end input-box -->
                            <div class="input-box col-lg-12">
                                <label class="label-text required">Password</label>
                                <div class="form-group mb-3">
                                    <span class="la la-lock input-icon"></span>
                                    <input class="form-control form--control" type="password" name="password" placeholder="Password" required="required">
                                </div>
                            </div>
                            
                            <div class="btn-box">
                                <button class="btn theme-btn" type="submit">Register Account </button>
                                {{-- <p class="fs-14 pt-2">Already have an account? <a href="login.html" class="text-color hover-underline">Log in</a></p> --}}
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