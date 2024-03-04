<?php

namespace App\Http\Controllers; 

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use App\Models\CategoryTranslation;
use App\Utility\CategoryUtility;
use Illuminate\Support\Str;
use Cache;
use PDF;
use Auth;
use DB;
use Image;
use Session;
use App\Models\About;
use App\Models\Newsviews;
use App\Models\Services;
use App\Models\Category;
use App\Models\Newsletter;
use App\Models\Events;
use App\Models\Traineruser;
use App\Models\Blogs;
use App\Models\Enquiry;
use App\Models\Ideaenquiry;
use App\Models\Donateenquiry;
use App\Models\Projectenquiry;
use App\Models\Zillionenquiry;
use App\Models\Aristotleenquiry;
use App\Models\Incubationenquiry;
use App\Models\Innovationenquiry;
use App\Models\Consumerenquiry;
use App\Models\Supplierenquiry;
use App\Models\Contact;
use App\Models\Courses;
use App\Models\ExamPapers;
use App\Models\Career;
use App\Models\Careerenquiry; 
use App\Models\Freecourse;
use App\Models\CourseQue;
use App\Models\Ppt;
use App\Models\Testimonials;

class AboutController extends Controller
{
    public function add(){
        return view("admin/Add_category");
    }
     // store category in db
    public function store(Request $request){
        // $request->validate([
        //     'name' => 'required|string|max:255',
        //     'image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
        // ]);
        // upload img
        $imagename=time(). '.'.$request->image->extension();
        $request->image->move(public_path('adminImages/category_images'), $imagename);
        $Category=new Category;
        $Category->name=$request['name'];
        $Category->image=$imagename;
        $Category->status = !empty($request['status']) ? 1 : 0;
        $Category->save();

        return redirect('admin/view_category');
    }

    // display categories
    public function display(){
        $Category=Category::all();
        $data =compact ('Category');
        return view ('admin/view_category')->with($data);
    }
   // delete
    public function delete(Request $request, $id){
        Category::where( 'id', $id)->delete();
        return redirect()->back();
    }
  // edit data on edit page
public function edit($id)
{
    $Category = Category::find($id);

    if (is_null($Category)) {
        return redirect('admin/view_category');
    } else {
        $data = compact('Category');
        return view('admin/edit_category')->with($data); 
    }
}
public function update(Request $request, $id)
{
      $data=$request->all();
    //    $request->validate([
    //     'name' => 'required|string|max:255',
    //     'image' => 'image|mimes:jpeg,png,jpg,gif|max:2048',
    //    ]);
      $category = Category::find($id);
      if (is_null($category)) {
        return redirect('admin/view_category');
    }
      if ($request->hasFile('image')) {
        $destination = 'adminImages/category_images' . $category->image;
        // check the image file exist before delete
        if (File::exists($destination)) {
            File::delete($destination);
        }   
       //  new image upload nd save
        $imageName = time() . '.' . $request->image->extension();
        $request->image->move(public_path('adminImages/category_images'), $imageName);
        $category->image = $imageName;
    }
    $status = isset($data['status']) ? 1 : 0;
     $category->name = $request->input('name');
    $category->status = $status;
    $category->save();
   return redirect('admin/view_category');
}
}