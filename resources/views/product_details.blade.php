@extends('layouts/frontLayout/front_design')
@section('content')


      <div class="container">
        <div class="row mb-5 mt-3">
            <div class="col-md-6 card d-flex justify-content-center align-items-center">
                <div class="big-img">
                    <img src="{{asset('adminImages/products_images/'.$Products->image) }}" alt="product Image" height="255" width="250" >
                </div>
            </div>
            <div class="col-md-6 card pt-3 detailinfo d-flex flex-column">
                <h2>
                    {{$Products->name}}
                </h2>
               <h2  Price:${{$Products->price}}</h2>
                <hr />
                <h3>About this item</h3>
                <h5>
                  The boAt WCDV 20W PD Wall Charger supports 20W Power Delivery Fast
                  Charging and is compatible with all PD supported devices. Take
                  charge of time with 20W Power Delivery Fast Charging.
                </h5>
                <div class="d-flex flex-column">
                   
                   <form action="{{ url('/addcart') }}" method="post">
                    @csrf
                    <input type="hidden" name="price" value="{{$Products->price }}">

                    <input type="hidden" name="id" value="{{ $Products->id }}">
                    <div class="d-flex mb-2 mt-3 justify-content-center">
                        <h5>Quantity:</h5>
                        <input type="number" min="1" value="1" class="form-controll" name="quantity">
                    </div>
                    <div class="detailaddbtn">
                        <a href="">
                        <button type="submit" name="addToCart" class="btn btn-primary">Add to cart</button>
                        </a>

                    </div>
                </form>
                
                  
                    <div class="">
                        <button type="button" class="btn btn-secondary btn-lg  mb-2">Buy Now</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection ('content')