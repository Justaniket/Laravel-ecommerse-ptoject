<?php

namespace App\Http\Controllers;
use App\Models\Category;

use Illuminate\Http\Request;

class usercategory_controller extends Controller
{
   public function view_usercategory(){
     $categories = Category::all();
     return view('/category', compact('categories'));
   }
}
                   