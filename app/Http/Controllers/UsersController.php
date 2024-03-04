<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Country;
use App\Models\Cart;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use App\Exports\usersExport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Str;
use App\Models\Contact;
use App\Models\Order;
use App\Models\CourseQue;
use App\Models\Services;
use App\Models\ExamQueAns;
use App\Models\ExamPaperGrade;
use carbon\carbon;
use Session;
use Auth;
use PDF;
use DB;
use Image;

class UsersController extends Controller
{
    
    public function userLoginRegister(Request $request){
        return view('users.login_register');
    }

    public function register(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            $userCount = User::where('email',$data['email'])->count();
            if($userCount>0){
                return redirect()->back()->with('flash_message_error','Email already exists. Please user another email.'); 
            }else{
                $user = new User;
                $user->name = $data['name'];
                $user->email = $data['email'];
                $user->mobile = $data['mobile'];
                $user->password = bcrypt($data['password']);
                date_default_timezone_set('Asia/Kolkata');
                $user->created_at = date('Y-m-d H:i:s');
                $user->updated_at = date('Y-m-d H:i:s');
                $user->save();

                //send register email
                $email = $data['email'];
                $messageData = ['email'=>$data['email'],'name'=>$data['name']];
                Mail::send('emails.register',$messageData,function($message) use($email){
                    $message->to($email)->subject('Registration with Zillion link Account');
                });

                //send confirmation mail
                // $email = $data['email'];
                // $messageData = ['email'=>$data['email'],'name'=>$data['name'],'code'=>base64_encode($data['email'])];
                // Mail::send('emails.confirmation',$messageData,function($message) use($email){
                //     $message->to($email)->subject('Verify Email - Zillion link Account');
                // });

                Auth::attempt(['email'=>$data['email'],'password'=>$data['password'],'status'=>'1']);
                Session::put('frontSession',$data['email']);
                // return redirect('/users/dashboard');    
                return redirect('/');
            }
        }

