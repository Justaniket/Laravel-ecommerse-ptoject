<?php $email = session('adminSession'); ?> 
@extends('layouts/adminLayout/admin_design')
 @section('content') 
 <div class="content-wrapper">
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Testimonials Section</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item">
              <a href="{{ url('/admin-dashboard') }}">Home</a>
            </li>
            <li class="breadcrumb-item active">Testimonials Section </li>
          </ol>
        </div>
      </div>
    </div>
  </section>
  <section class="content">
    <div class="container-fluid"> @if(Session::has('flash_message_error')) <div class="alert alert-error alert-block">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong>{!! session('flash_message_error') !!}</strong>
      </div> @endif @if(Session::has('flash_message_success')) <div class="alert alert-success alert-block">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong>{!! session('flash_message_success') !!}</strong>
      </div> @endif <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-header">
              {{-- <h3 class="card-title">About  Details</h3> --}}
            </div>
            <!-- Main content -->
            <section class="content">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-12">
                    <div class="card">
                      <div class="card-header">
                        {{-- <h3 class="card-title">View About</h3> --}}
                        <a href="{{ url('/admin/add-testimonials') }}">
                          <button style="float: right; margin: 3px 3px;" class="btn btn-success btn-xl">
                            <i class="fa fa-plus"></i> Add </button>
                        </a>
                      </div>
                      <!-- /.card-header -->
                      <div class="card-body">
                        <table id="example1" class="table table-bordered table-striped" style="overflow-x: auto;">
                          <thead>
                            <tr>
                              <th>Sr.No</th>
                              <th>Image</th>
                              <th>Name</th>
                              <th>Company Name</th>
                              <th>Testimonials Description</th>
                              <th>Update At</th>
                              <th>Action</th>
                            </tr>
                          </thead>
                          <tbody> @foreach($testimonials as $row) 
                            <tr>
                              <td>{{ $loop->index+1 }}</td>
                              <td>
                                <a href="{{ asset('images/backend_images/testimonials/'.$row->image) }}">
                                  <img src="{{ asset('images/backend_images/testimonials/'.$row->image) }}" width="100px">
                                </a>
                              </td>
                              <td>{{ $row->name }}</td>
                              <td>{!! $row->companyname !!}</td>
                              <td>{!! Str::limit($row->description,80)!!}</td>
                              <td>{{date('d F Y', strtotime($row->updated_at)) }}</td>
                              <td>
                                <a class="btn btn-default" id="editAbout" href="{{ url('/admin/edit-testimonials/'.$row->id) }}" title="Edit About">
                                  <i class="fa fa-edit" style="color: #000;"></i>
                                </a> &nbsp;&nbsp; <a class="btn btn-danger" onclick="return confirm('Are you sure?')" href="{{ url('/admin/delete-testimonials/'.$row->id) }}">
                                  <i class="fa fa-trash"></i>
                                </a> &nbsp;
                              </td>
                            </tr> @endforeach
                        </table>
                      </div>
                      <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                  </div>
                  <!-- /.col -->
                </div>
                <!-- /.row -->
              </div>
              <!-- /.container-fluid -->
            </section>
            <!-- /.content -->
          </div>
     @endsection