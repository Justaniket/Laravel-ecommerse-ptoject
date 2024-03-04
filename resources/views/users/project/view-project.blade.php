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
            <h1>My Projects </h1>
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
              <div class="card-header text-right">
              <!-- <h3 class="card-title">View section</h3> -->
               <!--<a href="{{ url('/users/add-project_category') }}"><button class="btn btn-success btn-xs"><i class="fa fa-plus"></i> Add Project Category</button></a>-->
              <a href="{{ url('/users/add-project') }}"><button class="btn btn-success btn-xs"><i class="fa fa-plus"></i> Add Project</button></a>
              <!--<a href="{{ url('/users/view-project_category') }}"><button class="btn btn-success btn-xs"><i class="fa fa-eye"></i> View Project Category</button></a>-->
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>Sr.No</th> 
                    <!--<th>Category</th>-->
                    <th>Project image</th>
                    <th>Project title</th>
                    <th>Project description</th>
                    <th>price</th>
                    <!--<th>Status</th>-->
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>

                    @foreach($project as $category)
                <tr class="gradeX">
                  <td>{{ $loop->index+1}}</td>
                 
                  <td><img src="{{asset('images/backend_images/project/'.$category->image) }}" style="height: 70px;width: 130px; object-fit:cover;"></td>
                    <!--<td>{!! Str::limit($category->title,10) !!}</td>-->
                    <td>{!! Str::limit($category->title,10)!!}</td>
                    <td>{!! Str::limit($category->description,20)!!}</td>
                    <!--<td >-->
                    <!--    <a href="{{asset('pdf/'.$category->project_report)}}" target="_blank"> {!! Str::limit($category->project_report,15)!!}</a>-->
                    <!--    <a class="btn btn-default" href="{{ asset('pdf/'.$category->project_report) }}" download><i class="fa fa-download" style="color: #000;"></i></a>-->
                    <!--</td>-->
                    <!-- <td>{!! Str::limit($category->project_report,20)!!}</td> -->
                    <td>{!! Str::limit($category->price,10)!!}</td>
                    <!--<td>-->
                    <!--    <a href="{{ url('/users/edit-project-status/'.$category->id.'/'.$category->status) }}"><i class="fas @if($category->status == '1')fa-toggle-on @else fa-toggle-off @endif" style="color: #000000; font-size: 20px;"></i></a>-->
                    <!--</td>-->
                  <td class="center">
                    
                    <!-- <a href="{{ url('/admin/edit-services/'.$category->id) }}" class="btn btn-primary btn-mini" title="Edit Category">Edit</a> -->
                    <a class="btn btn-default" href="{{ url('/users/edit-project/'.$category->id) }}"><i class="fa fa-edit" style="color: #000;"></i></a> &nbsp;
                    
                    <a class="btn btn-danger" onclick="return confirm('Are you sure?')" href="{{ url('/users/delete-project/'.$category->id) }}"><i class="fa fa-trash"></i></a> &nbsp;

                    <!--<a class="btn btn-sm" href="{{url('projects/'.base64_encode($category->id).'/')}}"><i class="fa fa-eye" style="color: #000;"></i>View More</a>-->

                    <!-- <a rel="{{ $category->id }}" rel1="delete-product" href="{{ url('/admin/delete-services/'.$category->id) }}" onclick="return confirm('Are you sure you want to delete?');" class="btn btn-danger btn-mini deleteCategory" title="Delete Category">Delete</a> -->
                    
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