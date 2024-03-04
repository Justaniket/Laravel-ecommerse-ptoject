@php $url = url()->current(); @endphp
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<nav class="navbar navbar-expand-lg navbar-light bg-light osahan-nav shadow-sm">
    <div class="container">
        <a class="navbar-brand" href="{{url('/')}}">
            <img alt="logo" src="{{asset('assets/img/logo.png')}}">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="">About <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{url('/category')}}">
                            <p>Category</p>
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Restaurants </a>
                    <div class="dropdown-menu dropdown-menu-right shadow-sm border-0">
                        <a class="dropdown-item" href="listing.html">Listing</a>
                        <a class="dropdown-item" href="detail.html">Detail + Cart</a>
                        <a class="dropdown-item" href="checkout.html">Checkout</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Pages </a>
                    <div class="dropdown-menu dropdown-menu-right shadow-sm border-0">
                        <a class="dropdown-item" href="track-order.html">Track Order</a>
                        <a class="dropdown-item" href="invoice.html">Invoice</a>
                        <a class="dropdown-item" href="login.html">Login</a>
                        <a class="dropdown-item" href="register.html">Register</a>
                        <a class="dropdown-item" href="404.html">404</a>
                        <a class="dropdown-item" href="extra.html">Extra :)</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img alt="Generic placeholder image" src="{{asset('img/user/4.png')}}" class="nav-osahan-pic rounded-pill"> My Account </a>
                    <div class="dropdown-menu dropdown-menu-right shadow-sm border-0">
                        <a class="dropdown-item" href="orders.html#orders">
                            <i class="icofont-food-cart"></i> Orders </a>
                        <a class="dropdown-item" href="orders.html#offers">
                            <i class="icofont-sale-discount"></i> Offers </a>
                        <a class="dropdown-item" href="orders.html#favourites">
                            <i class="icofont-heart"></i> Favourites </a>
                        <a class="dropdown-item" href="orders.html#payments">
                            <i class="icofont-credit-card"></i> Payments </a>
                        <a class="dropdown-item" href="orders.html#addresses">
                            <i class="icofont-location-pin"></i> Addresses  </a>
                    </div>
                </li>
                <li class="nav-item dropdown dropdown-cart">
                    <a class="nav-link dropdown-toggle" href="/cart" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-shopping-basket"></i> Cart @if(isset($cartCount))<span class="badge badge-success">{{ $cartCount }}</span>@endif
                    </a>
                    
                </li>
            </ul>
            
           
           @auth
           <a href="/user-logout"> <button class="btn btn-danger ml-3 border">Logout</button></a>
           @else
           <a href="/user-login"> <button class="btn btn-danger ml-3 border">Login</button></a>
           @endif
        </div>
    </div>
</nav>