@extends('layouts/frontLayout/front_design')
@section('content')
<form action="{{url('user-login')}}" method="POST">@csrf 


<div class="d-flex justify-content-center mt-5 mb-5">
	<div class="mb-3 col-md-4 pt-5 card text-center borderleft">
	  <h3 class=" ">Log in</h3>
	  <label for="exampleInputEmail1" class="form-label five">Email or phone number</label>
	  <input type="email" class="form-control mail mx-auto" name="email" id="exampleInputEmail1" aria-describedby="emailHelp">
  
	  <div class="password-container">
		<label for="exampleInputPassword1" class="form-label five">Password</label>
		<div>
		  <input type="password" class="form-control mail  mx-auto" id="exampleInputPassword1" name="password" />
  </div>
	  </div>
	  <div class="eleven mt-4">
		
		<button type="submit" class="btn btn-success">Log in</button>

	  </div>
	  <h6 class="ten">Or login with</h6>
	  <div class="eight">
		 <h3> <i class="fa-brands"></i></h3>
		<button type="button" class="btn btn-outline-primary face mb-3"> Facebook</button>
  
		<button type="button" class="btn btn-outline-danger mb-3">Google</button>
	  </div>
	  <div class="mb-3">
		<a href="{{url('/user-register')}}">
		<button>
			register
		</button>
	</a>
	  </div>
  
	</div>
  
  </div>
</form>
@endsection