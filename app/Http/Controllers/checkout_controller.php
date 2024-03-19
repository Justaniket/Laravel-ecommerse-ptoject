<?php

namespace App\Http\Controllers;
use App\Models\Cart;
use App\Models\Order;
use App\Models\Order_details;
use Razorpay\RazorpayFacade as Razorpay;
use Razorpay\Api\Api as RazorpayApi;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Mail;
use App\Mail\sendMail;
use Illuminate\Support\Facades\Auth;
// use GuzzleHttp\Client;


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
    $user = Auth::user(); 
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
     $payment_id = $request->input('razorpay_payment_id');
     $order->payment_id= $payment_id;
     
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
         $productNames[] = $cartItem->product->name;
         $quantities[] = $cartItem->quantity;
    }

    $api = new RazorpayApi(config('app.RAZORPAY_KEY'),config('app.RAZORPAY_SECRET'));

    // dd(config('app.RAZORPAY_KEY'),config('app.RAZORPAY_SECRET'));
    
    $razorpayOrder = $api->order->create([
        'amount' => $total * 100, 
        'currency' => 'INR', 
        'receipt' => $receipt, 
        
    ]);
    
    $order_id = $razorpayOrder['id'];
     $data = [
        'orderDetails' => $orderDetails,
        'total' => $total,
        'payment_id' => $payment_id, 
        'productNames' => $productNames,
        'quantities' => $quantities,
    ];
    
    $email = Auth::user()->email;
    Mail::send('emails.send_email', $data, function($message) use ($email) {
        $message->to($email)->subject('Order Details');
    });
    $client = new \GuzzleHttp\Client([
        'base_uri' => 'https://api.razorpay.com/v1/',
        'timeout'  => 2.0,
    ]);

    $response = $client->post('payments/' . $payment_id . '/capture', [
        'auth' => [config('app.RAZORPAY_KEY'), config('app.RAZORPAY_SECRET')],
        'json' => [
            'amount' => $total * 100,
            'currency' => 'INR',
        ],
    ]);

    $statusCode = $response->getStatusCode();
    $responseData = json_decode($response->getBody(), true);

    if ($statusCode === 200 && $responseData['status'] === 'captured') {
        return redirect()->route('thankyou', ['order_id' => $order_id, 'total' => $total, 'payment_id' => $payment_id]);
    } else {
        \Log::error('Razorpay payment capture failed: ' . $response->getBody());
        return redirect()->back()->with('error', 'Payment capture failed. Please try again.');
    }}
// } catch (\Exception $e) {
//     \Log::error('Razorpay capture failed: ' . $e->getMessage());
//     return redirect()->back()->with('error', 'Payment capture failed. Please try again.');
// }
}





  


