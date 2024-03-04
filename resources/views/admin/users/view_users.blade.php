<?php $email = session('adminSession'); ?>
@extends('layouts/adminLayout/admin_design')
@section('content')

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>All Customers</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{ url('/admin-dashboard') }}">Home</a></li>
              <li class="breadcrumb-item active">Customers Section</li>
            </ol>
          </div>
        </div>
      </div>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">

              @if(Session::has('flash_message_error'))
                    <div class="alert alert-dismissible fade show respo" role="alert" style="background-color: #CC9966;display: none;">
                      <p style="color:#fff;">{!! session('flash_message_error') !!}</p>
                      <button type="button" id="btn" onclick="fire()" class="btn btn-success toastrDefaultError"></button>
                    </div>
                @endif
              @if(Session::has('flash_message_success'))
                    <div class="alert alert-dismissible fade show respo" role="alert" style="background-color: #CC9966; display: none;">
                      <p style="color:#fff;">{!! session('flash_message_success') !!}</p>
                      <button type="button" id="btn" onclick="fire()" class="btn btn-success toastrDefaultSuccess"></button>
                      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div><br>
              @endif
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">View All Customers</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>Sr.No</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Status</th>
                    <th>Action</th>
                    <th>Registered On</th>
                  </tr>
                  </thead>
                  <tbody>

                @foreach($users as $row)
                  <tr>
                    <td>{{ $loop->index+1 }}</td>

                    <td style="text-align:justify;text-justify: inter-word"><img style="height: 30px; width: 30px; border-radius: 50px;" src="{{ asset('images/frontend_images/users/'.$row->image) }}"> {{ $row->name }}</td>
                    <td style="justify-content: center;">{{ $row->email }}</td>
                    <td>{{ $row->mobile }}</td>
                   <td>
                    @if($row->status==1)
                      <span class="badge badge-danger"><a href="{{ url('/chnage-user-status-zero/'.$row->id) }}" title="Block User" onclick="return confirm('Are you sure you want to block this User?');"style="color: #000;"> Block </a></span>
                    @else
                      <span class="badge badge-success"><a href="{{ url('/chnage-user-status-one/'.$row->id) }}" title="Unblock User" onclick="return confirm('Are you sure you want to unblock this User?');"style="color: #000;"> Unblock </a></span>
                    @endif
                  </td>
                  <td>
                    <a href="{{ url('/admin/edit-user/'.$row->id) }}" title="Edit User Information"><i class="fa fa-edit" style="color: #4a4848;"></i></a>&nbsp;&nbsp;

                    <a href="{{ url('/admin/delete-user/'.$row->id) }}" title="Delete User" onclick="return confirm('Are you sure you want to delete this User?');"><i class="fa fa-trash" style="color: #4a4848;"></i></a>

                  </td>
                    <td>
                     {{ date_format($row->created_at, 'd-M-Y H:i A') }}

                    </td>
                  </tr>
                @endforeach
                </table>
              </div>          
            </div>        
          </div>      
        </div>    
      </div>  
    </section>
  </div>
@endsection