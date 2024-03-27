

 <!DOCTYPE html>
 <html lang="en">
 <head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Order Details</title>
 </head>
 <body>
     <h1>Dear {{ $order->user->name }} your order is {{ $order->order_status }}:</h1>
     
     <h2>Order ID: {{ $order->id }}</h2>
     <h2>Order Status: {{ $order->order_status }}</h2>
     <h2>Payment Status: {{ $order->payment_status }}</h2>
     <h2>Total: {{ $order->grand_total }}</h2>
     
     <p>Customer Name: {{ $order->user->name }}</p>
     <p>Customer Address: {{ $order->address }}</p>
     
     <h3>Ordered Items:</h3>
     
    <ul>
        @foreach($orderDetails as $detail)
        <li>
            {{-- <img src="https://artaux.io/images/front-end/artaux.png" alt="Product Image" height="100" width="100"> --}}
            <img src="{{ asset('adminImages/products_images/' .  $detail->adminProduct->image) }}" alt="Product Image" height="100" width="100">
            {{ $detail->adminProduct->name }} | Quantity: {{ $detail->quantity }} | Price: Rs{{ $detail->price }}
        </li>
        @endforeach
    </ul> 
     <p>Thank you for shopping with us!</p>
 </body>
 </html>
 
g 
