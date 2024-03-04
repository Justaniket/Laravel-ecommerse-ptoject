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
            <h1>Testimonials Section</h1>
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
              <li class="breadcrumb-item active">Testimonials Section</li>
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
                <h3 class="card-title">Edit </h3>
                {{-- <a href="{{ url('/admin/view-about') }}"><button style="float: right; margin: 3px 3px;" class="btn btn-success btn-xl"><i class="fa fa-eye"></i> View About</button></a> --}}
              </div>
              <form method="post" action="{{ url('admin/edit-testimonials/'.$testimonials->id) }}" enctype="multipart/form-data" role="form" id="editAbout">
                 {{ csrf_field() }}

                <div class="card-body"> 
                  <div class="row">
                    
                    <div class="form-group col-md-10">
                      <label for="exampleInputEmail1" class="required">Name</label>
                      <input type="text" name="name" class="form-control" id="title" value="{{ $testimonials->name }}" placeholder="Enter Name" required>
                    </div>

                    <div class="form-group col-md-10">
                      <label for="exampleInputEmail1" class="required">Company Name</label>
                      <input type="text" name="companyname" class="form-control" id="title" value="{{ $testimonials->companyname }}" placeholder="Enter Company Name" required>
                    </div>

                    <div class="form-group col-md-10">
                      <label for="exampleInputEmail1" class="required">Testimonials Description</label>
                      <textarea name="description" class="form-control textarea" value="{{ $testimonials->description }}" placeholder="Enter Testimonials Description">{{ $testimonials->description }}</textarea>
                    </div>
                    
                  <div class="form-group col-md-12">
                        <label for="exampleInputEmail1" class="required">Image</label>
                        @if(!empty($testimonials->image))
                        <input type="hidden" name="current_image" value="{{ $testimonials->image }}">
                        @endif
                        <small>(Note: Banner size should be less than 500KB)</small>
                        <input type="file" name="image" class="form-control" id="image" value="{{ $testimonials->image }}">
                        <img style="width: 15%;" src="{{ asset('images/backend_images/testimonials/'.$testimonials->image) }}" alt="">
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
