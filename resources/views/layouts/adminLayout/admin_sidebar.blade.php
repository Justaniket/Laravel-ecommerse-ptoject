<?php $url = url()->current(); ?>

<aside class="main-sidebar elevation-4" style="background:#000000;color:white;">
    <a href="{{ url('/admin-dashboard') }}" class="brand-link text-white"><img src="{{ asset('/logo/laravel.png') }}" class="brand-image" style="width:80%;"></a>
    <div class="sidebar">        
        <nav class="mt-1">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                <li class="nav-item has-treeview menu-open">
                  <a href="{{ url('/admin-dashboard') }}" class="nav-link text-white @if(preg_match('/admin-dashboard/',$url)) active @endif">
                    <i class="nav-icon fas fa-tachometer-alt"></i>
                    <p> Dashboard </p>
                  </a>
                </li>

            
                <li class="nav-item">
                    <a href="products.blade.php" class="nav-link">
                      <p> Category <i class="fas fa-angle-left right"></i>
                      </p>
                    </a>
                    <ul class="nav nav-treeview">
                      <li class="nav-item">
                        <a href="{{route('category.add')}}" class="nav-link">
                          <i class="fa fa-plus-circle" aria-hidden="true"></i>
                          <p> Add category </p>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a href="{{route('category.display')}}" class="nav-link">
                          <i class="far fa-circle nav-icon"></i>
                          <p>view categories</p>
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="nav-item">
                    <a href="" class="nav-link">
                      <p> Products <i class="right fas fa-angle-left"></i>
                      </p>
                    </a>
                    <ul class="nav nav-treeview">
                      <li class="nav-item">
                        <a href="{{url('admin/Add_product')}}" class="nav-link">
                          <i class="fa fa-plus-circle"></i>
                          <p>Add product</p>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a href="{{route('product.display')}}" class="nav-link">
                          <i class="far fa-circle nav-icon"></i>
                          <p>View products</p>
                        </a>
                      </li>
                    </ul>
                   </li>
               <a href="{{route('admin.orders')}}" class="nav-link">
                    <p> Orders </p>
                  </a>
            </ul>
        </nav>  
    </div>
</aside>

















