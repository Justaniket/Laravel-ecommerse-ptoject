@extends('layouts/adminLayout/admin_design')
@section('content')

<div class="content-wrapper">
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
                <div class="col-sm-6"><h1>Banner Section</h1></div>

                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('/admin-dashboard') }}">Home</a></li>
                        <li class="breadcrumb-item active">View Banner</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>

    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            {{-- <h3 class="card-title">View banner</h3> --}}
                            <a href="{{ url('/admin/add-banner') }}"><button style="float: right;" class="btn btn-success btn-mini"><i class="fa fa-plus-circle"></i> Add Banner</button></a>
                        </div>
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-striped" style="overflow-x: auto;">
                                <thead>
                                    <tr>
                                        <th>Sr.No</th>
                                        <th>Image</th>
                                        <th>Title</th>
                                        <th>Subtitle</th>
                                        <th>URL</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($banner as $row)
                                    <tr>
                                        <td>{{ $loop->index+1 }}</td>
                                        <td><a href="{{ asset('images/backend_images/banner/'.$row->image) }}"><img src="{{ asset('images/backend_images/banner/'.$row->image) }}" width="200px"></a></td>
                                        <td>{{ $row->title }}</td>
                                        <td>{{ $row->subtitle }}</td>
                                        <td>{{ strip_tags(nl2br(Str::limit($row->url,25)))}}</td>
                                        {{-- <td>{{ $row->url }}</td> --}}
                                        <td class="d-flex">
                                            <a class="btn btn-default" href="{{ url('/admin/edit-banner/'.$row->id) }}"><i class="fa fa-edit" style="color: #000;"></i></a> &nbsp;
                                            <a class="btn btn-danger" onclick="return confirm('Are you sure?')" href="{{ url('/admin/delete-banner/'.$row->id) }}"><i class="fa fa-trash"></i></a> &nbsp;
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection