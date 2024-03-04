@extends('users.user_design')
@section('content')

    <div class="dashboard-content-wrap">
        <div class="dashboard-menu-toggler btn theme-btn theme-btn-sm lh-28 theme-btn-transparent mb-4 ml-3">
            <i class="la la-bars mr-1"></i> Dashboard Nav
        </div>
        @if(count($questions) > 0)
        <div class="container-fluid">
            <div class="float-right text-center">
                <p class="fs-13" data-toggle="tooltip" title="Exam paper will get submit after time is over"><i class="fa fa-clock"></i> Remaining Time (Mins) <i class="la la-info-circle"></i></p>
                <div id="countdown" class="badge badge-pill badge-danger fs-22"></div>
            </div>
            <h3 class="fs-28 font-weight-semi-bold">Exam </h3>
            <p>Solve {{settings('questions')}} Questions in {{settings('examtime')}} minutes</p>
        </div>
        <div class="dashboard-cards pb-5 mt-3">
        
            <form method="POST" action="{{url('course/start-exam/'.Request()->course_id)}}" name="examform" id="examform">@csrf
                @foreach($questions as $que)
                <input type="hidden" name="question[]" value="{{$que->question}}">
                <div class="card card-item card-item-list-layout">
                    <div class="card-body">
                        <h5 class="card-title fs-16"><span class="badge badge-pill badge-dark fs-15">Que. {{$loop->index+1}}</span> <?php echo nl2br($que->question) ?></h5>
                        <hr class="mt-2 mb-2">
                        <textarea class="form-control mb-2" name="answer[]" rows="2" placeholder="Enter answer..."></textarea>
                    </div>
                </div>
                @endforeach
                <div class="form-group">
                    <button type="submit" class="btn theme-btn" onclick="return confirm('Are you sure want submit exam?')"> Submit</button>
                </div>
            </form>
            
        </div>
        @else
        <div class="alert alert-info">
            <strong>Question Paper Not Available At This Moment Please Contact Admin</strong>
        </div>
        <a href="{{ url('users/courses') }}"><button class="btn theme-btn d-none d-lg-inline-block"><i class="fa fa-angle-double-left"></i> Back </button></a>
        @endif
    </div>

<script>
    // submit form after timer ends
    window.onload=function(){ 
        var examtime = {{settings('examtime')}}*60000; //in ms
        window.setTimeout(function() { document.examform.submit(); }, examtime);
    };

    // exam timer
    const startingMinutes = {{settings('examtime')}};
    let time = startingMinutes * 60; // ==> 10*60 == 600ms
    const countdownElement = document.getElementById("countdown");
    const stopButton = document.getElementById("stopButton");
    updateCountdown();
    let clearTimer = setInterval(updateCountdown, 1000);

    let audio = new Audio("https://mobcup.net/ringtone/ding-ding-ding-otu6zivp/download/mp3");

    function updateCountdown() {
      const minutes = Math.floor(time / 60); // ==> 600/60 == 10 mins
      let seconds = time % 60;
      seconds = seconds < 10 ? "0" + seconds : seconds;
      countdownElement.innerHTML = `${minutes}<span>:</span>${seconds}`;
      time--;
      if (time < 0) {
        clearInterval(clearTimer);
        audio.play(); // Play Dung Sound on Finish the Timer
        stopButton.disabled = true; // Disable Button if timer end
      }
    }
</script>
<script>
    const onConfirmRefresh = function (event) {
        event.preventDefault();
        return event.returnValue = "Are you sure you want to leave the page?";
    }

    window.addEventListener("beforeunload", onConfirmRefresh, { capture: true });
</script>
@endsection