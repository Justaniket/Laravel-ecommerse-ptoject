<?php $email = session('adminSession'); ?>
@extends('layouts/adminLayout/admin_design')
@section('content')

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Customer Section</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{ url('/admin-dashboard') }}">Home</a></li>
              <li class="breadcrumb-item active">Customer Section</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            
            <div class="card card-default">
              <div class="card-header">
                <h3 class="card-title">Update Customer Information</h3>
                <a href="{{ url('/admin/view-users') }}"><button style="float: right; margin: 3px 3px;" class="btn btn-default btn-xs"><i class="fa fa-eye"></i> View Users</button></a>
              </div>
              <form method="post" action="{{ url('admin/edit-user/'.$userDetails->id) }}" enctype="multipart/form-data" role="form" id="adminForm">
                 {{ csrf_field() }}

                <div class="card-body">


                  <div class="form-group col-md-10">
                    <label for="exampleInputEmail1" class="required">Customer Name</label>
                     <input type="text" name="name" class="form-control" id="name" value="{{ $userDetails->name }}" placeholder="Enter User Name" required>
                  </div>

                  <div class="form-group col-md-10">
                    <label for="exampleInputEmail1">Email</label>
                     <input type="email" name="email" class="form-control" id="email" value="{{ $userDetails->email }}" placeholder="Enter User Name" readonly>
                  </div>


                  <div class="form-group col-md-10">
                    <label for="exampleInputEmail1" class="required">Mobile</label>
                     <input type="text" name="mobile" class="form-control" id="mobile" value="{{ $userDetails->mobile }}" placeholder="Enter User Mobile" required>
                  </div>
                   <div class="form-group col-md-10">
                     <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck2"  value="1" @if($userDetails->status == '1') checked @endif name="status" @if($userDetails->status == '1') title="User is active" @else title="User is inactive" @endif>
                            <label class="form-check-label" for="exampleCheck2">@if($userDetails->status == '1') Active @else Inactive @endif</label>
                        </div>
                  </div> 
                </div>

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Update</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
@endsection
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>
  $(document).ready(function () {
  //called when key is pressed in textbox
  $("#price").keypress(function (e) {
     //if the letter is not digit then display error and don't type anything
     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
        //display error message
        $("#errmsg").html("Digits Only").show().fadeOut("slow");
               return false;
    }
   });
});
</script>