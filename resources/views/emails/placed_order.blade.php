
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
  </head>
  <body>
   <h1>Your order has been successfully placed. Here are the details:</h1>
    <h5>Order ID: {{ $orderDetails->order_id }}</h5>
    <h5>Total Amount: {{ $total }}</h5>
    <h5>Payment ID: {{ $payment_id }}</h5>
    <h3>Ordered Items:</h3>
    <ul>
        @foreach($productNames as $index => $productName)
            <li>{{ $productName }} - Quantity: {{ $quantities[$index] }}</li>
        @endforeach
    </ul>
    
    <p>Thank you for shopping with us!</p>
  </body>
</html>
