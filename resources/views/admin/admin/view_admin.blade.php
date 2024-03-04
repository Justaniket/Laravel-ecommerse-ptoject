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
            <h1>Admin Section</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{ url('/admin-dashboard') }}">Home</a></li>
              <li class="breadcrumb-item active">Admin Section</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
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
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">View Admin</h3>
                <a href="{{ url('/admin/add-admin') }}"><button style="float: right;margin: 3px 3px; background: #000000;" class="btn btn-success btn-xs"><i class="fa fa-plus"></i> Add Admin</button></a>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>Sr.No</th>
                    <th>Email</th>
                    <th>Status</th>
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>

                @foreach($admin as $row)
                  <tr>
                    <td>{{ $loop->index+1 }}</td>
                    <td>{{ $row->email }}</td>
                    @if($row->email != $email)
                      @if($row->status==1)
                        <td><a href="{{ url('/change-admin-status-zero/'.$row->id) }}"><i class="fas fa-toggle-on"  style="color: #000000; font-size: 20px;" title="Click to inactive"></i></a></td>
                      @else
                        <td><a href="{{ url('/change-admin-status-one/'.$row->id) }}"><i class="fas fa-toggle-off"  style="color: #000000; font-size: 20px;" title="click to active"></i></a></td>
                      @endif
                      @else
                     <td> - </td>
                    @endif
                    <td>
                      @if($row->email != $email)
                      <a id="delAdmin" class="btn btn-default" href="{{ url('/admin/delete-admin/'.$row->id) }}" title="Delete Admin" onclick="return confirm('Are you sure you want to delete this Admin?');"><i class="fa fa-trash" style="color: red;"></i></a>
                      @else
                      -
                      @endif
                    </td>
                  </tr>
                @endforeach

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