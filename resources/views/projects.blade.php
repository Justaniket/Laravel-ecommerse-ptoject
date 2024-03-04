@extends('layouts.frontLayout.front_design')
@section('content')

<section class="breadcrumb-area section-padding img-bg-2">
    <div class="overlay-bg"></div>
    <div class="container">
        <div class="breadcrumb-content d-flex flex-wrap align-items-center justify-content-between">
            <div class="section-heading">
                <h2 class="section__title text-white">Projects</h2>
            </div>
            <ul class="generic-list-item generic-list-item-white generic-list-item-arrow d-flex flex-wrap align-items-center">
                <!--<li><a href="{{url('/')}}">Home</a></li>-->
                <!--<li>Projects</li>-->
            </ul>
        </div>
    </div>
</section>

<section class="blog-area section--padding">
    <div class="container">
        @if(Session::has('flash_message_success'))
          <div class="alert alert-success alert-block">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <strong>{!! session('flash_message_success') !!}</strong>
          </div>
          @endif
            <div class="d-flex">
                <!--<div class="col-lg-3">-->
                <!--    <div class="form-group mt-2 mb-2">-->
                <!--        @php $projectpe = DB::table('project')->where('status','0')->orderBy('id','DESC')->get();  @endphp-->
                <!--        <select class="select-control form-control" required="required">-->
                <!--            <option value="">-- Pending Projects --</option>-->
                <!--            @foreach($projectpe as $row)    -->
                <!--            <option>{{$row->title}}</option>-->
                <!--            @endforeach-->
                <!--        </select>-->
                <!--    </div>-->
                <!--</div>-->
                <!--<div class="col-lg-3">-->
                <!--    <div class="form-group mt-2 mb-2">-->
                <!--        @php $projectpe = DB::table('project')->where('status','1')->orderBy('id','DESC')->get();  @endphp-->
                <!--        <select class="select-control form-control" required="required" onchange="this.form.submit()">-->
                <!--            <option value="">-- Approved Projects --</option>-->
                <!--            @foreach($projectpe as $row)    -->
                <!--            <option>{{$row->title}}</option>-->
                <!--            @endforeach-->
                <!--        </select>-->
                <!--    </div>-->
                <!--</div>-->
                <div class="col-lg-12 col-md-3">
                    <button style="float: right;" class="btn theme-btn d-none d-lg-inline-block" data-toggle="modal" data-target="#modalContactFormproject"><i class="fa fa-plus"></i> Upload Your Project Here </button>
                </div>
            </div>    
        
        <div class="row pt-4">
            @if(count($project) > 0)
            @foreach($project as $project)
            <div class="col-lg-12">
                <div class="card card-item card-preview card-item-list-layout" >
                    <div class="card-image">
                        <a href="{{url('projects/'.($project->id).'/'.Str::slug($project->title))}}" class="d-block" style="max-height: 185px;">
                            <img class="card-img-top lazy" src="{{asset('images/backend_images/project/'.$project->image)}}" data-src="{{asset('images/backend_images/project/'.$project->image)}}" alt="Card image cap">
                        </a>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title mt-4"><a href="{{url('projects/'.($project->id).'/'.Str::slug($project->title))}}">{{$project->title}}</a></h5>
                        <p class="card-text">{{ Str::limit(strip_tags($project->description), 50)}}</p>  
                        <div class="rating-wrap d-flex align-items-center py-2 float-right">
                        </div>
                    </div>
                </div>
            </div>
            
            @endforeach
            @else
            <div class="alert alert-info w-100">
                No Projects Uploaded.
            </div>
            @endif
        </div>
        
    </div>
</section>





<!-- form modal -->
<div class="modal fade" id="modalContactFormproject" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="backdrop-filter: brightness(0.2);">
    <div class="modal-dialog modal-dialog-centered " role="document">
        <div class="modal-content">
            <div class="">
                <div class="row">
                   <!-- <div class="col-md-6 bg-purpple"> <img src="images/frontend_images/idea.png" class="w-100 "> </div>  -->
                    <div class="col-md-12 p-5">
                        <form action="{{ url('admin/add-project') }}" method="POST" enctype="multipart/form-data" id="projectForm">@csrf
                            {{-- <input type="hidden" name="_token" value="q8isoeVN0k2V7EHgj9YyGZeSp78x1LXAk8chKZmz"> --}}
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
                            <h4 class="modal-title w-100 font-weight-bold mb-3">Upload your project here</h4>
                            <div class="">
                                <div class="md-form mb-3">
                                    <input type='text' name='title' id='title' class="form-control" placeholder="Project Name *" required="required" pattern="[a-zA-Z ]+" data-error="Please enter your Name"> 
                                </div>
                                <div class="md-form mb-3">
                                    <textarea type='text' name='description' id='name' class="form-control" placeholder="Project Description *" required="required" data-error="Please enter your Idea"></textarea> 
                                </div>
                                <div class="md-form mb-3">  
                                    <label class="required"> Image</label>
                                    <input type="file" name="image" class="form-control" accept="image/*" required>
                                    <small>Note: Image size should be less than 500KB</small>
                                </div>
                                <div class="modal-footer d-flex justify-content-center">
                                    <button class="btn theme-btn d-none d-lg-inline-block w-100" value='Submit Form' type="submit">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection