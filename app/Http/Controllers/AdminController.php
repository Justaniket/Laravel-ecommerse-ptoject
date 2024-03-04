<?php

namespace App\Http\Controllers;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use App\Models\JoinUsEnq;
use App\Models\Banner;
use App\Models\CollaborateEnq;
use App\Models\ExamPapers;
use App\Models\Services;
use App\Models\CourseQue;
use App\Models\ExamQueAns;
use App\Models\ExamPaperGrade;
use App\Models\Setting;
use App\Models\Traineruser;
use App\Models\Kaizen;
use App\Models\Offline;
use App\Admin;
use Session;
use Image;
use Auth;
use PDF;
use DB;

class AdminController extends BaseController {

    public function viewDashboard(Request $request){
        return view('admin.dashboard');
    }

    public function login(Request $request){
        if($request->isMethod('post')){
            $data = $request->input();
            $adminCount = Admin::where(['email' => $data['email'],'password'=>md5($data['password']),'status'=>1])->count();
            if($adminCount > 0){
                Session::put('adminSession', $data['email']);
                return redirect('/admin-dashboard');
            }else{
                return redirect('/admin-login')->with('flash_message_error','Invalid Email or Password');
            }
    }
        return view('admin.admin_login');
    }

    public function logout(){
        Session::flush();
        return redirect('/admin-dashboard')->with('flash_message_success','Logged Out Successfully');
    }

