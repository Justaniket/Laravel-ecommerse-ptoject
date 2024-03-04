<?php

namespace App\Http\Controllers;

use App\Models\Products;
use App\Models\Category;
use App\Models\Cart;
use Illuminate\Support\Facades\Log;
use Illuminate\Http\Request;

class cart_controller extends Controller
{
    public function addToCart(Request $data)
    {
        if (auth()->check()) {
            $customerId = auth()->id();
            $productId = $data->input('id');
            $quantity = $data->input('quantity');
    
           
            $existingCartItem = Cart::where('customerId', $customerId)
                ->where('productId', $productId)
                ->first();
    
            if ($existingCartItem) {
                // If the product is already in the cart, update the quantity
                $existingCartItem->quantity += $quantity;
                $existingCartItem->save();
            } else {
                // If the product is not in the cart, add a new entry
                $item = new Cart();
                $item->quantity = $quantity;
                $item->productId = $productId;
                $item->customerId = $customerId;
                $item->price = $data->input('price');
                $item->save();
            }
    
            return redirect()->back()->with('success', 'Product added to cart successfully.');
        }
    
        return redirect()->route('user-login')->with('error', 'Please log in to add the product to your cart.');   
    }
    
    public function showCart()
    {
        $cartItems = Cart::with([
            'product' => function ($query) {
                $query->select('id', 'name', 'price', 'image');
            }
        ])
            ->where('customerId', auth()->id())
            ->get();
        $cartCount = Cart::where('customerId', auth()->id())->count();
        return view('cart', compact('cartItems', 'cartCount'));
    }
    public function removeFromCart($id)
    {
        $cartItem = Cart::find($id);
        if (!$cartItem) {
            return redirect()->back()->with('error', 'Cart item not found.');
        }
        if ($cartItem->customerId == auth()->id()) {
            $cartItem->delete();
            return redirect()->back()->with('success', 'Product removed from cart successfully.');
        }
        return redirect()->back()->with('error', 'You are not authorized to remove this product from the cart.');
    }
    public function updateCartQuantity(Request $request)
    {
        try {
            $customerId = $request->input('customerId');
            $productId = $request->input('productId');
            $quantity = $request->input('quantity');
            $cartItem = Cart::where('customerId', $customerId)
                ->where('productId', $productId)->update(['quantity' => $quantity]);
            return response()->json(['status' => 'success', 'updatedTotal' => $cartItem->price * $quantity]);
        } catch (\Exception $e) {
            Log::error('Error updating quantity: ' . $e->getMessage());
            return response()->json(['status' => 'error', 'message' => 'Error updating quantity'], 500);
        }
    }




}





