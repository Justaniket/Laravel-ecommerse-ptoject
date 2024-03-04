@extends('users.user_design')
@section('content')

    <div class="dashboard-content-wrap">
        <div class="dashboard-menu-toggler btn theme-btn theme-btn-sm lh-28 theme-btn-transparent mb-4 ml-3">
            <i class="la la-bars mr-1"></i> Dashboard Nav
        </div>
        <div class="container-fluid">
            <h3 class="fs-22 font-weight-semi-bold">My Courses</h3>
        </div>
        @if(Session::has('flash_message_error'))
        <div class="alert alert-error alert-block mt-2" role="alert">
            {!! session('flash_message_error') !!}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        @endif
        @if(Session::has('flash_message_success'))
        <div class="alert alert-success alert-block mt-2" role="alert">
            {!! session('flash_message_success') !!}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        @endif
        <div class="dashboard-cards mb-5 mt-3">
            @foreach($courses as $course)
            {{-- <input type="hidden" id="course_id" name="course_id" value="{{$course->course_id}}"> --}}
            <div class="card card-item card-item-list-layout">
                <div class="card-image">
                    <a href="#" class="d-block">
                        <img class="card-img-top" src="{{asset('images/backend_images/services/'.$course->image)}}" style="max-height: 300px; object-fit: cover;" alt="{{$course->name}}">
                    </a>
                </div>
                <div class="card-body">
                    <h6 class="ribbon ribbon-blue-bg fs-14 mb-1">{{$course->type}}</h6>
                    <h5 class="card-title"><a href="#">{{$course->name}}</a></h5>
                    <p class="card-text fs-15">{{ Str::limit(strip_tags($course->description),100) }}</p>
                    <ul class="card-duration d-flex align-items-center fs-15 pb-2">
                        <li class="mr-2">
                            <span class="text-black">Amount:</span>
                            <span class="badge badge-secondary text-white fs-14 font-weight-light">₹{{$course->purchase_price}}</span>
                        </li>
                        <li class="mr-2">
                            <span class="text-black">Purchase on: </span>
                            <span>{{date('d M Y', strtotime($course->purchase_date))}}</span>
                        </li>
                    </ul>
                    <ul class="card-duration d-flex align-items-center fs-15 pb-2">
                        <li class="mr-2">
                            @php 
                                $attempt = App\Models\ExamQueAns::where(['course_id'=>$course->course_id,'user_id'=>Auth::User()->id])
                                    ->groupBy('course_id','user_id','session_id')
                                    ->get();
                            @endphp
                            @if(count($attempt) != settings('examattempts'))
                            <button class="btn btn-success btn-sm" onclick="startExam({{$course->course_id}})" data-toggle="modal" data-target="#startExamModal"><i class="fa fa-file-alt"></i> Start Exam <span class="badge badge-pill badge-light" data-toggle="tooltip" title="{{settings('examattempts')-count($attempt)}} attempt remaining">{{settings('examattempts')-count($attempt)}}</span></button>
                            @else
                            <button class="btn btn-success btn-sm disabled" disabled data-toggle="tooltip" title="You've used all attempts"><i class="fa fa-file-alt"></i> Start Exam <span class="badge badge-pill badge-light">0</span></button>
                            &nbsp;
                            {{-- <a href="{{url('course/download-certificate/'.$course->session_id)}}" data-toggle="tooltip" title="Download Certificate" class="btn btn-info btn-sm"><i class="fa fa-certificate"></i> Certificate </a> --}}
                            @endif
                            {{-- <a href="{{url('course/start-exam/'.$course->course_id)}}" class="btn btn-success btn-sm"><i class="fa fa-file-alt"></i> Start Exam <span class="badge badge-pill badge-light">2</span></a> --}}
                        </li>
                        <!--@if($course->session_id)-->
                        <!--<li class="mr-2">-->
                        <!--    <a href="{{url('course/download-certificate/'.$course->session_id)}}" data-toggle="tooltip" title="Download Certificate" class="btn btn-info btn-sm"><i class="fa fa-certificate"></i> Certificate</a>-->
                        <!--</li>-->
                        <!--@endif-->
                    </ul>
                </div>
            </div>
            @endforeach
            <div class="card card-item card-item-list-layout d-none">
                <div class="card-image">
                    <a href="#" class="d-block">
                        <img class="card-img-top" src="{{asset('images/frontend_images/img10.jpg')}}" alt="Card image cap">
                    </a>
                    <div class="course-badge-labels">
                        <div class="course-badge">Bestseller</div>
                        <div class="course-badge blue">-39%</div>
                    </div>
                </div>
                <div class="card-body">
                    <h6 class="ribbon ribbon-blue-bg fs-14 mb-3">All Levels</h6>
                    <h5 class="card-title"><a href="#">The Business Intelligence Analyst Course 2021</a></h5>
                    <p class="card-text"><a href="#">Jose Portilla</a></p>
                    <ul class="card-duration d-flex align-items-center fs-15 pb-2">
                        <li class="mr-2">
                            <span class="text-black">Status:</span>
                            <span class="badge badge-danger text-white">Cancelled</span>
                        </li>
                        <li class="mr-2">
                            <span class="text-black">Duration:</span>
                            <span>3 hours 20 min</span>
                        </li>
                    </ul>
                    <div class="d-flex justify-content-between align-items-center">
                        <p class="card-price text-black font-weight-bold">129.99</p>
                        <!--<div class="card-action-wrap pl-3">-->
                        <!--    <a href="#" class="icon-element icon-element-sm shadow-sm cursor-pointer ml-1 text-success" data-toggle="tooltip" data-placement="top" data-title="View"><i class="la la-eye"></i></a>-->
                        <!--    <div class="icon-element icon-element-sm shadow-sm cursor-pointer ml-1 text-secondary" data-toggle="tooltip" data-placement="top" data-title="Edit"><i class="la la-edit"></i></div>-->
                        <!--    <div class="icon-element icon-element-sm shadow-sm cursor-pointer ml-1 text-danger" data-toggle="tooltip" data-placement="top" title="Delete">-->
                        <!--        <span data-toggle="modal" data-target="#itemDeleteModal" class="w-100 h-100 d-inline-block"><i class="la la-trash"></i></span>-->
                        <!--    </div>-->
                        <!--</div>-->
                    </div>
                </div>
            </div>
        </div>
        <div class="text-center py-3">
            <nav aria-label="Page navigation example" class="pagination-box">
                <ul class="pagination justify-content-center">
                    {{ $courses->links("pagination::bootstrap-4") }}
                </ul>
            </nav>
            {{-- <p class="fs-14 pt-2">Showing 1-4 of 16 results</p> --}}
        </div>
    </div>

    <div class="modal fade modal-container" id="startExamModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalTitle" aria-hidden="true" style="backdrop-filter: brightness(0.3)">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-body text-center">
                    <span class="la la-file-alt fs-60 text-warning"></span>
                    <h4 class="modal-title fs-19 font-weight-semi-bold pt-2 pb-1" id="ModalTitle">Start Course Exam</h4>
                    <div class="course-badge-labels">
                        <div class="course-badge fs-14 font-weight-light"><i class="la la-clock"></i> Exam Duration: {{settings('examtime')}} Mins</div><br>
                        <div class="course-badge fs-14 font-weight-light"> <i class="la la-file-alt"></i> Questions to be solved: {{settings('questions')}}</div>
                        <p>Note: Do not refresh page</p>
                    </div>
                    <div class="btn-box pt-4">
                        <a href="" id="startbtn" class="btn btn-sm btn-success lh-30"><i class="la la-check-circle"></i> Ok, Start Exam</a>
                        <button type="button" class="btn font-weight-medium mr-3" data-dismiss="modal"><i class="la la-times-circle"></i>  Cancel</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

<script>
    function startExam(course_id){
        $('#startbtn').attr('href', '{{url('course/start-exam/')}}'+'/'+course_id);      
    }
</script>

@endsection