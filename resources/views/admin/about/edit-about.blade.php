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
            <h1>About Section</h1>
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
              <li class="breadcrumb-item active">About Section</li>
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
                <h3 class="card-title">Edit About</h3>
                {{-- <a href="{{ url('/admin/view-about') }}"><button style="float: right; margin: 3px 3px;" class="btn btn-success btn-xl"><i class="fa fa-eye"></i> View About</button></a> --}}
              </div>
              <form method="post" action="{{ url('admin/edit-about/'.$about->id) }}" enctype="multipart/form-data" role="form" id="editAbout">
                 {{ csrf_field() }}

                <div class="card-body"> 
                  <div class="row">
                    
                    <div class="form-group col-md-12">
                      <label for="exampleInputEmail1" class="required">Title</label>
                      <input type="text" name="title" class="form-control" id="title" value="{{ $about->title }}" placeholder="Enter Title" required>
                    </div>

                    <div class="form-group col-md-12">
                        <div class="form-group col-md-12">
                        <label class="required">Description</label>
                        <textarea name="description" class="textarea form-control" placeholder="Enter Description" required>{!! $about->description !!}</textarea>
                    </div>  
                  </div>

                  <div class="form-group col-md-12">
                        <label for="exampleInputEmail1" class="required">Image</label>
                        @if(!empty($about->image))
                        <input type="hidden" name="current_image" value="{{ $about->image }}">
                        @endif
                        <small>(Note: Banner size should be less than 500KB)</small>
                        <input type="file" name="image" class="form-control" id="image" value="{{ $about->image }}">
                        <img style="width: 15%;" src="{{ asset('images/backend_images/about/'.$about->image) }}" alt="">
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
