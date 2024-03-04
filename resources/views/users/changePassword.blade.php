
@extends('users.user_design')
@section('content')
 <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
<div class="content-body">
    <div class="container-fluid">
        <div class="dashboard-content-wrap">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Change Password</h4>
                    </div>
                    <div class="card-body">
                        <div class="basic-form">
                            @if(Session::has('flash_message_error'))
                            <div class="alert alert-danger" role="alert">
                              <strong>{!! session('flash_message_error') !!}</strong>
                              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            @endif
                            @if(Session::has('flash_message_success'))          
                            <div class="alert alert-success alert-success" role="alert">
                              <strong>{!! session('flash_message_success') !!}</strong>
                              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            @endif
                            <form  method="post" action="{{ url('/changePassword') }}" >@csrf
                                <div class="row wow fadeIn">
                                    <div class="input-box col-lg-8">
                                        <label class="label-text">Old Password</label>
                                        <div class="form-group">
                                            <input class="form-control form--control" type="password" name="password" placeholder="Old Password" required>
                                            <span class="la la-lock input-icon"></span>
                                        </div>
                                    </div><!-- end input-box -->
                                    <div class="input-box col-lg-8">
                                        <label class="label-text">New Password</label>
                                        <div class="form-group">
                                            <input class="form-control form--control" type="password" name="new_password" placeholder="New Password" required>
                                            <span class="la la-lock input-icon"></span>
                                        </div>
                                    </div><!-- end input-box -->
                                    <div class="input-box col-lg-8">
                                        <label class="label-text">Confirm New Password</label>
                                        <div class="form-group">
                                            <input class="form-control form--control" type="password" name="re_password" placeholder="Confirm New Password" required>
                                            <span class="la la-lock input-icon"></span>
                                        </div>
                                    </div><!-- end input-box -->
                                    <div class="input-box col-lg-12 py-2">
                                        <button class="btn theme-btn"  type="submit" value="Update Password" id="changepwd">Change Password</button>
                                    </div><!-- end input-box -->                                       
                                </div>         
                                <div class="spacer-30"></div>
                                <!-- <input type="submit" id="signup" class="btn-main" value="Update Password"> -->
                            </form>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</div>






<script>
    $("#show-oldpass").click(function() {
        $(this).toggleClass("fa-eye-slash fa-eye");
        var input = $($(this).attr("toggle"));
        if(input.attr("type") == "password") {
        input.attr("type", "text");
        } else {
        input.attr("type", "password");
        }
    });
</script>
<script>
    $("#show-newpass").click(function() {
        $(this).toggleClass("fa-eye-slash fa-eye");
        var input = $($(this).attr("toggle"));
        if(input.attr("type") == "password") {
        input.attr("type", "text");
        } else {
        input.attr("type", "password");
        }
    });
</script>
<script>
    $("#show-repass").click(function() {
        $(this).toggleClass("fa-eye-slash fa-eye");
        var input = $($(this).attr("toggle"));
        if(input.attr("type") == "password") {
        input.attr("type", "text");
        } else {
        input.attr("type", "password");
        }
    });
</script>



@endsection

