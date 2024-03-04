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
            <h1>Contact Section</h1>
            @if(Session::has('flash_message_error'))
          <div class="alert alert-error alert-block">
              <button type="button" class="close" data-dismiss="alert">×</button> 
                  <strong>{!! session('flash_message_error') !!}</strong>
          </div>
      @endif   
      @if(Session::has('flash_message_success'))
          <div class="alert alert-success alert-block">
              <button type="button" class="close" data-dismiss="alert">×</button> 
                  <strong>{!! session('flash_message_success') !!}</strong>
          </div>
      @endif   
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{ url('/admin-dashboard') }}">Home</a></li>
              <li class="breadcrumb-item active">Contact Section</li>
            </ol>
          </div>
        </div>
      </div>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            
            <div class="card card-default">
              <div class="card-header">
                <h3 class="card-title">Edit Contact</h3>
                {{-- <a href="{{ url('/admin/view-about') }}"><button style="float: right; margin: 3px 3px;" class="btn btn-success btn-xl"><i class="fa fa-eye"></i> View About</button></a> --}}
              </div>
              <form method="post" action="{{ url('admin/edit-contact/'.$contact->id) }}" enctype="multipart/form-data" role="form" id="editAbout">
                 {{ csrf_field() }}

                <div class="card-body"> 
                  <div class="row">
                    
                    <div class="form-group col-md-12">
                      <label for="exampleInputEmail1" class="required">Phone Number</label>
                      <input type="text" name="phone" class="form-control" id="title" value="{{ $contact->phone }}" placeholder="Enter Phone Number" required>
                    </div>

                    <div class="form-group col-md-12">
                        <div class="form-group col-md-12">
                        <label class="required">Email</label>
                        <input name="email" class="form-control" placeholder="Enter Email" value="{{ $contact->email }}" required >
                    </div>  
                  </div>

                  <div class="form-group col-md-12">
                        <div class="form-group col-md-12">
                        <label class="required">Address</label>
                        <input name="address" class="form-control" placeholder="Enter Address" value="{{ $contact->address }}" required>
                    </div>  
                  </div>
            </div>
                <div class="card-footer">
                  <button type="submit" class="btn btn-success">Update</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
@endsection
