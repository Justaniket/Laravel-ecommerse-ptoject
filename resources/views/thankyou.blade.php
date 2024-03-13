<!-- resources/views/thankyou.blade.php -->

@extends('layouts.frontLayout.front_design')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h2>Thank You for Your Purchase!</h2>
                <p>Your order has been successfully placed.</p>
                <p>Order ID: {{ $order_id }}</p>
                <p>Total Amount: ${{ $total }}</p>
                <!-- You can customize this page further based on your needs -->
            </div>
        </div>
    </div>
@endsection
