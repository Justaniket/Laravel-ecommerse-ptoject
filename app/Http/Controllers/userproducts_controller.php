<?php

namespace App\Http\Controllers;
use App\Models\Products;
use App\Models\Category;

use Illuminate\Http\Request;

class userproducts_controller extends Controller
{
    public function products_listing($id){

        $categories= Category::all();
        $Products = Products::with('Category')->where('category_id',$id)->orderBy('id', 'ASC')->get();
        
return view('/products_listing')->with(compact('Products'));
        
    }
    public function product_details($id){
        $Products = Products::where('id',$id)->first();
        
        return view('/product_details')->with(compact('Products'));
        
    }
   
}
