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
    <div class="container my-5 col-md-6  ">
      <form action="{{URL('admin/Add_product')}}" method="post" enctype="multipart/form-data" >
        @csrf
        <div class="mb-3">
          <label class="form-label"> Product Name</label>
          <input type="text" class="form-control" placeholder="enter your name" name="name" value="">
       </div>
       <label class="form-label">Image</label>
          <div class="mb-3">  
            <input type="file" id="myFile" name="image" required>
          </div>
          <div class="mb-3">
          <label class="form-label">Category </label>
         
          <select class="form-select" aria-label="Default select example" name="category_id">
            <option selected></option>
            @foreach($Category as $value)
            <option value="{{$value->id}}">{{$value->name}}</option>
          @endforeach
          </select>
          </div>
          <div class="mb-3">
          <label class="form-label">price</label>
          <input type="text" class="form-control" placeholder="enter your price" name="price" value="">
          </div>
      <div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">Discription</label>
  <textarea class="form-control" id="summernote"  name="description" rows="3"></textarea>
</div>
<div class="form-check">
    <input class="form-check-input" type="checkbox" name="status" id="flexCheckDefault" >
    <label class="form-check-label" for="flexCheckDefault">
        Publish
    </label>
</div>
   <button type="submit" name="submit" class="btn btn-primary">Add</button>
          
      </form>
    </div>
  </body>
</html>
@endsection('content')
