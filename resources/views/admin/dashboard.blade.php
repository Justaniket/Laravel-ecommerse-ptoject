@php
    $email = session('adminSession');
  
    use App\Admin;
    use App\Models\about;
    use App\Models\domainsexplore;
    use App\Models\Services;
    use App\Models\products;
    use App\Models\gallery;
    use App\Models\Blogs;
    use App\Models\careers;
    use App\Models\Enquiry;
    use App\Models\User;
    use App\Models\Traineruser;
    use App\Models\Project;
    use App\Models\Ideaenquiry;
    use App\Models\Donateenquiry;

 
   
  
  

  
@endphp

@extends('layouts/adminLayout/admin_design')
@section('content')

<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">Dashboard</h1>
                </div>
            </div>
        </div>
    </div>

    
</div>
@endsection