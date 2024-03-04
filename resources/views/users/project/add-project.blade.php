<?php $email = session('frontSession'); ?>
@extends('users.user_design')
@section('content')

  <!-- Content Wrapper. Contains page content -->
  <div class="dashboard-content-wrap">
    <!-- Content Header (Page header) -->
    <section class="content-header">
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
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Project Section</h1>
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

                
              <form method="POST" action="{{ url('users/add-project') }}" enctype="multipart/form-data" id="bannerForm" name="bannerForm">@csrf
                <div class="card-body">
                    <div class="form-group col-md-8">
                      <label class="required">Please Select User</label>
                      <select name="user_id" class="select-control form-control" required="required">
                          <option value="">-- Please Select User --</option>
                          @foreach($user as $cat)    
                          <option value="{{$cat->id}}" @if(Auth::check() && Auth::User()->id == $cat->id) selected @endif>{{$cat->name}}</option>
                          @endforeach
                      </select>
                    </div>
                    <div class="form-group col-md-8">
                      <label class="required">Please Upload Project Image</label>
                       <input type="file" class="form-control" name="image" accept=".jpeg, .jpg,.png" required="true">
                           <small>Upload only jpeg jpg and png files(Image size 546*546)</small>
                           <small>Note: Upload Only jpeg jpg and png images</small>
                    </div>
                        
                    <div class="form-group col-md-8">
                        <label class="required">Project Title</label>
                        <input type="text" class="form-control" name="title" id="title"  required />
                      <!--   <textarea  id="description" name="description" required ></textarea> -->
                    </div>
                    
                    <div class="form-group col-md-8">
                        <label class="required">Project Description</label>
                        <textarea type="text" class="form-control textarea" name="description" id="title"  required></textarea>
                      <!--   <textarea  id="description" name="description" required ></textarea> -->
                    </div>

                    <div class="form-group col-md-8">
                        <label class="required">Price</label>
                        <input type="text" class="form-control" name="price" id="title"  required />
                      <!--   <textarea  id="description" name="description" required ></textarea> -->
                    </div>
                </div>
                <div class="card-footer ">
                  <button type="submit" class="btn btn-success btn-xs">Add</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

<script src="{{ url('customJquery/jquery.handle.image.js'); }}"></script>
<script> $('.input-images-1').imageUploader();</script>
<script src="{{ asset('plugins/backend_plugins/jquery/jquery.min.js') }}"></script>

<script>
    $(document).ready(function() {
        $("[name='bannerForm']").validate({
            ignore: [],
            debug: false,
            rules: {
                name:{
                    required:true,
                    minlength: 5,
                    maxlength: 40,
                },
                title:{
                    required:true,
                    minlength: ,
                    maxlength: ,
                },
                 namehindi:{
                    required:true,
                    minlength: 5,
                    maxlength: 40,
                },
                titlehindi:{
                    required:true,
                    minlength: 5,
                    maxlength: 40,
                },
                project_image: {
                    required: true,
                    accept: 'jpg|jpeg|png',
                },
            },
            messages: {
                project_image: {
                    accept: 'Please choose valid image',
                },
            }
        });

    });
</script>
@endsection
