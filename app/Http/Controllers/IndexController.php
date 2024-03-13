<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Models\Enquiry;
use App\Models\Services;
use App\Models\Newsletter;
use App\Models\Newsviews;
use App\Models\Category;
use App\Models\Zillionenquiry;
use App\Models\Aristotleenquiry;
use App\Models\Projectenquiry;
use App\Models\Incubationenquiry;
use App\Models\Innovationenquiry;
use App\Models\Ideaenquiry;
use App\Models\Donateenquiry;
use App\Models\Consumerenquiry;
use App\Models\Supplierenquiry;
use App\Models\Contact;
use App\Models\Courses;
use App\Models\Career;
use App\Models\Careerenquiry;
use App\Models\ExamPapers;
use App\Models\Project;
use App\Models\User;
use App\Models\Order;
use App\Models\Blogs;
use App\Models\Freecourse;
use App\Models\ClubCard;
use App\Models\Ppt;
use App\Models\Testimonials;
use Carbon\Carbon;
use Auth;
use PDF;
use DB;
use Session;
class IndexController extends Controller
{
    public function index(){
        
        return view('index');
    }
    
    

    public function comingSoon(){
        return view('comingsoon');
    }

    public function insights(){
        return view('insights');
    }

    public function freecourse(){
        $freeCourses = freecourse::where('status','1')->get();
        // dd($freeCourses);
        $meta_title = 'Free Courses | Zillion Link';
        return view('free-course',compact('freeCourses','meta_title'));
    }

    public function industrysolution(){
        return view('industrysolution');
    }

    public function coursesCategory($id){
        // $courses = Services::select('services.*','category.id as cat_id','category.title','category.description')
        //     ->leftJoin('category','services.cat_id','category.id')
        //     ->where('services.cat_id',$id)
        //     ->paginate(6);

        $courses = Category::select('services.*','category.id as category_id','category.title','services.description as s_descr')
            ->leftJoin('services','services.category_id','category.id')
            ->where('category.id',$id)
            ->paginate(6);
        // $Course = Courses::where('category_id',$id)->get();
        if(count($courses) > 0){
            $temp = !empty($courses) ? $courses[0]->title. ' Courses' : 'Courses' ;
        }else{
            $temp = 'Courses';
        }
        // dd($courses['courses']);
        $meta_title = $temp.' | Zillion Link';
        return view('courses_listing')->with(compact('courses','meta_title'));
    } 

    public function courses($id, $title=null){
        $course = Services::select('services.*','category.id as category_id','category.title')
            ->join('category','services.category_id','category.id')
            ->where('services.id',$id)
            ->first();
            // dd($course);
        $relatedCourses = Services::select('services.*','category.id as category_id','category.title')
            ->join('category','services.category_id','category.id')
            ->where('services.category_id',$course->category_id)
            ->where('services.id','!=',$id)
            ->take(6)
            ->get();
            // dd($relatedCourses);
        $meta_title = $course->name.' Course | Zillion Link';
        return view('courses')->with(compact('course','relatedCourses','meta_title'));
    }

    public function orderOverview(Request $request, $id=null){
        if($request->isMethod('post')){
            $data = $request->all();
            // dd($data);
            User::where('id',Auth::User()->id)->update([
                'name'=>$data['name'],
                'email'=>$data['email'],
                'mobile'=>$data['mobile'],
                'address'=>$data['address'],
                'country'=>$data['country'],
                'city'=>$data['city'],
                'pincode'=>$data['pincode']
            ]);
            return redirect()->back()->with('flash_message_success','Billing details updated successfully. Please click on pay button to proceed.');
        }
        $course = Services::select('services.*','category.title','category.id as category_id')
            ->join('category','services.category_id','category.id')
            ->where('services.id',base64_decode($id))
            ->first();
            // dd($course);
        $meta_title = 'Order Overview | Zillion Link';
        return view('order_overview', compact('course','meta_title'));
    }

    public function coursePaymnet(Request $request){
        $data = $request->all();
        if(!empty($data['razorpay_payment_id'])){
            $order = new Order;            
            $order->course_id = $data['course_id'];
            $order->user_id = Auth::User()->id;
            $order->price = $data['price']+($data['price']*0.18);
            $order->razorpay_payment_id = $data['razorpay_payment_id'];
            $order->save();

            $course = Services::where('id',$data['course_id'])->first();
            

            $messageData = [
                'email' => Auth::User()->email,
                'name' => Auth::User()->name,
                'order_id' => $order->id,
                'razorpay_payment_id' => $data['razorpay_payment_id'],
                'course' => $course,
                'userDetails' => Auth::User()
            ];
            
            $pdf = PDF::loadView('certificate.participation_certificate', compact('messageData'));
            $pdf = $pdf->output();

            // user order confirmation mail
            $email = Auth::User()->email;
            Mail::send('emails.purchase_order',$messageData,function($message) use($email,$pdf){
                $message->to($email)->subject('Course Purchased - Zillion Link');
                $message->attachData($pdf, 'participation-certificate.pdf');
            });

            //admin - order confirmation mail
            $adminEmail = config('app.admin_mail');
            Mail::send('emails.admin_purchase_order',$messageData,function($message) use($adminEmail){
                $message->to($adminEmail)->subject('New Course Purchased - Zillion Link');
            });

            $meta_title = 'Purchase successful | Zillion Link';
            return view('purchase_successful',compact('messageData','meta_title'));
        }else{
            return redirect()->back()->with('flash_message_error','Something went wrong, please try again.');
        }
    } 
    public function exampapers($id, $title=null){
        
        $exampapers = ExamPapers::where('course_id',$id)->get();
        return view('exampapers')->with(compact('exampapers'));
    }

    public function ems(){
        return view('electronic-manufacturing');
    }
    
    public function terms(){
        return view('terms-and-condition');
    }
    
    public function privacy(){
        return view('privacy-policy');
    }
    
    public function refund(){
        return view('refund-policy');
    }

    public function donate(Request $request){
        $meta_title = 'Contribute for Future | Zillion Link';
        return view('donate',compact('meta_title'));
    }

    public function saveDonorDetails(Request $request){
        $data = $request->all();
        // return $data;
        $enquiry = new Donateenquiry;
        $enquiry->firstname = $data['firstname'];
        $enquiry->lastname = $data['lastname'];
        $enquiry->phone = $data['phone'];
        $enquiry->email = $data['email'];
        $enquiry->designation = $data['designation'];   
        $enquiry->comment = $data['comment'];
        $enquiry->amount = $data['amount'];
        $enquiry->razorpay_payment_id = $data['razorpay_payment_id'];
        $enquiry->save();

        $pdf = PDF::loadView('certificate.donar_certificate', $data);
        $pdf = $pdf->output();

        // send enq mail to admin
        $email = config('app.admin_mail');
        $messageData = [
            'firstname' => $data['firstname'],
            'lastname' => $data['lastname'],
            'phone' => $data['phone'],
            'email' => $data['email'],
            'designation' => $data['designation'],   
            'comment' => $data['comment'],
            'amount' => $data['amount'],
            'razorpay_payment_id' => $data['razorpay_payment_id']
        ];
        Mail::send('emails.donate_enquiry',$messageData,function($message) use($email){
            $message->to($email)->subject('New Donation Received - Zillion Link');    
        });
        $email1 = $data['email'];
        Mail::send('emails.donar_certificate',$messageData,function($message) use($email1, $pdf){
            $message->to($email1)->subject('Thank you for Donation - Zillion Link');  
            $message->attachData($pdf, 'contribution-certificate.pdf');  
        });

        $respval = array('msg'=>'Thank you! Payment successfully received.','status'=>true,'paymentID'=>$data['razorpay_payment_id']);
        return json_encode($respval);
    }

    public function blogs(){
        return view('blogs');
    }

    public function career(){
        $career = career::paginate(6);
        return view('career', compact('career'));
    }

    public function careerdetails($id){
        $careerdetails = Career::find(base64_decode($id));
        return view('careerdetails', compact('careerdetails'));
    } 
    
    public function electronic(){
        return view('electronic');
    }
    
    public function cybersecurity(){
        return view('cybersecurity');
    }
    
    public function zillionclubcard(){
        return view('zillionclubcard');
    }
    
    public function saveClubCardDetails(Request $request){
        $data = $request->all();
        // dd($data);
        // return $data;
        $card = new ClubCard;
        $card->user_id = Auth::User()->id;
        $card->price = $data['price'];
        $card->razorpay_payment_id = $data['razorpay_payment_id'];
        $card->expiry_date = Carbon::now()->addYear();
        $card->save();

        $messageData = [
            'email' => Auth::User()->email,
            'name' => Auth::User()->name,
            'razorpay_payment_id' => $data['razorpay_payment_id'],
            'userDetails' => Auth::User()
        ];

        // user order confirmation mail
        $email = Auth::User()->email;
        Mail::send('emails.clubcard',$messageData,function($message) use($email){
            $message->to($email)->subject('Zillionlink Clubcard - Zillion Link'); 
        });

        $respval = array('msg'=>'Thank you! Payment successfully done. Successfully enrolled for Zillion Club Card.','status'=>true,'paymentID'=>$data['razorpay_payment_id']);
        return json_encode($respval);
    }

    public function projects(){
        $project = Project::where('status','1')->get();
        $meta_title = 'Projects | Zillion Link';
        return view('projects', compact('project','meta_title'));
    }

    public function projectsdetails($id){
        $projects = Project::find($id);
        $meta_title = $projects->title.' | Zillion Link';
        return view('projects_details', (compact('projects','meta_title')));
    }

   public function blogsdetails($id){
    $blogsdetails = Blogs::find($id);
        return view('blogsdetails', compact('blogsdetails'));
    }

    public function newsviews(Request $request, $cat=null){
        $newsviews  = Newsviews::orderBy('id','DESC');
        if($cat == '' || empty($cat)){
            $newsviews  = $newsviews->where('category','All');
            $cat = 'All';
        }else{
            $newsviews  = $newsviews->where('category',$cat);            
            $cat = $cat;
        }
        $newsviews  = $newsviews->paginate(3);    
        $newsletter = newsletter::get();
        $blogs = Blogs::get();
        return view('newsviews', compact('newsviews','cat','newsletter','blogs'));
    }

    public function connect(){
        $contact = contact::get();
        return view('connect', compact('contact'));
    }

    public function yuvaprograms(){
        return view('yuvaprograms');
    }

    public function yuvaprogramsdetaills(){
        return view('yuvaprogramsdetaills');
    }
    
    public function cyber(){
        return view('cyber');
    }

    public function aristotleclub(){
        return view('aristotleclub');
    }
    
    public function zillionclub(){
        return view('zillionclub');
    }

    public function aristotle(){
        return view('aristotle');
    }

    public function incubation(){
        return view('incubation');
    }

    public function innovation(){
        return view('innovation');
    }

    public function acceleration(){
        return view('acceleration');
    }

    public function collaboration(){
        return view('collaboration');
    }
    
    public function skillsindia(){
        return view('skillsindia');
    }

    public function inspiration(){
        return view('inspiration');
    }

    public function login(){
        return view('login');
    }

    public function dashboard(){
        return view('dashboard');
    }
    
    public function trainerdashboard(){
        return view('trainerdashboard');
    }

    public function register(){
        return view('register');
    }
   
   
    public function services(){
        return view('services');
    }

    public function events(){
        return view('events');
    }

