<?php $email = session('adminSession'); ?>
@extends('layouts/adminLayout/admin_design')
@section('content')

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Admin Section</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{ url('/admin-dashboard') }}">Home</a></li>
              <li class="breadcrumb-item active">Admin Section</li>
            </ol>
          </div>
        </div>
      </div>

    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
      @if(Session::has('flash_message_error'))
      <div class="alert alert-dismissible fade show respo mt-1" role="alert">
        <p style="color:#fff;">{!! session('flash_message_error') !!}</p>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      @endif
      @if(Session::has('flash_message_success'))          
            <div class="alert alert-dismissible fade show respo mt-1" role="alert">
              <p style="color:#fff;">{!! session('flash_message_success') !!}</p>
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div><br>
      @endif
        <div class="row">
          <div class="col-md-12">
            <div class="card card-default">
              <div class="card-header">
                <h3 class="card-title">Add Admin</h3>
                <a href="{{ url('/admin/view-admin') }}"><button style="float: right;margin: 3px 3px; background: #2f2f86;" class="btn btn-success btn-xs"><i class="fa fa-eye"></i> View Admins</button></a>
              </div>

              <form method="POST" action="{{ url('admin/add-admin') }}" enctype="multipart/form-data" id="adminForm">@csrf
                <div class="card-body">
      

                  <div class="form-group col-md-8">
                    <label class="required">Email</label>
                    <input type="text" name="email" class="form-control" placeholder="Email" maxlength="50" required>
                  </div>
                  
                  <div class="form-group col-md-8">
                    <label class="required">Password</label>
                    <input type="password" name="password" class="form-control" placeholder="Password" maxlength="50"required>
                  </div>

             

                </div>
                <div class="card-footer ">
                  <button type="submit" class="btn btn-primary">Add Admin</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
@endsection
