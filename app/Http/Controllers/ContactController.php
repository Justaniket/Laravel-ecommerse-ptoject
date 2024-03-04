<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use DB;
use Image;
use Session;
use App\About;
use App\Models\Contact;

class ContactController extends Controller
{
    public function viewContacts(Request $request){
        $contact = Contact::orderBy('id','DESC')->get();
        // dd($contact);
        return view('admin.contact.view_contact')->with(compact('contact'));
    }
    public function ViewAdminContacts(Request $request){
        $Admincontact = DB::table('contact')->get();
        // dd($contact);
        return view('admin.contact.view_admin_contact')->with(compact('Admincontact'));
    }

    public function EditAdminContact(Request $request,$id)
    {
        if($request->isMethod('post')){
            $data = $request->all();

            DB::table('contact')->where('id',$id)->update(['email'=>$data['email'],'mobile'=>$data['mobile'],'address'=>$data['address']]);
            return redirect('/admin/view-contact')->with('flash_message_success','Contact details updated successfully.');
        }
        $Admincontact = DB::table('contact')->where('id',$id)->first();
        return view('admin.contact.edit_admin_contact')->with(compact('Admincontact'));
        

    }

    public function ViewTrainingEnquiry(Request $request){
        $TrainingEnquiry = DB::table('contact_page')
        ->select('contact_page.*','main_services.service_name','trainings.training_title')
        ->join('main_services','contact_page.service_id','main_services.id')
        ->join('trainings','contact_page.training_id','trainings.id')
        ->get();
        // dd($contact);
        return view('admin.enquiry.view_contact_enquiry')->with(compact('TrainingEnquiry'));
    }

    public function EnquiryDetails(Request $request)
    {
        $id = $request->input('id');
        $contact = Contact::where('id',$id)->get();
        return $contact;

    }
    public function DeleteEnquiry($id)
    {
       
        $contact = Contact::where('id',$id)->delete();
        return redirect()->back()->with('flash_message_success','Enquiry has been deleted Successfully');

    }
    public function DeleteContactEnquiry($id)
    {
       
        $contact = DB::table('contact_page')->where('id',$id)->delete();
        return redirect()->back()->with('flash_message_success','Enquiry has been deleted Successfully');

    }


}
