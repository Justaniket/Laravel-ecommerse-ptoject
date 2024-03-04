@extends('layouts/adminLayout/admin_design')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>DataTables</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">DataTables</li>
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
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Categories</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
              <table class="table">
  <thead>
  <a href='{{route('category.add')}}'>
        <button class="btn btn-primary">Add</button>
       </a>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Image</th>
       <th scope="col">Status</th> 
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  @foreach($Category as $value)
    <tr>
      <th scope="row">{{$value->id}}</th>
      <td>{{$value->name}}</td>
      <td>
    <img src="{{asset('adminImages/category_images/'.$value->image) }}" alt="Category Image" width="50" height="50">
</td>
      
      <td>{{$value->status}}</td>
      <td>
        <a href="{{url('edit/'.$value->id)}}">
         <button class="btn btn-primary">Update</button>

      <a href="{{url('/delete_category/'.$value->id)}}">
        <button class="btn btn-danger">Delete</button>
        </a>
       
      </td>
    </tr>
   @endforeach
  </tbody>
</table>
              </div>
              <!-- /.card-body -->
            </div>
            <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.2.0
    </div>
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->


<!-- Page specific script -->
<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>

