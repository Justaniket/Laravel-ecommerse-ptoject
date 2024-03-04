<?php $email = session('frontSession'); ?>
@extends('users.user_design')
@section('content')

  <div class="dashboard-content-wrap">
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
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <!-- <li class="breadcrumb-item"><a href="{{ url('/admin-dashboard') }}">Home</a></li> -->
              <li class="breadcrumb-item active">Project Section</li>
            </ol>
          </div>
        </div>
      </div>
    </section>
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <div class="card card-default">
              <div class="card-header">
                <h3 class="card-title">Edit Section</h3>
         <!--        <a href="{{ url('/admin/view-crop') }}"><button style="float: right; margin: 3px 3px;background:#2f2f86" class="btn btn-success btn-xs"><i class="fa fa-eye"></i> View Section</button></a> -->
              </div>
              <form method="post" action="{{ url('users/edit-project/'.$project->id) }}" enctype="multipart/form-data" role="form"  >
                 {{ csrf_field() }}
                <div class="card-body">
                   <div class="form-group col-md-8">
                    <label for="current_image">Previous project Image</label>
                          <br>
                          @if(!empty($project->image))
                            <input type="hidden" name="current_image" value="{{$project->image}}"> 
                          @endif

                          @if(!empty($project->image))
                          <img style="height: 40%; width: 40%;" src="{{ asset('images/backend_images/project/'.$project->image) }}">
                          @endif
                          <br><br>
                          <label for="current_image">Select New Image </label>
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file" name="image" id="exampleInputFile" accept=".jpeg,.jpg,.png">                      
                      </div>
                    </div>
                        <small>Upload only jpeg jpg and png files(Image size 546*546)</small>
                  </div>
                   <div class="form-group col-md-8">
                    <label for="name" class="required">Project Title</label>
                     <input type="text" name="title" class="form-control" id="link" value="{{ $project->title }}" placeholder="Enter  Name"  required>
                  </div>
                   <div class="form-group col-md-8">
                    <label for="name" class="required">Project Description </label>
                    <textarea type="text" name="description" class="textarea form-control" id="link"  placeholder="Enter Project Description" required>{{ $project->description }}</textarea>
                     {{-- <textarea type="text" name="description" class="form-control textarea" id="link" value="{{ $project->description }}" placeholder="Enter Description"></textarea>   --}}
                  </div>
                  <div class="form-group col-md-8">
                    <label for="name" class="required">Price</label>
                     <input type="text" name="price" class="form-control" id="link" value="{{ $project->price }}" placeholder="Enter Price"  required>
                  </div>
                </div>
                <div class="card-footer ">
                  <button type="submit" class="btn btn-success btn-xs">Update</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
    <script src="{{ asset('plugins/backend_plugins/jquery/jquery.min.js') }}"></script>

    <script>
    $(document).ready(function() {
        $("[name='editbannerForm']").validate({
            ignore: [],
            debug: false,
            rules: {
                title:{
                    required:true,
                },
                descriptions:{
                    required:true,
                    minlength: ,
                    maxlength: ,
                },
                 descriptionhindi:{
                    required:true,
                },
                titlehindi:{
                    required:true,
                    minlength:,
                    maxlength: ,
                },
                image: {
                    accept: 'jpg|png|jpeg',
                },
            },
            messages: {
                image: {
                    accept: 'Please choose valid image',
                },
            }
        });

    });
</script>
@endsection
