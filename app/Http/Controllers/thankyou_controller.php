<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class thankyou_controller extends Controller
{
    public function index(Request $request)
    {
        $order_id = $request->order_id;
        $total = $request->total;

        return view('thankyou', compact('order_id', 'total'));
    }
}