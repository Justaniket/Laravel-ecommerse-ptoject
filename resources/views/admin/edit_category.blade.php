@extends('layouts/adminLayout/admin_design')
@section('content')
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  </head>
  <body>
    <div class="container card my-5 col-md-6   ">
      <form action="{{route('category.update', ['id' => $Category->id])}}" method="post" enctype="multipart/form-data" >
        @csrf
        <div class="mb-3 mt-3 ">
         <label class="form-label"> Category Name</label>
          <input type="text" class="form-control bg-white" placeholder="enter category name" name="name" value="{{ $Category->name }}"  >
       </div>
       <label class="form-label">Image</label>
          <div class="mb-3">
            <input type="file" id="myFile" name="image" value="{{$Category->image}}" >
            <img src="{{ asset('adminImages/category_images/' . $Category->image) }}" width="50" height="50"></img>
          </div>
          <div class="form-check">
  <input class="form-check-input" type="checkbox" value="{{$Category->status}}" id="flexCheckDefault" name="status" @if($Category->status == 1) checked @endif>
  <label class="form-check-label" for="flexCheckDefault">
   publish
  </label>
</div>
          <a href="{{route('category.display')}}">
          <button type="submit" name="submit" class="btn btn-primary">Add</button>
          </a>
      </form>
    </div>
  </body>
</html>
@endsection('content')
