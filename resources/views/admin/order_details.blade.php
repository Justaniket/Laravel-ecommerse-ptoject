@extends('layouts.adminLayout.admin_design')

@section('content')
<div class="container">
    <div class="text-center">
        <h1>Order Details</h1>
        @if($order)
        <div style="margin: 0 auto; width: 80%; text-align: left;">
            <h2>Order Id :{{ $order->id }}</h2>
            <p><strong>Customer Name:</strong> {{ $order->user->name }}</p>
            <p><strong>Address:</strong> {{ $order->address }}</p>
            <table style="margin: 0 auto;">
                <thead>
                    <tr>
                        <th>Product Image</th>
                        <th>Name</th>
                        <th>Quantity</th>
                        <th>Price</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($order->orderDetails as $orderDetail)
                    <tr>
                        <td>
                            @if($orderDetail->adminProduct)
                            <img src="{{ asset('adminImages/products_images/' . $orderDetail->adminProduct->image) }}" alt="{{ $orderDetail->adminProduct->name }}" style="width: 50px;">
                            @else
                            No Image Available
                            @endif
                        </td>
                        <td>
                            @if($orderDetail->adminProduct)
                            {{ $orderDetail->adminProduct->name }}
                            @else
                            Product Not Found
                            @endif
                        </td>
                        <td>{{ $orderDetail->quantity }}</td>
                        <td>{{ $orderDetail->price }}</td>
                    </tr>
                    @endforeach
                </tbody>
                <tfoot>
                    <tr>
                        <th colspan="3">Grand Total :</th>
                        <th>{{ $order->grand_total }}</th>
                    </tr>
                </tfoot>
            </table>
        </div>
        @else
        <p>No order found.</p>
        @endif
    </div>
</div>
@endsection
