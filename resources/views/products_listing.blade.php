{{-- 
@extends('layout/front_layout/front_design')
@section('content') --}}
{{-- <div class=" container  mb-4 pb-2 mt-3  d-flex" style="justify-content:space-evenly">
    @foreach($Products as $value)
    @if($value->status == 1)
    <div class="list-card bg-white h-200  rounded overflow-hidden position-relative shadow-sm mr-3 mt-3">
    <div class="list-card-image">
      <a href="{{url('/product_details/'.$value->id)}}">
        <img src="{{asset('adminImages/products_images/'.$value->image) }}" alt="product Image" height="255" width="250"  >
      </a>
    </div>
    <div class="p-3 position-relative">
    <div class="list-card-body text-center border-top">
   <a href="{{url('/product_details/'.$value->id)}}" class="text-black">{{$value->name}}</a>
 </div>
    </div>
    </div>
    @endif
     @endforeach
    </div> --}}







    {{-- <div class="container">
      <div class="row ">
        <div class="col-md-4">
         <h1> Amazon fashion</h1>
         <div class="mb-3 form-check">
          <input type="checkbox" class="form-check-input" id="exampleCheck1">
          <label class="form-check-label" for="exampleCheck1">Top Brands</label>
        </div>
         <div class="mb-3 form-check">
          <input type="checkbox" class="form-check-input" id="exampleCheck1">
          <label class="form-check-label" for="exampleCheck1">Made for Amazon</label>
        </div>
         <div class="mb-3 form-check">
          <input type="checkbox" class="form-check-input" id="exampleCheck1">
          <label class="form-check-label" for="exampleCheck1">Premium Brands</label>
        </div>
         
        <h1> Brands</h1>
        <div class="mb-3 form-check">
          <input type="checkbox" class="form-check-input" id="exampleCheck1">
          <label class="form-check-label" for="exampleCheck1">Lenevo</label>
        </div>
         <div class="mb-3 form-check">
          <input type="checkbox" class="form-check-input" id="exampleCheck1">
          <label class="form-check-label" for="exampleCheck1">one plus</label>
        </div>
         <div class="mb-3 form-check">
          <input type="checkbox" class="form-check-input" id="exampleCheck1">
          <label class="form-check-label" for="exampleCheck1">Samsung</label>
        </div>

        <h1> Discount</h1>
         <h5>10% or more</h5>
         <h5>30% or more</h5>
         <h5>40% or more</h5>
         <h5>50% or more</h5>

         <h1> Price</h1>
         <h5>under $1000</h5>
         <h5>$1000-$2000</h5>
         <h5>$2000-$3000</h5>
         <h5>$3000-$4000</h5>
         <h5>over $5000</h5>

         <h1> Material</h1>
        <div class="mb-3 form-check">
          <input type="checkbox" class="form-check-input" id="exampleCheck1">
          <label class="form-check-label" for="exampleCheck1">Plastic</label>
        </div>
         <div class="mb-3 form-check">
          <input type="checkbox" class="form-check-input" id="exampleCheck1">
          <label class="form-check-label" for="exampleCheck1">Brass</label>
        </div>
         <div class="mb-3 form-check">
          <input type="checkbox" class="form-check-input" id="exampleCheck1">
          <label class="form-check-label" for="exampleCheck1">Rubber</label>
        </div>
        </div>
          <div class="col-md-8 listingcard">
          <div class="row">
            <div class=" container  mb-4 pb-2 mt-3  d-flex" style="justify-content:space-evenly">
              @foreach($Products as $value)
              @if($value->status == 1)
              <div class="list-card bg-white h-200   rounded overflow-hidden position-relative shadow-sm mr-3 mt-3">
              <div class="list-card-image">
                <a href="{{url('/product_details/'.$value->id)}}">
                  <img src="{{asset('adminImages/products_images/'.$value->image) }}" alt="product Image" height="255" width="250"  >
                </a>
              </div>
              <div class="p-3 position-relative">
              <div class="list-card-body text-center border-top">
             <a href="{{url('/product_details/'.$value->id)}}" class="text-black">{{$value->name}}</a>
           </div>
              </div>
              </div>
              @endif
               @endforeach
              </div>
           </div>
            </div>
          </div>
        </div> --}}

        @extends('layouts/frontLayout/front_design')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <h1>Amazon fashion</h1>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="topBrandsCheckbox">
                <label class="form-check-label" for="topBrandsCheckbox">Top Brands</label>
            </div>
            <div class="mb-3 form-check">
              <input type="checkbox" class="form-check-input" id="exampleCheck1">
              <label class="form-check-label" for="exampleCheck1">Made for Amazon</label>
            </div>
             <div class="mb-3 form-check">
              <input type="checkbox" class="form-check-input" id="exampleCheck1">
              <label class="form-check-label" for="exampleCheck1">Premium Brands</label>
            </div>
            <h1>Brands</h1>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="lenovoCheckbox">
                <label class="form-check-label" for="lenovoCheckbox">Lenovo</label>
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="lenovoCheckbox">
                <label class="form-check-label" for="lenovoCheckbox">Lenovo</label>
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="lenovoCheckbox">
                <label class="form-check-label" for="lenovoCheckbox">Lenovo</label>
            </div>
            
            <h1>Discount</h1>
            <h5>10% or more</h5>
            <h5>30% or more</h5>
            <h5>20% or more</h5>
         
           

            <h1>Price</h1>
            <h5>under $1000</h5>
            <h5>$500-$1000</h5>
            <h5>$1000-$2000</h5>
           

            <h1>Material</h1>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="plasticCheckbox">
                <label class="form-check-label" for="plasticCheckbox">Plastic</label>
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="plasticCheckbox">
                <label class="form-check-label" for="plasticCheckbox">plastic</label>
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="plasticCheckbox">
                <label class="form-check-label" for="plasticCheckbox">Plastic</label>
            </div>
           
        </div>
        <div class="col-md-8 listingcard">
            <div class="row">
                @foreach($Products as $key => $value)
                    @if($value->status == 1)
                        <div class="col-md-4 mb-3 mt-3">
                            <div class="list-card bg-white h-200 rounded overflow-hidden position-relative shadow-sm">
                                <div class="list-card-image">
                                    <a href="{{url('/product_details/'.$value->id)}}">
                                        <img src="{{asset('adminImages/products_images/'.$value->image)}}" alt="product Image" height="255" width="250">
                                    </a>
                                </div>
                                <div class="p-3 position-relative">
                                    <div class="list-card-body text-center border-top">
                                        <a href="{{url('/product_details/'.$value->id)}}" class="text-black">{{$value->name}}</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endif
                @endforeach
            </div>
        </div>
    </div>
</div>
@endsection('content')








