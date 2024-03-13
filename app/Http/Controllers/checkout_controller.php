<?php

namespace App\Http\Controllers;
use App\Models\Cart;
use App\Models\Order;
use App\Models\Order_details;
use Razorpay\RazorpayFacade as Razorpay;
use Razorpay\Api\Api as RazorpayApi;
use Illuminate\Support\Str;


use Illuminate\Http\Request;

class checkout_controller extends Controller
{
     public function showCheckoutForm(){
    $cartItems = Cart::where('customerId', auth()->id())->get();
    $order_id = uniqid();

    return view('checkout', compact('cartItems', 'order_id'));
    }
 public function processPayment(Request $request)
{
    // $data=$request->all();
    // dd($data);
    $cartItems = Cart::where('customerId', auth()->id())->get();
    $total = 0;

    foreach ($cartItems as $cartItem) {
        $total += $cartItem->product->price * $cartItem->quantity;
    }

    // Create an order
    $order = Order::create([
        'address' => $request->input('address'),
        'grand_total' => $total,
        'customer_id' => auth()->user()->id,
        'order_status' => 'Inprocess',
        'payment_method' => 'Razorpay',
    ]);
    // dd($order);
    $order->save();
 $receipt = Str::random(10);
      foreach ($cartItems as $cartItem) {
        $orderDetails = new Order_details([
            'order_id' => $order->id,
            'price' => $cartItem->product->price,
            'quantity' => $cartItem->quantity,
            'product_id' => $cartItem->product->id,
        ]);
            // dd($orderDetails);
         $orderDetails->save();
    }

    $api = new RazorpayApi(config('app.RAZORPAY_KEY'),config('app.RAZORPAY_SECRET'));

    // dd(config('app.RAZORPAY_KEY'),config('app.RAZORPAY_SECRET'));
    
    $razorpayOrder = $api->order->create([
        'amount' => $total * 100, 
        'currency' => 'INR', 
        'receipt' => $receipt, 
        'payment_capture' => true,
    ]);
    
    $order_id = $razorpayOrder['id'];
    return redirect()->route('thankyou', ['order_id' => $order_id, 'total' => $total]);}


}

  


