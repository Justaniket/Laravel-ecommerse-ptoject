<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\order_details;
use App\Models\order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\OrderMail;
use Illuminate\Support\Facades\Auth;
use log;

class order_controller extends Controller
{
   
    public function index()
    {
        $orders =  Order::with('user')->get();

        return view('admin.orders', compact('orders'));
    }

  

public function updateStatus(Request $request)
{
    $orderId = $request->input('order_id');
    $status = $request->input('order_status');
    $payment_status = $request->input('payment_status');

    // Update order status
    Order::where('id', $orderId)->update([
        'order_status' => $status,
        'payment_status' => $payment_status,
    ]);

    // Fetch order with its details using eager loading
    $order = Order::with('orderDetails')->find($orderId);  

    // Prepare data for the email
    $messageData = [
        'order' => $order,
        'orderDetails' => $order->orderDetails, // Fetch order details
    ];

    $email = 'aniketnavale2712@gmail.com';
    Mail::send('emails.order_status', $messageData, function ($message) use ($email) {
        $message->to($email)->subject('Order Details');
    });
    return redirect()->back()->with('success', 'Order status updated successfully and email sent.');
}


public function orderDetails($order_id){
    
    $order = Order::with('user', 'orderDetails.adminProduct')->find($order_id);
    return view('admin.order_details', compact('order'));
}


}