    public function contact(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            //dd($data);
            $res = $this->post_captcha($data['g-recaptcha-response']);
            if (!$res['success']){
                return redirect()->back()->with('flash_message_error','Please make sure you check the security CAPTCHA box.');
            }
            
            $enquiry = new Enquiry;
            $enquiry->name = $data['name'];
            $enquiry->phone = $data['phone'];
            $enquiry->email = $data['email'];
            $enquiry->comment = $data['comment'];
            
            $enquiry->save();

            // send enq mail to admin
            $email = config('app.admin_mail');
            $messageData = [
                'name' => $data['name'],
                'email' => $data['email'],
                'phone' => $data['phone'],
                'comment' => $data['comment'],
               
            ];
            Mail::send('emails.admin_enquiry',$messageData,function($message) use($email){
                $message->to($email)->subject('New enquiry from Zillion Link');    
            });
            $email1 = $data['email'];
            Mail::send('emails.enquiry',$messageData,function($message) use($email1){
                $message->to($email1)->subject('Thank you for your response - Zillion Link ');    
            });

            return redirect()->back()->with('flash_message_success','Thank you! We have received your enquiry successfully.');
        }
        $contact =contact::get();
        // $joinus_enquiries = Enquiry::get();
        return view('contact',compact('contact'));
    }
    
    public function post_captcha($user_response) {
        $fields_string = '';
        $fields = array(
            'secret' => '6LcmcNoiAAAAANn3ZH4zp0JE3wkCtpci-pPMUJHC',
            'response' => $user_response
        );
        foreach($fields as $key=>$value)
        $fields_string .= $key . '=' . $value . '&';
        $fields_string = rtrim($fields_string, '&');

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, 'https://www.google.com/recaptcha/api/siteverify');
        curl_setopt($ch, CURLOPT_POST, count($fields));
        curl_setopt($ch, CURLOPT_POSTFIELDS, $fields_string);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, True);

        $result = curl_exec($ch);
        curl_close($ch);

        return json_decode($result, true);
    }

    public function ideaenquiry(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            //dd($data);
            $enquiry = new Ideaenquiry;
            $enquiry->category = $data['category'];
            $enquiry->name = $data['name'];
            $enquiry->place = $data['place'];
            $enquiry->companyname = $data['companyname'];
            $enquiry->email = $data['email'];
            $enquiry->phone = $data['phone'];
            $enquiry->idea = $data['idea'];
            $enquiry->current = $data['current'];
            $enquiry->future = $data['future'];
            $enquiry->benefited = $data['benefited'];
            $enquiry->pdf = 'null';
            $enquiry->save();

            $pdf = PDF::loadView('certificate.ideagenerator_certificate', $data);
            $pdf = $pdf->output();

            // send enq mail to admin
            $email = config('app.admin_mail');
            $messageData = [
                'category' => $data['category'],
                'name' => $data['name'],
                'place' => $data['place'],
                'companyname' => $data['companyname'],
                'email' => $data['email'],
                'phone' => $data['phone'],
                'idea' => $data['idea'],
                'current' => $data['current'],
                'future' => $data['future'],
                'benefited' => $data['benefited'],
                // 'pdf' => $data['pdf'],
            ];
            // Mail::send('emails.idea_enquiry',$messageData,function($message) use($email, $pdf){
            //     $message->to($email)->subject('New Idea Generated from Zillion Link');
            //     $message->attachData($pdf, 'ideagenerator_certificate.pdf');    
            // });
            $email1 = $data['email'];
            Mail::send('emails.idea_generator',$messageData,function($message) use($email1, $pdf){
                $message->to($email1)->subject('Idea Generated Certificate - Zillion Link');  
                $message->attachData($pdf, 'ideagenerator_certificate.pdf');  
            });

            return redirect()->back()->with('flash_message_success','Thank you for such a wonderful contribution!');
        }
    }

    public function donateenquiry(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            //dd($data);
            $enquiry = new Donateenquiry;
            $enquiry->firstname = $data['firstname'];
            $enquiry->lastname = $data['lastname'];
            $enquiry->phone = $data['phone'];
            $enquiry->email = $data['email'];
            $enquiry->designation = $data['designation'];   
            $enquiry->comment = $data['comment'];
            $enquiry->amount = $data['amount'];
            $enquiry->save();

            $pdf = PDF::loadView('certificate.donar_certificate', $data);
            $pdf = $pdf->output();

            // send enq mail to admin
            $email = config('app.admin_mail');
            $messageData = [
                'firstname' => $data['firstname'],
                'lastname' => $data['lastname'],
                'phone' => $data['phone'],
                'email' => $data['email'],
                'designation' => $data['designation'],   
                'comment' => $data['comment'],
                'amount' => $data['amount'],
                
            ];
            Mail::send('emails.donate_enquiry',$messageData,function($message) use($email){
                $message->to($email)->subject('New enquiry from Zillion Link');    
            });
            $email1 = $data['email'];
            Mail::send('emails.donar_certificate',$messageData,function($message) use($email1, $pdf){
                $message->to($email1)->subject('Donation Certificate - Zillion Link');  
                $message->attachData($pdf, 'donar_certificate.pdf');  
            });

            return redirect()->back()->with('flash_message_success','Thank you! Your enquiry/feedback received successfully.');
        }
    }
    
    public function zillionenquiry(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            //dd($data);
            $enquiry = new Zillionenquiry;
            $enquiry->name = $data['name'];
            $enquiry->age = $data['age'];
            $enquiry->character = $data['character'];
            $enquiry->phone = $data['phone']; 
            $enquiry->email = $data['email'];
            $enquiry->state = $data['state'];
            $enquiry->district = $data['district'];
            $enquiry->language = $data['language'];
            $enquiry->clgname = $data['clgname'];
            $enquiry->save();

            // send enq mail to admin
            $email = config('app.admin_mail');
                $messageData = [
                'name' => $data['name'],
                'age' => $data['age'],
                'character' => $data['character'],
                'phone' => $data['phone'],
                'email' => $data['email'],
                'state' => $data['state'],   
                'district' => $data['district'],
                'language' => $data['language'],
                'clgname' => $data['clgname'],
                
            ];
            Mail::send('emails.zillion_enquiry',$messageData,function($message) use($email){
                $message->to($email)->subject('New enquiry from Zillion Link');    
            });
            // $email1 = $data['email'];
            // Mail::send('emails.enquiry',$messageData,function($message) use($email1){
            //     $message->to($email1)->subject('Thank you for your response -Bsquare ');    
            // });

            return redirect()->back()->with('flash_message_success','Thank you! Your enquiry / feedback received successfully.');
        }
    }


    public function aristotleenquiry(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            //dd($data);
            $enquiry = new Aristotleenquiry;
            $enquiry->name = $data['name'];
            $enquiry->age = $data['age'];
            $enquiry->character = $data['character'];  
            $enquiry->state = $data['state'];
            $enquiry->district = $data['district'];
            $enquiry->language = $data['language'];
            $enquiry->phone = $data['phone']; 
            $enquiry->email = $data['email'];
            $enquiry->category = $data['category'];
            $enquiry->concern = $data['concern'];
            $enquiry->medium = $data['medium'];
            $enquiry->save();

            // send enq mail to admin
            $email = config('app.admin_mail');
            $messageData = [
                'name' => $data['name'],
                'age' => $data['age'],
                'character' => $data['character'],
                'state' => $data['state'],   
                'district' => $data['district'],
                'language' => $data['language'],
                'phone' => $data['phone'],
                'email' => $data['email'],
                'category' => $data['category'],
                'concern' => $data['concern'],
                'medium' => $data['medium'],
                
            ];
            Mail::send('emails.aristotle_enquiry',$messageData,function($message) use($email){
                $message->to($email)->subject('New enquiry from Aristotle Club');    
            });
            // $email1 = $data['email'];
            // Mail::send('emails.enquiry',$messageData,function($message) use($email1){
            //     $message->to($email1)->subject('Thank you for your response -Bsquare ');    
            // });

            return redirect()->back()->with('flash_message_success','Thank you! Your enquiry / feedback received successfully.');
        }
    }

    public function incubationenquiry(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            //dd($data);
            $enquiry = new Incubationenquiry;
            $enquiry->name = $data['name'];
            $enquiry->age = $data['age'];
            $enquiry->character = $data['character'];
            $enquiry->phone = $data['phone']; 
            $enquiry->email = $data['email'];  
            $enquiry->state = $data['state'];
            $enquiry->district = $data['district'];
            $enquiry->language = $data['language'];    
            $enquiry->companyname = $data['companyname'];    
            $enquiry->category = $data['category'];
            $enquiry->concern = $data['concern'];
            $enquiry->benefits = $data['benefits'];
            $enquiry->expected = $data['expected'];
            $enquiry->save();

            // send enq mail to admin
            $email = config('app.admin_mail');
            $messageData = [
                'name' => $data['name'],
                'age' => $data['age'],
                'character' => $data['character'],
                'phone' => $data['phone'],
                'email' => $data['email'],
                'state' => $data['state'],   
                'district' => $data['district'],
                'language' => $data['language'],                
                'companyname' => $data['companyname'],                
                'category' => $data['category'],
                'concern' => $data['concern'],
                'benefits' => $data['benefits'],
                'expected' => $data['expected'],
                
            ];
            Mail::send('emails.incubation_enquiry',$messageData,function($message) use($email){
                $message->to($email)->subject('New enquiry from Incubation');    
            });
            // $email1 = $data['email'];
            // Mail::send('emails.enquiry',$messageData,function($message) use($email1){
            //     $message->to($email1)->subject('Thank you for your response -Bsquare ');    
            // });

            return redirect()->back()->with('flash_message_success','Thank you! Your enquiry / feedback received successfully.');
        }
    }

    public function innovationenquiry(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            //dd($data);
            $enquiry = new Innovationenquiry;
            $enquiry->name = $data['name'];
            $enquiry->age = $data['age'];
            $enquiry->character = $data['character'];
            $enquiry->phone = $data['phone']; 
            $enquiry->email = $data['email'];  
            $enquiry->state = $data['state'];
            $enquiry->district = $data['district'];
            $enquiry->language = $data['language'];    
            $enquiry->companyname = $data['companyname'];    
            $enquiry->category = $data['category'];
            $enquiry->concern = $data['concern'];
            $enquiry->benefits = $data['benefits'];
            $enquiry->save();

            // send enq mail to admin
            $email = config('app.admin_mail');
            $messageData = [
                'name' => $data['name'],
                'age' => $data['age'],
                'character' => $data['character'],
                'phone' => $data['phone'],
                'email' => $data['email'],
                'state' => $data['state'],   
                'district' => $data['district'],
                'language' => $data['language'],                
                'companyname' => $data['companyname'],                
                'category' => $data['category'],
                'concern' => $data['concern'],
                'benefits' => $data['benefits'],
                
            ];
            Mail::send('emails.innovation_enquiry',$messageData,function($message) use($email){
                $message->to($email)->subject('New enquiry from Innovation');    
            });
            // $email1 = $data['email'];
            // Mail::send('emails.enquiry',$messageData,function($message) use($email1){
            //     $message->to($email1)->subject('Thank you for your response -Bsquare ');    
            // });

            return redirect()->back()->with('flash_message_success','Thank you! Your enquiry / feedback received successfully.');
        }
    }
    
    
    public function consumerenquiry(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            //dd($data);
            $enquiry = new Consumerenquiry;
            $enquiry->name = $data['name'];
            $enquiry->company = $data['company'];
            $enquiry->phone = $data['phone']; 
            $enquiry->email = $data['email'];  
            $enquiry->state = $data['state'];
            $enquiry->place = $data['place'];
            $enquiry->service = $data['service'];    
            $enquiry->experience = $data['experience'];    
            $enquiry->save();

            // send enq mail to admin
            $email = config('app.admin_mail');
            $messageData = [
                'name' => $data['name'],
                'company' => $data['company'],
                'phone' => $data['phone'],
                'email' => $data['email'],
                'state' => $data['state'],   
                'place' => $data['place'],
                'service' => $data['service'],                
                'experience' => $data['experience'],                
                
            ];
            Mail::send('emails.consumer_enquiry',$messageData,function($message) use($email){
                $message->to($email)->subject('New enquiry from Industry Solution');    
            });
            // $email1 = $data['email'];
            // Mail::send('emails.enquiry',$messageData,function($message) use($email1){
            //     $message->to($email1)->subject('Thank you for your response -Bsquare ');    
            // });

            return redirect()->back()->with('flash_message_success','Thanks For Registration, Team Zillion Link will Contact You!.');
        }
    }

    public function supplierenquiry(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            //dd($data);
            $enquiry = new Supplierenquiry;
            $enquiry->name = $data['name'];
            $enquiry->company = $data['company'];
            $enquiry->phone = $data['phone']; 
            $enquiry->email = $data['email'];  
            $enquiry->state = $data['state'];
            $enquiry->place = $data['place'];
            $enquiry->service = $data['service'];    
            $enquiry->experience = $data['experience'];    
            $enquiry->comment = $data['comment'];    
            $enquiry->save();

            // send enq mail to admin
            $email = config('app.admin_mail');
            $messageData = [
                'name' => $data['name'],
                'company' => $data['company'],
                'phone' => $data['phone'],
                'email' => $data['email'],
                'state' => $data['state'],   
                'place' => $data['place'],
                'service' => $data['service'],                
                'experience' => $data['experience'],                
                'message' => $data['comment'],                
                
            ];
            Mail::send('emails.consumer_enquiry',$messageData,function($message) use($email){
                $message->to($email)->subject('New enquiry from Industry Solution');    
            });
            // $email1 = $data['email'];
            // Mail::send('emails.enquiry',$messageData,function($message) use($email1){
            //     $message->to($email1)->subject('Thank you for your response -Bsquare ');    
            // });

            return redirect()->back()->with('flash_message_success','Thanks For Registration, Team Zillion Link will Contact You!.');
        }
    }

    public function careerenquiry(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            //dd($data);
            $enquiry = new Careerenquiry;
            $enquiry->firstname = $data['firstname'];
            $enquiry->lastname = $data['lastname'];
            $enquiry->email = $data['email'];
            $enquiry->phone = $data['phone'];
            $enquiry->location = $data['location'];
            $enquiry->city = $data['city'];
            $enquiry->comment = $data['comment'];

            if($request->hasFile('resume')) {
                $file = $request->file('resume');
                $pdf = time() . rand(11111, 99999) . '.' . $file->getClientOriginalExtension();
                $destinationPath = public_path('pdf/');
                $file->move($destinationPath, $pdf);
                $enquiry->resume=$pdf;
            }

            $enquiry->save();

            // send enq mail to admin
            $email = config('app.admin_mail');
            $messageData = [
                'firstname' => $data['firstname'],
                'lastname' => $data['lastname'],
                'email' => $data['email'],
                'phone' => $data['phone'],
                'location' => $data['location'],
                'city' => $data['city'],
                'resume' => $data['resume'],
                'comment' => $data['comment'],
            ];
            Mail::send('emails.career_enquiry',$messageData,function($message) use($email){
                $message->to($email)->subject('New Career Enquiry from Zillion Link');   
            });
            $email1 = $data['email'];
            Mail::send('emails.careerenquiry',$messageData,function($message) use($email1){
                $message->to($email1)->subject('Thank you for your response - Zillion Link ');    
            });

            return redirect()->back()->with('flash_message_success','Thank you! Your enquiry / feedback received successfully.');
        }
    }
    
    public function projectenquiry(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            //dd($data);
            $enquiry = new Projectenquiry;
            $enquiry->name = $data['name'];
            $enquiry->mobile = $data['mobile']; 
            $enquiry->email = $data['email'];  
            $enquiry->comment = $data['comment'];    
            $enquiry->save();

            // send enq mail to admin
            $email = config('app.admin_mail');
            $messageData = [
                'name' => $data['name'],
                'mobile' => $data['mobile'],
                'email' => $data['email'],                
                'comment' => $data['comment'],                
                
            ];
            Mail::send('emails.project_enquiry',$messageData,function($message) use($email){
                $message->to($email)->subject('New enquiry from Project');    
            });
            // $email1 = $data['email'];
            // Mail::send('emails.enquiry',$messageData,function($message) use($email1){
            //     $message->to($email1)->subject('Thank you for your response -Bsquare ');    
            // });

            return redirect()->back()->with('flash_message_success','Thank you! Your enquiry / feedback received successfully.');
        }
    }
    
}
