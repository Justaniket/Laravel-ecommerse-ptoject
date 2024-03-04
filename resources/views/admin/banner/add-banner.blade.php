@extends('layouts/adminLayout/admin_design')
@section('content')

<div class="content-wrapper">
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Banners Section</h1>
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
            <li class="breadcrumb-item active">Banners Section</li>
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
              <h3 class="card-title">Add Banner</h3>
            </div>
            <form method="POST" action="{{ url('admin/add-banner') }}" enctype="multipart/form-data" id="addBanners">@csrf
                <div class="card-body">
                    <div class="form-group col-md-10">
                        <label class="required">Title</label>
                        <input type="text" name="title" class="form-control" maxlength="200" placeholder="Enter Title" required>
                    </div>
                    <div class="form-group col-md-10">
                        <label class="required">Subtitle</label>
                        <input type="text" name="subtitle" class="form-control" placeholder="Enter Subtitle" required>
                    </div>
                    <div class="form-group col-md-10">
                        <label class="required">URL</label>
                        <input type="url" name="url" class="form-control" placeholder="Enter URl" >
                    </div>

                    <div class="form-group col-md-10">
                      <label class="required">Banner Image</label>
                      <input type="file" name="image" class="form-control" accept="image/*" required>
                      <small>Note: Image size should be less than 500KB</small>
                    </div>
                </div>
                <div class="card-footer ">
                    <button type="submit" class="btn btn-success"><i class="fa fa-check"></i> Add Banner</button>
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
        $('#addBanners').validate({
            ignore: [],
            debug: false,
            rules: {
                title: {
                    required: true,
                },
                subtitle: {
                    required: true,
                },
                image: {
                    required: true,
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