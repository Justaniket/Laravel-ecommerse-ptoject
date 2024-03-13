<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order_details extends Model
{
    use HasFactory;
    protected $table="orderdetails";
     protected $fillable = ['order_id',  'quantity', 'price' ,'product_id'];
    public function order()
    {
        return $this->belongsTo(Order::class, 'order_id');
    }
}
