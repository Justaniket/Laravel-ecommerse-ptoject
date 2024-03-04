@extends('layouts/frontLayout/front_design')

@section('content')

<div class=" container  mb-4 pb-2 mt-3  d-flex" style="justify-content:space-evenly">

    @foreach($categories as $value)
    @if($value->status == 1)
  <div class="list-card bg-white h-200  rounded overflow-hidden position-relative shadow-sm mr-3 mt-3">
    <div class="list-card-image">
      <a href="{{url('/products_listing/'.$value->id)}}">
        <img src="{{asset('adminImages/category_images/'.$value->image) }}" alt="Category Image" height="255" width="250"  >
    </a>
    </div>
    <div class="p-3 position-relative">
    <div class="list-card-body text-center border-top">
   <a href="{{ url('/products_listing/'.$value->id) }}" class="text-black">{{$value->name}}</a>
   </div>
    </div>
    </div>
    @endif
    @endforeach
    </div>

    @endsection('content')



