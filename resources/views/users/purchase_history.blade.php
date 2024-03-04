@extends('users.user_design')
@section('content')

    <div class="dashboard-content-wrap">
        <div class="dashboard-menu-toggler btn theme-btn theme-btn-sm lh-28 theme-btn-transparent mb-2 ml-3">
            <i class="la la-bars mr-1"></i> Dashboard Nav
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
        <div class="dashboard-heading mb-2">
            <h3 class="fs-22 font-weight-semi-bold">Purchase History</h3>
        </div>
        <div class="table-responsive mb-2">
            <table class="table generic-table">
                <thead>
                    <tr>
                        <th scope="col">Orders ID</th>
                        <th scope="col">Course</th>
                        <th scope="col">Transaction ID</th>
                        <th scope="col">Date</th>
                        <th scope="col"></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($courses as $order)
                    <tr>
                        <th scope="row">
                            <ul class="generic-list-item">
                                <li>{{$order->id}}</li>
                            </ul>
                        </th>
                        <td>
                            <div class="media media-card align-items-center">
                                <a href="course-details.html" class="media-img">
                                    <img class="mr-3" src="{{asset('images/backend_images/services/'.$order->image)}}" alt="">
                                </a>
                                <div class="media-body">
                                    <h5><a class="fs-17" href="{{url('courses/'.$order->course_id.'/'.Str::slug($order->course_name))}}" target="_blank">{{$order->course_name}}</a>
                                        <p class="fs-15">₹ {{$order->price}}</p>
                                    </h5>
                                </div>
                            </div>
                        </td>
                        <td>
                            <ul class="generic-list-item">
                                <li>{{$order->razorpay_payment_id}}</li>
                            </ul>
                        </td>
                        <td>
                            <ul class="generic-list-item">
                                <li>{{date('d M Y', strtotime($order->created_at))}}</li>
                            </ul>
                        </td>
                        <td>
                            <ul class="generic-list-item">
                                <li><a href="{{url('course/download-invoice/'.$order->id)}}" class="btn btn-success btn-sm text-white"><i class="la la-file-download"></i> Invoice</a></li>
                            </ul>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection