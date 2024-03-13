<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\IndexController;
use App\Http\Controllers\UsersController;
use App\Http\Controllers\TrainerController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\BannerController;
use App\Http\Controllers\AboutController;
use App\Http\Middleware\Adminlogin;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Admin\Category_controller;
use App\Http\Controllers\Admin\product_controller;
use App\Http\Controllers\userproducts_controller;
use App\Http\Controllers\usercategory_controller;
use App\Http\Controllers\cart_controller;
use App\Http\Controllers\checkout_controller;
use App\Http\Controllers\thankyou_controller;


Route::get('/clear', function () {
    $exitCode = Artisan::call('config:clear');
    $exitCode = Artisan::call('cache:clear');
    $exitCode = Artisan::call('config:cache');
    return "cache cleared";
});

Route::get('comingsoon', function () { return view('comingsoon'); });
// aniket main page route
 Route::match(['get','post'], '/', [IndexController::class, 'index']);



//user login-register
Route::match(['get','post'], 'login-register', [UsersController::class, 'userLoginRegister']);
Route::match(['get','post'], 'user-login', [UsersController::class, 'login'])->name('user-login');

Route::match(['get','post'], '/user-logout', [UsersController::class, 'logout']);

//user login-register
Route::match(['get','post'], '/forgot-password/', [UsersController::class, 'forgotPassword']);

Route::match(['get','post'],'/changePassword', [UsersController::class, 'changePassword']);

//users register form submit
Route::match(['get','post'], '/user-register', [UsersController::class, 'register']);

//users register form submit
Route::post('/user-register',[UsersController::class,'register']);

//user account activation vie email
Route::get('confirm/{code}',[UsersController::class, 'confirmAccount']);


//users logout
Route::get('/user-logout',[UsersController::class, 'logout']);





// All Routes after login
// Route::group(['middleware'=>['frontlogin']],function(){
// Route::middleware([frontlogin::class])->group(function () {   
//     Route::match(['get','post'], 'users/dashboard', [UsersController::class, 'dashboard']); 
//     Route::match(['get','post'], 'users/profile', [UsersController::class, 'viewProfile']);
//     Route::match(['get','post'], 'user/profile-update', [UsersController::class, 'userProfileUpdate']); 


 
  
// });




//admin-login
Route::get('/admin', function () { return view('admin/admin_login'); });

Auth::routes();
Route::middleware([Adminlogin::class])->group(function () {
    //Dashboard
    Route::match(['get','post'], '/admin-dashboard', [AdminController::class, 'viewDashboard']);
    //Admin-Setting
    Route::match(['get','post'], 'admin/admin-setting/', [AdminController::class, 'setting']);
    Route::match(['get','post'], 'admin/save-settings/', [AdminController::class, 'saveSettings']);
    Route::get('/logout', [AdminController::class, 'logout']);
    Route::match(['get','post'], '/admin/add-admin/', [AdminController::class, 'addAdmin']);
    Route::get('/admin/view-admin', [AdminController::class, 'viewAdmin']);
    Route::match(['get','post'], '/change-admin-status-zero/{id}', [AdminController::class, 'chnageAdminStatusZero']);
    Route::match(['get','post'], '/change-admin-status-one/{id}', [AdminController::class, 'chnageAdminStatusOne']);
    Route::match(['get','post'], '/admin/delete-admin/{id}', [AdminController::class, 'deleteAdmin']);

    // Admin category of aniket
      Route::get('admin/add_category', [Category_controller::class, 'add'])->name('category.add');
      Route::post('admin/add-category', [Category_controller::class, 'store'])->name('category.store');
      // to display data
      Route::get('/admin/view_category', [Category_controller::class, 'display'])->name('category.display');
      // to delete
      Route::get('/delete_category/{id}', [Category_controller::class, 'delete'])->name('category.delete');
      // to edit
      Route::get('/edit/{id}', [Category_controller::class, 'edit'])->name('category.edit');
      // update
      Route::post('/admin/update/{id}', [Category_controller::class, 'update'])->name('category.update');

    //admin products
Route::Match(['get', 'post'], 'admin/Add_product', [product_controller::class, 'addProduct']);
// to display data
Route::get('/admin/view_products', [product_controller::class, 'viewProducts'])->name('product.display');
// to delete
Route::get('/delete/{id}', [product_controller::class, 'delete'])->name('category.delete');
// update data
Route::Match(['get', 'post'], 'admin/edit_product/{id}', [product_controller::class, 'update']);
});
// front side route
Route::get('/category', [usercategory_controller::class, 'view_usercategory']);
Route::get('/products_listing/{id}',[ userproducts_controller::class,'products_listing']);
Route::get('/product_details/{id}',[ userproducts_controller::class,'product_details']);
Route::post('/addcart',[ cart_controller::class,'addToCart'])->name('cart');
// cart page
Route::get('/cart', [cart_controller::class, 'showCart'])->name('cart.show');
Route::get('/cart/remove/{cartItemId}', [cart_controller::class, 'removeFromCart'])->name('remove-from-cart');
Route::post('update-cart-quantity', [Cart_controller::class, 'updateCartQuantity'])->name('update-cart-quantity');
// checkout page
Route::get('/checkout', [checkout_controller::class,'showCheckoutForm'])->name('checkout');
Route::post('/checkout', [checkout_controller::class, 'processPayment'])->name('process.payment');
Route::get('/thankyou', [thankyou_controller::class, 'index'])->name('thankyou');




//OTHER ROUTES
Route::match(['get','post'], '/admin-login-check', [AdminController::class, 'login']);
Route::post('/admin-reset-password', [AdminController::class, 'resetPassword']);

Route::get('/admin-forgot-password', function () {
    return view('admin/admin-forgot-password');
});

Route::get('/admin-login', function () {
    return view('admin/admin_login');
});
Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');

