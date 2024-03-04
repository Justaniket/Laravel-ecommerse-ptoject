@extends('layouts/adminLayout/admin_design')
@section('content')

<div class="content-wrapper">
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

  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          <div class="card card-default">
            <div class="card-header">
              {{-- <h3 class="card-title">Add About</h3>
              <a href="{{ url('/admin/view-about') }}"><button style="float: right; margin: 3px 3px;" class="btn btn-success btn-xl"><i class="fa fa-eye"></i> View About</button></a> --}}
            </div>
            <form method="POST" action="{{ url('admin/add-contact') }}" enctype="multipart/form-data" id="addBanners">@csrf
                <div class="card-body">
                    
                    <div class="form-group col-md-10">
                        <div class="form-group col-md-10">
                        <label class="required">Phone Number</label>
                        <input name="phone" class="form-control" placeholder="Enter Phone Number" required>
                    </div>  
                  </div>

                  <div class="form-group col-md-10">
                        <div class="form-group col-md-10">
                        <label class="required">Email</label>
                        <input name="email" class="form-control" placeholder="Enter Email" required>
                    </div>  
                  </div>

                 <div class="form-group col-md-10">
                    <div class="form-group col-md-10">
                      <label class="required">Address</label>
                      <input name="address" class="form-control" placeholder="Enter Address" required>
                    </div>  
                  </div>

                </div>
                <div class="card-footer ">
                    <button type="submit" class="btn btn-success"><i class="fa fa-check"></i> Add </button>
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
                content: {
                    required: true,
                },
                image: {
                    required: true,
                    accept: 'png|jpg|jpeg',
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