    public function setting(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            $adminCount = Admin::where(['email' => Session::get('adminSession'),'password'=>md5($data['current_pwd'])])->count();
            if($adminCount == 1){
                $password = md5($data['new_pwd']);
                $email = $data['email'];
                $confirm_password = md5($data['confirm_pwd']);
                if($password == $confirm_password)
                {
                    Admin::where('email',Session::get('adminSession'))->update(['password'=>$password]);
                    return redirect('/admin/admin-setting')->with('flash_message_success','Password Updated Successfully!');
                }else{
                    return redirect('/admin/admin-setting')->with('flash_message_error','New password and confirm password must be same!');
                }
            }else{
                return redirect('/admin/admin-setting')->with('flash_message_error','Incorrect Current Password!');
            }
        }
        $admin = Admin::first();
        return view('admin.admin_setting')->with(compact('admin'));
    }

    public function saveSettings(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            // dd($data);

            Setting::where('type','admin_email')->update(['value'=>$data['admin_email']]);
            Setting::where('type','zillioncard')->update(['value'=>$data['zillioncard']]);
            Setting::where('type','zcard_disc')->update(['value'=>$data['zcard_disc']]);
            Setting::where('type','zcard_category')->update(['value'=>json_encode($data['zcard_category'])]);
            Setting::where('type','questions')->update(['value'=>$data['questions']]);
            Setting::where('type','examtime')->update(['value'=>$data['examtime']]);
            Setting::where('type','examattempts')->update(['value'=>$data['examattempts']]);
            Setting::where('type','exammarks')->update(['value'=>$data['exammarks']]);

            return redirect()->back()->with('flash_message_success','Settings updated successfully');                
        }
    }

    public function resetPassword(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            // dd($data);
            $adminCount = Admin::where('email',$data['email'])->count();
            if($adminCount==0){
                return redirect()->back()->with('flash_message_error','We can not find a user with this email address.');
            }

            $adminDetails = Admin::where('email',$data['email'])->first();
            $random_password = mt_rand(100000, 999999);
            $new_password = md5($random_password);

            Admin::where('email',$data['email'])->update(['password'=>$new_password]);

            //Password sent on mail notification

            // $email = $data['email'];
            // $messageData = [
            //     'email'=>$email,
            //     'password'=>$random_password
            // ];

            // Mail::send('emails.adminforgotpassword',$messageData,function($message) use($email){
            //     $message->to($email)->subject('New Password - Export Edge Admin.');
            // });
            return redirect()->back()->with('flash_message_success','Password sent on your email, please check your Email.');
            }
        }

     public function addAdmin(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            $admin = new Admin;

            $admin->email = $data['email'];
            $admin->password = md5($data['password']);

            $adminDetails = Admin::where('email',$data['email'])->first();
            if($adminDetails != null){
                return redirect()->back()->with('flash_message_success','This email is already used, please try another one.');
            }else{
                $admin->save();

                //Add Admin Notification 
                // $messageData = [
                //     'email'=>$data['email'],
                //     'password'=>$data['password']
                // ];
                // $email = $data['email'];
                // Mail::send('emails.admin_add_notification',$messageData,function($message) use($email){
                //     $message->to($email)->subject('Concerto - Admin Credentials');
                // });
               // Add Admin Notification End

                return redirect('/admin/view-admin/')->with('flash_message_success','Admin has been Added Successfully');  
            }
        }
        return view('admin.admin.add_admin');
    }

    public function viewAdmin(Request $request){
        $admin = Admin::orderBy('id','DESC')->get();
        return view('admin.admin.view_admin')->with(compact('admin'));
    }

    public function chnageAdminStatusZero(Request $request, $id){
        Admin::where('id',$id)->update(['status'=>'0']);
        return redirect()->back()->with('flash_message_success','Admin has been inactive.');          
    }

    public function chnageAdminStatusOne(Request $request, $id){
        Admin::where('id',$id)->update(['status'=>'1']);
        return redirect()->back()->with('flash_message_success','Admin is active now.');          
    }
    
    public function deleteAdmin(Request $request, $id){
        Admin::where(['id'=>$id])->delete();
        return redirect('/admin/view-admin/')->with('flash_message_success','Admin Deleted Successfully.');
    }
    
    public function viewJoinusEnq(Request $request){
        $enq = JoinUsEnq::orderBy('id','DESC')->get();
        return view('admin.enquiry.view_joinus_enq')->with(compact('enq'));
    }
    
    public function deleteJoinusEnq(Request $request, $id){
        JoinUsEnq::where(['id'=>$id])->delete();
        return redirect()->back()->with('flash_message_success','Enquiry deleted successfully.');
    }

    public function addBanner(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            // dd($data);
            $banner = new Banner;
            $banner->title = $data['title'];
            $banner->url = $data['url'];

            if($request->hasFile('image')) {
                $image_tmp = $request->image;
                $filename = time() . '.' . $image_tmp->clientExtension();
                if ($image_tmp->isValid()) {
                    $extension = $image_tmp->getClientOriginalExtension();
                    $filename = rand(111, 99999) . '.' . $extension;
                    $collaborate_path = 'images/frontend_images/banners/'.$filename;
                    Image::make($image_tmp)->save($collaborate_path);
                    $banner->image = $filename;
                }
            }
            $banner->save();
            return redirect('admin/view-banners')->with('flash_message_success','New record added');
        }
        return view('admin.banners.add_banner');
    }
    
    public function editBanner(Request $request, $id){
        if($request->isMethod('post')){
            $data = $request->all();

            if ($request->hasFile('image')) {
                $image_tmp = $request->image;
                $filename = time() . '.' . $image_tmp->clientExtension();
                if ($image_tmp->isValid()) {
                    $extension = $image_tmp->getClientOriginalExtension();
                    $filename = rand(1111, 99999) . '.' . $extension;
                    $collaborate_path = 'images/frontend_images/banners/' . $filename;
                    Image::make($image_tmp)->save($collaborate_path);
                }
            } else if (!empty($data['current_image'])) {
                $filename = $data['current_image'];
            } else {
                $filename = '';
            }
            Banner::where('id',$id)->update(['title'=>$data['title'],'url'=>$data['url'],'image'=>$filename]);
            return redirect()->back()->with('flash_message_success','Record updated successfully');
        }
        $banner = Banner::where('id',$id)->first();
        return view('admin.banners.edit_banner')->with(compact('banner'));
    }

    public function viewBanners(){
        $banners = Banner::orderBy('id','DESC')->get();
        return view('admin.banners.view_banners')->with(compact('banners'));
    }

    public function viewCollaborateEnq(){
        $enq = CollaborateEnq::orderBy('id','DESC')->get();
        return view('admin.enquiry.view_collaborate_enq')->with(compact('enq'));
    }
    
    public function deleteCollaborateEnq(Request $request, $id){
        CollaborateEnq::where(['id'=>$id])->delete();
        return redirect()->back()->with('flash_message_success','Enquiry deleted successfully.');
    }

    
    public function viewExamPaperAns(Request $request){
        $course_id = null;
        $user_id = null;
        $exams = ExamQueAns::select('exam_ans.course_id','exam_ans.user_id','exam_ans.session_id','exam_ans.created_at','services.name as course_name','users.name as user_name','exam_papers_grades.grades','exam_papers_grades.out_of')
            ->join('services','services.id','exam_ans.course_id')
            ->join('users','users.id','exam_ans.user_id')
            ->leftJoin('exam_papers_grades','exam_papers_grades.session_id','exam_ans.session_id')
            ->groupBy('course_id','user_id','session_id')
            ->orderBy('exam_ans.id','DESC');

        if($request->has('course_id') && $request->course_id != null){
            $exams = $exams->where('exam_ans.course_id',$request->course_id);
            $course_id = $request->course_id;
        } 
        if($request->has('user_id') && $request->user_id != null){
            $exams = $exams->where('exam_ans.user_id',$request->user_id);
            $user_id = $request->user_id;
        }

        $exams = $exams->paginate(10);
        return view('admin.services.view_exam_answers')->with(compact('exams','course_id','user_id'));
    }

    public function gradeExamPaperAns(Request $request,$session_id){
        if($request->isMethod('post')){
            $data = $request->all();
            // dd($data);
            $grades = ExamPaperGrade::where('session_id',$session_id)->first();
            if(!empty($grades)){
                ExamPaperGrade::where('session_id',$session_id)->update(['grades'=>$data['grades'],'remarks'=>$data['remarks']]);
                return redirect('admin/course/view-exam-papers')->with('flash_message_success','Exam paper grades updated successfully');
            }else{
                $row = new ExamPaperGrade();
                $row->course_id = $data['course_id'];
                $row->user_id = $data['user_id'];
                $row->session_id = $data['session_id'];
                $row->grades = $data['grades'];
                $row->out_of = settings('exammarks');
                $row->remarks = !empty($data['remarks']) ? $data['remarks'] : null;
                $row->save();

                return redirect('admin/course/view-exam-papers')->with('flash_message_success','Exam paper graded successfully');
            }
        }
        $ExamPaper = ExamQueAns::select('exam_ans.*','services.name as course_name','users.name as user_name','services.id as course_id','users.id as user_id')
            ->join('services','services.id','exam_ans.course_id')
            ->join('users','users.id','exam_ans.user_id')
            ->where('session_id',$session_id)
            ->paginate(10);

        $grades = ExamPaperGrade::where('session_id',$session_id)->first();
            // dd($ExamPaper);
        return view('admin.services.view_admin_exam_answers')->with(compact('ExamPaper','grades'));
    }

    public function sendExamPaperCert(Request $request, $session_id){
        $examDetails = ExamPaperGrade::select('exam_papers_grades.*','services.name as course_name','users.name as user_name','users.email as user_email')
            ->join('services','services.id','exam_papers_grades.course_id')
            ->join('users','users.id','exam_papers_grades.user_id')
            ->where('exam_papers_grades.session_id',$session_id)
            ->first();

        $total = null;
        $percentage = NULL;
        $grade = NULL;

        $total = $examDetails->grades;
        $percentage = ($total / $examDetails->out_of) * 100;
        $grade = grade($percentage);
        //dd($grade);
        $pdf = PDF::loadView('certificate.course_exam_certificate', compact('examDetails','grade'));
        // return $pdf->download('course-certificate.pdf', $pdf);
        //return $pdf->stream();
        $pdf = $pdf->output();

        // send enq mail to admin
        $messageData = [
            'examDetails' => $examDetails,
        ];
        //$email = config('app.admin_mail');
        // Mail::send('emails.course_exam_certificate',$messageData,function($message) use($email){
        //     $message->to($email)->subject('New Donation Received - Zillion Link');    
        // });

        // send certificate mail to user
        $email1 = $examDetails->user_email;
        Mail::send('emails.course_exam_certificate',$messageData,function($message) use($email1, $pdf){
            $message->to($email1)->subject('Course Completion Certificate - Zillion Link');  
            $message->attachData($pdf, 'course-certificate.pdf');  
        });

        return redirect()->back()->with('flash_message_success','Certificate sent successfully');
    }
    
    public function sendTrainerCert(Request $request, $id){
        $trainerDetails = Traineruser::select('id','name','email','application')->where('id',$id)->first();
        
        $pdf = PDF::loadView('certificate.trainer_certificate', compact('trainerDetails'));
        // return $pdf->download('course-certificate.pdf', $pdf);
         //return $pdf->stream();
        $pdf = $pdf->output();

        // send enq mail to admin
        $messageData = [
            'trainerDetails' => $trainerDetails,
        ];
        //$email = config('app.admin_mail');
        // Mail::send('emails.course_exam_certificate',$messageData,function($message) use($email){
        //     $message->to($email)->subject('New Donation Received - Zillion Link');    
        // });

        // send certificate mail to user
        $email1 = $trainerDetails->email;
        Mail::send('emails.trainer_certificate',$messageData,function($message) use($email1, $pdf){
            $message->to($email1)->subject('Trainer Certificate');  
            $message->attachData($pdf, 'trainer-certificate.pdf');  
        });

        return redirect()->back()->with('flash_message_success','Certificate sent successfully to trainer'.$trainerDetails->name);
    }

    public function sendKaizenCert(Request $request, $id){
        $kaizenDetails = Kaizen::select('id','name','email','date','category')->where('id',$id)->first();
        
        $pdf = PDF::loadView('certificate.kaizen_certificate', compact('kaizenDetails'));
        // return $pdf->download('course-certificate.pdf', $pdf);
         //return $pdf->stream();
        $pdf = $pdf->output();

        // send enq mail to admin
        $messageData = [
            'kaizenDetails' => $kaizenDetails,
        ];
        //$email = config('app.admin_mail');
        // Mail::send('emails.course_exam_certificate',$messageData,function($message) use($email){
        //     $message->to($email)->subject('New Donation Received - Zillion Link');    
        // });

        // send certificate mail to user
        $email1 = $kaizenDetails->email;
        Mail::send('emails.kaizen_certificate',$messageData,function($message) use($email1, $pdf){
            $message->to($email1)->subject('Kaizen Competition Certificate');  
            $message->attachData($pdf, 'kaizen-certificate.pdf');  
        });

        return redirect()->back()->with('flash_message_success','Certificate sent successfully' .$kaizenDetails->name);
    }
    
    public function sendOfflineCert(Request $request, $id){
        $offlineDetails = Offline::select('id','name','course','date','number','grade')->where('id',$id)->first();
        
        $pdf = PDF::loadView('certificate.course_certificate', compact('offlineDetails'));
        // return $pdf->download('course-certificate.pdf', $pdf);
         return $pdf->stream();
        $pdf = $pdf->output();

        // send enq mail to admin
        $messageData = [
            'offlineDetails' => $offlineDetails,
        ];
        //$email = config('app.admin_mail');
        // Mail::send('emails.course_exam_certificate',$messageData,function($message) use($email){
        //     $message->to($email)->subject('New Donation Received - Zillion Link');    
        // });

        // send certificate mail to user
        $email1 = $offlineDetails->email;
        Mail::send('emails.course_certificate',$messageData,function($message) use($email1, $pdf){
            $message->to($email1)->subject('Course Certificate');  
            $message->attachData($pdf, 'course-certificate.pdf');  
        });

        return redirect()->back()->with('flash_message_success','Certificate sent successfully' .$kaizenDetails->name);
    }

}