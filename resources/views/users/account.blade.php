@extends('layouts.frontLayout.front_design')
@section('content')

<section class="page-header padding-tb page-header-bg-1">
    <div class="container">
        <div class="page-header-item d-flex align-items-center justify-content-center">
            <div class="post-content">
                <h3>Account</h3>
                <div class="breadcamp">
                    <ul class="d-flex flex-wrap justify-content-center align-items-center">
						<li><a href="{{ url('/') }}">Home</a></li>
                        <li><a class="active">Account</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="container mt-5">
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
	<div class="tab">
	  <button class="tablinks" onclick="openCity(event, 'accountDetails')" id="defaultOpen"><i class="fa fa-user"></i> Account Details</button>
	  <button class="tablinks" onclick="openCity(event, 'changePwd')"><i class="fa fa-lock"></i> Password</button>
	  <!-- <button class="tablinks" onclick="openCity(event, 'orders')"><i class="fa fa-shopping-cart"></i> Orders</button> -->
	</div>

	<div id="accountDetails" class="tabcontent">
	  <h4> Account Details</h4>
	  <form id="accountForm" name="accountForm" action="{{ url('/account') }}" method="POST">
		  	{{ csrf_field() }}
		  <div class="form-row">
		    <div class="form-group col-md-6">
		      <label for="name">Name</label>
		      <input type="text" name="name" class="form-control" id="name" value="{{ $userDetails->name }}">
		    </div>
		    <div class="form-group col-md-6">
		      <label for="inputEmail4">Email</label>
		      <input type="email" class="form-control" id="inputEmail4" value="{{ $userDetails->email }}" disabled="">
		    </div>
		  </div>
		  <div class="form-row">
		    <div class="form-group col-md-6">
		      <label for="mobile">Mobile</label>
		      <input type="text" class="form-control" id="mobile" value="{{ $userDetails->mobile }}" name="mobile">
		    </div>
		    <div class="form-group col-md-6">
		      <label for="Address">Address</label>
		      <input type="text" class="form-control" name="address" id="address" value="{{ $userDetails->address }}">
		    </div>
		  </div>
		  <div class="form-row">
		    <div class="form-group col-md-3">
		      <label for="city">City</label>
		      <input type="text" class="form-control" id="city" value="{{ $userDetails->city }}" name="city">
		    </div>
		    <div class="form-group col-md-3">
		      <label for="state">State</label>
		      <input type="text" class="form-control" id="state" value="{{ $userDetails->state }}" name="state">
		    </div>
		    <div class="form-group col-md-4">
		      <label for="country">Country</label>
		      <select id="country" class="form-control" name="country">
		        <option value="">Select Country</option>
		        @foreach($countries as $country)
		        <option value="{{ $country->country_name }}" @if($country->country_name == $userDetails->country) selected @endif>{{ $country->country_name }}</option>
		        @endforeach
		      </select>
		    </div>
		    <div class="form-group col-md-2">
		      <label for="pincode">Pincode</label>
		      <input type="text" class="form-control" id="pincode" value="{{ $userDetails->pincode }}" name="pincode">
		    </div>
		  </div>

		  <button type="submit" class="btn btn-success" style="border: none;">Update</button>
	  </form>
	</div>

	<div id="changePwd" class="tabcontent">
	  <h4>Change Password</h4>
	  <form id="passwordForm" name="passwordForm" action="{{ url('/update-user-pwd') }}" method="POST">
		  	{{ @csrf_field() }}
		  <div class="form-row">
		    <div class="form-group col-md-6">
		      <label for="current_pwd">Current Password</label>
		      <input type="password" name="current_pwd" class="form-control" id="current_pwd">
		      <span id="chkPwd"></span>
		    </div>
		  </div>
		  <div class="form-row">
		    <div class="form-group col-md-6">
		      <label for="new_pwd">New Password</label>
		      <input type="password" class="form-control" id="new_pwd" name="new_pwd" required>
		    </div>
		    <div class="form-group col-md-6">
		      <label for="confirm_pwd">Confirm Password</label>
		      <input type="password" class="form-control" name="confirm_pwd" id="confirm_pwd" required>
		    </div>
		    <span id='message'></span>
		  </div>
		  <button type="submit" class="btn">Update</button>
	  </form>
	</div>

	<!-- <div id="orders" class="tabcontent">
	  <h3>Orders</h3>
	  <p>My Orders</p>
	</div> -->
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<script type="text/javascript">
    $('#new_pwd, #confirm_pwd').on('keyup', function () {
	  if ($('#new_pwd').val() == $('#confirm_pwd').val()) {
	    $('#message').html('<h6 style="font-size: 13px !important;">Password Match.</h6>').css('color', 'green');
	  } else 
	    $('#message').html('<h6 style="font-size: 13px !important;">Please enter confirm password same as new password.</h6>').css('color', 'red');
	});
</script>

<script>
	function openCity(evt, cityName) {
	  var i, tabcontent, tablinks;
	  tabcontent = document.getElementsByClassName("tabcontent");
	  for (i = 0; i < tabcontent.length; i++) {
	    tabcontent[i].style.display = "none";
	  }
	  tablinks = document.getElementsByClassName("tablinks");
	  for (i = 0; i < tablinks.length; i++) {
	    tablinks[i].className = tablinks[i].className.replace(" active", "");
	  }
	  document.getElementById(cityName).style.display = "block";
	  evt.currentTarget.className += " active";
	}

	// Get the element with id="defaultOpen" and click on it
	document.getElementById("defaultOpen").click();
</script>

<style>
	* {box-sizing: border-box}

	/* Style the tab */
	.tab {
	  float: left;
	  border: 1px solid #ccc;
	  background-color: #f1f1f1;
	  width: 30%;
	  height: 300px;
	}

	/* Style the buttons inside the tab */
	.tab button {
	  display: block;
	  background-color: inherit;
	  color: black;
	  padding: 22px 16px;
	  width: 100%;
	  border: none;
	  outline: none;
	  text-align: left;
	  cursor: pointer;
	  transition: 0.3s;
	  font-size: 17px;
	}

	/* Change background color of buttons on hover */
	.tab button:hover {
	  background-color: #ddd;
	}

	/* Create an active/current "tab button" class */
	.tab button.active {
	  background-color: #ccc;
	}

	/* Style the tab content */
	.tabcontent {
	  float: left;
	  padding: 0px 12px;
	  border: 1px solid #ccc;
	  width: 70%;
	  border-left: none;
	  height: 350px;
	}
</style>
@endsection