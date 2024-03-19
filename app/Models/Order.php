<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;
    protected $table="order";
     protected $fillable = ['address', 'customer_id', 'grand_total', 'order_status', 'payment_method','payment_id'];

    public function orderDetails()
    {
        return $this->hasMany(Order_details::class, 'order_id');
    }
}
