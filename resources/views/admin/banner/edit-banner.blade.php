@extends('layouts/adminLayout/admin_design')
@section('content')

<div class="content-wrapper">
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Banner Section</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{ url('/admin-dashboard') }}">Home</a></li>
            <li class="breadcrumb-item active">Banner Section</li>
          </ol>
        </div>
      </div>
    </div>
  </section>

  <section class="content">
    <div class="container-fluid">
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
      <div class="row">
        <div class="col-md-12">
          <div class="card card-default">
            <div class="card-header">
              <h3 class="card-title">Edit Banner</h3>
              {{-- <a href="{{ url('/admin/view-banner') }}"><button style="float: right; margin: 3px 3px; background:#28a745;" class="btn btn-success btn-xl"><i class="fa fa-eye"></i> View Banners</button></a> --}}
            </div>
            <form method="POST" action="{{ url('admin/edit-banner/'.$banner->id) }}" enctype="multipart/form-data" id="editbannerForm">@csrf
                <div class="card-body">
                    <div class="form-group col-md-10">
                        <label class="required">Title</label>
                        <input type="text" name="title" class="form-control" placeholder="Enter Title" value="{{$banner->title}}" required>
                    </div>
                    <div class="form-group col-md-10">
                        <label class="required">Subtitle</label>
                        <input type="text" name="subtitle" class="form-control" placeholder="Enter Subtitle" value="{{$banner->subtitle}}" required>
                    </div>
                    <div class="form-group col-md-10">
                        <label class="required">URL</label>
                        <input type="url" name="url" class="form-control" placeholder="Enter URl" value="{{$banner->url}}">
                    </div>
                    <div class="form-group col-md-10">
                    @if(!empty($banner->image))
                    <input type="hidden" name="current_image" value="{{ $banner->image }}">
                    @endif
                    <a href="{{ asset('images/backend_images/banner/'.$banner->image) }}" target="_blank">
                        <img src="{{ asset('images/backend_images/banner/'.$banner->image) }}" height="100">
                    </a><br>
                      <label class="required">Banner Image</label>
                      <input type="file" name="image" class="form-control" accept="image/*" required>
                      <small>Note: Image size should be less than 500KB</small>
                    </div>
                </div>
                <div class="card-footer ">
                    <button type="submit" class="btn btn-success"><i class="fa fa-check"></i> Update</button>
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
        $('#editbannerForm').validate({
            ignore: [],
            debug: false,
            rules: {
                title: {
                    required: true,
                },
                image: {
                    required: false,
                    accept: 'png|jpg|jpeg',
                },
                url: {
                    required: true,
                    url: true,
                },
            },
            messages: {},
            submitHandler: function(form) {
                form.submit();
            }
        });
    });
</script>
@endsection