        $meta_title = 'User Register | Zillion Link';
        return view('users.user_register');
    }

    public function login(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            // dd($data);
            $user = User::where('email',$data['email'])->first();
            if($user){
                if($user->status == 0){
                    return redirect()->back()->with('flash_message_error','Your account is disabled, To activate please verify your email.');
                }
                if(Auth::attempt(['email'=>$data['email'],'password'=>$data['password'],'status'=>'1'])){               
                    Session::put('frontSession',$data['email']);
    
                    // if(!empty(Session::get('session_id'))){
                    //     $session_id = Session::get('session_id');
                    //     DB::table('cart')->where('session_id',$session_id)->update(['user_email'=>$data['email']]);
                    // }                 
                    return redirect('/');
                }else{
                    return redirect()->back()->with('flash_message_error','Invalid username or password.');
                }
            }else{
                return redirect()->back()->with('flash_message_error','Invalid username or password.');
            }
        }

        $meta_title = 'User login | Zillion Link';
        return view('users.user_login');
    }

    public function changePassword(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            // dd($data);
            $adminCount = User::where(['id'=>Auth::User()->id])->first();
            if (Hash::check($data['password'], $adminCount->password)) {
                User::where('email',Auth::User()->email)->update(['password'=>bcrypt($data['new_password'])]);
                return redirect()->back()->with('flash_message_success','Password updated successfully');
            }else{
                return redirect()->back()->with('flash_message_error','Incorrect current password');
            }
        }
        $meta_title = 'Change Password | Zillion Link';
        return view('users.changePassword')->with(compact('meta_title'));    
    }

    public function account(Request $request){
        $user_id = Auth::user()->id;
        $userDetails = User::find($user_id);
        // echo "<pre>"; print_r($userDetails); die;
        $countries = Country::get();

        if($request->isMethod('post')){
            $data = $request->all();
            // echo "<pre>"; print_r($data); die;

            if(empty($data['name'])){
                return redirect()->back()->with('flash_message_error','Please enter your name to update account details.');
            }

            if(empty($data['address'])){
                $data['address'] = '';
            }

            if(empty($data['state'])){
                $data['state'] = '';
            }

            if(empty($data['country'])){
                $data['country'] = '';
            }

            if(empty($data['pincode'])){
                $data['pincode'] = '';
            }

            if(empty($data['mobile'])){
                $data['mobile'] = '';
            }

            $user = User::find($user_id);
            $user->name = $data['name'];
            $user->address = $data['address'];
            $user->city = $data['city'];
            $user->state = $data['state'];
            $user->country = $data['country'];
            $user->pincode = $data['pincode'];
            $user->mobile = $data['mobile'];
            $user->save();
            return redirect()->back()->with('flash_message_success','Account Details Updated Successfully.');
        }
        return view('users.account')->with(compact('countries','userDetails'));
    }

    public function chkUserPassword(Request $request){
        $data = $request->all();
        /*echo "<pre>"; print_r($data); die;*/
        $current_password = $data['current_pwd'];
        $user_id = Auth::User()->id;
        $check_password = User::where('id',$user_id)->first();
        if(Hash::check($current_password,$check_password->password)){
            echo "true"; die;
        }else{
            echo "false"; die;
        }
    }

    public function updatePassword(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            // echo "<pre>"; print_r($data); die;
            $old_pwd = User::where('id',Auth::User()->id)->first();
            $current_pwd = $data['current_pwd'];
            if(Hash::check($current_pwd,$old_pwd->password)){
                // Update password
                $new_pwd = bcrypt($data['new_pwd']);
                User::where('id',Auth::User()->id)->update(['password'=>$new_pwd]);
                return redirect()->back()->with('flash_message_success','Password updated successfully!');
            }else{
                return redirect()->back()->with('flash_message_error','Current Password is incorrect!');
            }
        }
    }

    public function logout(){
        Auth::logout();
        // Session::flush();
        Session::forget('frontSession');
        Session::forget('session_id');
        return redirect('/user-login/')->with('flash_message_success','You have been logged out.');
    }

    public function checkEmail(Request $request){
        $data = $request->all();
        $usersCount = User::where('email',$data['email'])->count();
        if($usersCount>0){
            echo "false";
        } else{
            echo "true"; die;
        }
    }

    public function viewUsers(){
        $users = User::orderBy('id','DESC')->get();
        // echo "<pre>"; print_r($users); die;
        return view('admin.users.view_users')->with(compact('users'));
    }

    public function confirmAccount($email){
        $email = base64_decode($email);
        $userCount = User::where('email',$email)->count();
        if($userCount > 0){
            $userDetails = User::where('email',$email)->first();
            if($userDetails->status == 1){
                return redirect('login-register')->with('flash_message_success','Your Email account is already activated. You can login now.');
            }else{
                User::where('email',$email)->update(['status'=>1]);

                // Send Welcome Email
                $messageData = ['email'=>$email,'name'=>$userDetails->name];
                Mail::send('emails.welcome',$messageData,function($message) use($email){
                    $message->to($email)->subject('Welcome to Yamuna Dairy Farm Products');
                });

                return redirect('login-register')->with('flash_message_success','Your Email account is activated. You can login now.');
            }
        }else{
            abort(404);
        }
    }

    public function forgotPassword(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            // echo "<pre>"; print_r($data); die;
            $userCount = User::where('email',$data['email'])->count();
            if($userCount==0){
                return redirect()->back()->with('flash_message_error','Please Enter Valid Email Address.');
            }

            //get User Details
            $userDetails = User::where('email',$data['email'])->first();
            //generate random password
            $random_password = Str::random(8);
            $new_password = bcrypt($random_password);

            //update pwd
            User::where('email',$data['email'])->update(['password'=>$new_password]);

            //send forgot email password email code
            $email = $data['email'];
            $name = $userDetails->name;
            $messageData = [
                'email'=>$email,
                'name'=>$name,
                'password'=>$random_password
            ];
            Mail::send('emails.forgotpassword',$messageData,function($message) use($email){
                $message->to($email)->subject('New Password - Zillion Link.');
            });

            return redirect()->back()->with('flash_message_success','Password sent on your email, kindly check your Email.');
        }
        return view('users.forgot_password');
    }

    public function viewUserscharts(){
        $current_month_users = User::whereYear('created_at',Carbon::now()->year)->whereMonth('created_at',Carbon::now()->month)->count();
        $last_month_users = User::whereYear('created_at',Carbon::now()->year)->whereMonth('created_at',Carbon::now()->subMonth(1))->count();
        $last_to_last_month_users = User::whereYear('created_at',Carbon::now()->year)->whereMonth('created_at',Carbon::now()->subMonth(2))->count();
        return view('admin.users.view_users_charts')->with(compact('current_month_users','last_month_users','last_to_last_month_users'));
    }

    public function exportUsers(){
        return Excel::download(new usersExport,'Customers-details.xlsx');
    }

    public function viewEnquiries(){
        $allEnquiries = Contact::orderBy('id','DESC')->get();
        // echo "<pre>"; print_r($allEnquiries); die;
        return view('admin.users.view_enquiries')->with(compact('allEnquiries'));
    }
    
    public function viewProfile(){
        return view('users.profile.profile');
    }

    public function userProfileUpdate(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            // $user = new User;

            if($request->hasFile('image')) {
                $image_tmp = $request->image;
                $filename = time() . '.' . $image_tmp->clientExtension();
                if ($image_tmp->isValid()) {
                    $extension = $image_tmp->getClientOriginalExtension();
                    $filename = rand(111, 99999999) . '.' . $extension;
                    $about_path = 'profilepic/'.$filename;
                    Image::make($image_tmp)->save($about_path);
                    // $user->image = $filename;
                }
            }

            //dd($data);
            User::where('id',Auth::User()->id)->update(['name'=>$data['name'],'mobile'=>$data['mobile'],'image'=>$filename]);
            return redirect('users/profile')->with('flash_message_success','Profile details updated successfully');
        }
        $meta_title = 'Update Profile';
        return view('users.profile.update_profile')->with(compact('meta_title'));
    } 

    public function dashboard(){
        return view('users.dashboard');
    }

    public function viewCourses(){
        $courses = Order::select('services.*','orders.*','orders.id as order_id','orders.price as purchase_price','orders.created_at as purchase_date')
            ->join('services','services.id','orders.course_id')
            ->where('orders.user_id',Auth::User()->id)
            ->orderBy('orders.id','DESC')
            ->paginate(5);
            // dd($courses);
        $meta_title = 'My Courses | Zillion Link';
        return view('users.courses.view-courses')->with(compact('courses','meta_title'));
    } 

    public function startCourseExam(Request $request, $course_id){
        if($request->isMethod('post')){
            $data = $request->all();
            // dd($data);
            
            $session_id = Str::random(30);
            Session::put('session_id',$session_id);

            foreach ($data['answer'] as $key => $val){
                if(!empty($val)){
                    $queans = new ExamQueAns;
                    $queans->course_id = $course_id;
                    $queans->user_id = Auth::User()->id;
                    $queans->answer = $data['answer'][$key];
                    $queans->question = $data['question'][$key];                    
                    $queans->session_id = $session_id;
                    $queans->save();
                }
            }
            Session::forget('session_id');
            return redirect('users/courses')->with('flash_message_success','Exam paper submitted successfully. Admin will check and grade your paper.');
        }
        $questions = CourseQue::where('course_id',$course_id)->inRandomOrder()->limit(settings('questions'))->get();
        $course = Services::where('id',$course_id)->first();
        $meta_title = 'Start Exam | Zillion Link';
        return view('users.courses.course_exam')->with(compact('questions','course','meta_title'));
    }

    public function viewCertificates(){
        return view('users.courses.view-certificate');
    }

    public function viewResults(){
        return view('users.courses.view-results');
    }

    public function viewExams(){
        return view('users.courses.view-exams');
    }

    public function getCourseCertificate(Request $request, $session_id){
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
        
        
        $pdf = PDF::loadView('certificate.course_exam_certificate', compact('examDetails','grade'));
        return $pdf->download('course-certificate.pdf', $pdf);
        // return $pdf->stream();
        // $pdf = $pdf->output();
    }

    public function coursePurchaseHistory(){
        $courses = Order::select('orders.*','services.name as course_name','services.image')
            ->join('services','services.id','orders.course_id')
            ->where('orders.user_id',Auth::User()->id)
            ->orderBy('orders.created_at','DESC')
            ->get();
        $meta_title = 'Purchase History | Zillion Link';
        return view('users.purchase_history')->with(compact('courses','meta_title'));
    }

    public function courseDownloadInvoice(Request $request, $order_id){
        $order = Order::select('orders.*','services.name as course_name','services.image','users.name as user_name','users.email')
            ->join('services','services.id','orders.course_id')
            ->join('users','users.id','orders.user_id')
            ->where('orders.id',$order_id)
            ->first();
            // dd($order);

        $pdf = PDF::loadView('certificate.order_invoice', compact('order'));
        // return $pdf->stream();
        return $pdf->download('purchase-invoice-'.$order->id.'.pdf', $pdf);
    }

}