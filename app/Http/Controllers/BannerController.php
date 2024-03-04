<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Http\Request;
use carbon\carbon;
use Illuminate\Support\Facades\Input;
use Image;
use App\Models\Counter;
use App\Models\Project;
use App\Models\Project_category;
use App\Models\User;
use App\Models\Kaizen;
use App\Models\Offline;

class BannerController extends Controller
{
    // view all counter
    public function viewCounter(){
        $counter = counter::orderBy('id','DESC')->get();
        // dd($counters);
        return view('admin.counter.view-counter')->with(compact('counter'));
    }

    // add new counter
    public function addCounter(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            //dd($data);
            $counter = new Counter;
            $counter->title = $data['title'];
            $counter->counter = $data['counter'];

            $counter->save();
            return redirect('admin/view-counter')->with('flash_message_success','New record added successfully');
        }
        return view('admin.counter.add-counter');
    }
    
    // edit specific counter
    public function editCounter(Request $request, $id){
        if($request->isMethod('post')){
            $data = $request->all();

            counter::where('id',$id)->update(['title'=>$data['title'],'counter'=>$data['counter']]);
            return redirect('admin/view-counter')->with('flash_message_success','New record updated successfully');
        }
        $counter = counter::where('id',$id)->first();
        return view('admin.counter.edit-counter')->with(compact('counter'));
    }

    // delete specific counter
    public function deleteCounter(Request $request, $id){
        counter::where('id',$id)->delete();
        return redirect()->back()->with('flash_message_success','Data deleted successfully');
    }


    public function addProject(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            //dd($data);

            $project = new Project;
            $project->title = $data['title'];
            $project->document = 'null';
            $project->status = '0';
            $project->description = $data['description'];

            if($request->hasFile('image')){

                $image_tmp = $request->image;          
                $filename = time(). '.'.$image_tmp->clientExtension();
                if($image_tmp->isValid()){
                    $extension = $image_tmp->getClientOriginalExtension();
                    $filename = rand(111,99999).'.'.$extension;
                    $project_path = 'images/backend_images/project/'.$filename;
                    Image::make($image_tmp)->save($project_path);
                    $project->image = $filename;
                }
            }

             // dd($services);
            $project->save();
           return redirect()->back()->with('flash_message_success','Your project uploaded successfully. Please wait for Admin feedback');
        }
        // $user = User::orderBy('id','DESC')->get();
        // $project = Project::select('project.*','users.name')->Join('users','users.id','project.user_id')->orderBy('project.id','DESC')->first();
        return view('admin.project.add-project');
    }

    public function editProject(Request $request, $id = null){
        if($request->isMethod('post')){
            $data = $request->all();
            // dd($data); 
    
            if($request->hasFile('image')){

                $image_tmp = $request->image;         
                $filename = time() . '.'.$image_tmp->clientExtension(); 
                if($image_tmp->isValid()){
                    $extension = $image_tmp->getClientOriginalExtension();
                    $filename = rand(111,99999).'.'.$extension;
                    $project_path = 'images/backend_images/project/'.$filename;
                    Image::make($image_tmp)->save($project_path);
                }
            }else if(!empty($data['current_image'])){
                $filename = $data['current_image'];
            }else{
                $filename = '';
            }

            project::where(['id'=>$id])->update(['title'=>$data['title'],'description'=>$data['description'],'document'=>'null' ,'image'=>$filename]);
            return redirect('/admin/view-project')->with('flash_message_success','Project Updated Successfully!');
        }

        $project = Project::where(['id'=>$id])->first();
        return view('admin.project.edit-project')->with(compact('project'));
    }

    public function editProjectStatus(Request $request, $id, $status){
        if($status == '0'){
            $temp = '1';
        }else{
            $temp = '0';
        }
        Project::where('id',$id)->update(['status'=>$temp]);
        return redirect()->back()->with('flash_message_success','Project status updated successfully');
    }


    public function deleteProject(Request $request, $id = null){
        if(!empty($id)){
            project::where(['id'=>$id])->delete();
            return redirect('/admin/view-project')->with('flash_message_success','Project Deleted Successfully');
        }
    }

    public function viewProject(){
        $project = Project::get();
        //dd($project);
        return view('admin.project.view-project')->with(compact('project'));
    }


    public function addProjectcategory(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            // dd($data);

            $project_category = new Project_category;
            $project_category->title=$data['title'];
            $project_category->save();
                return redirect('/trainerusers/view-project/')->with('flash_message_success','Project category has been added successfully');  
        }
        return view('users.project.add-project_category');
    }
    public function editProjectcategory(Request $request, $id = null){
        if($request->isMethod('post')){
            $data = $request->all();
            //dd($data);
           
            Project_category::where(['id'=>$id])->update(['title'=>$data['title']]);
            return redirect('/users/view-project')->with('flash_message_success','Project category updated Successfully!');
        }
        $project_category = Project_category::where(['id'=>$id])->first();
        return view('users.project.edit-project_category')->with(compact('project_category'));
    }
    public function viewProjectcategory(){
        $project_category = Project_category::get();
        //dd($category);
        return view('users.project.view-project_category')->with(compact('project_category'));
    }
    public function deleteProjectcategory(Request $request, $id = null){
        if(!empty($id)){
            project_category::where(['id'=>$id])->delete();
            // return redirect()->back()->('flash_message_success','Category Deleted Successfully');
            return redirect('/users/view-project_category')->with('flash_message_success','Category Deleted Successfully');
        }
    }
    
    // view kaizen
    public function viewKaizen(){
        $kaizen = kaizen::orderBy('id','DESC')->get();
        // dd($counters);
        return view('admin.kaizen.view-kaizen')->with(compact('kaizen'));
    }

    // add kaizen
    public function addKaizen(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            //dd($data);
            $kaizen = new Kaizen;
            $kaizen->name = $data['name'];
            $kaizen->date = $data['date'];
            $kaizen->email = $data['email'];
            $kaizen->category = $data['category'];

            $kaizen->save();
            return redirect('admin/view-kaizen')->with('flash_message_success','New record added successfully');
        }
        return view('admin.kaizen.add-kaizen');
    }
    
    // edit kaizen
    public function editKaizen(Request $request, $id){
        if($request->isMethod('post')){
            $data = $request->all();

            kaizen::where('id',$id)->update(['name'=>$data['name'],'date'=>$data['date'],'email'=>$data['email'],'category'=>$data['category']]);
            return redirect('admin/view-kaizen')->with('flash_message_success','New record updated successfully');
        }
        $kaizen = kaizen::where('id',$id)->first();
        return view('admin.kaizen.edit-kaizen')->with(compact('kaizen'));
    }

    // delete kaizen
    public function deleteKaizen(Request $request, $id){
        kaizen::where('id',$id)->delete();
        return redirect()->back()->with('flash_message_success','New record deleted successfully');
    }
    
    // view offline
    public function viewOffline(){
        $offline = offline::orderBy('id','DESC')->get();
        // dd($counters);
        return view('admin.offline.view-offline')->with(compact('offline'));
    }

    // add offline
    public function addOffline(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            //dd($data);
            $offline = new Offline;
            $offline->name = $data['name'];
            $offline->date = $data['date'];
            $offline->course = $data['course'];
            $offline->grade = $data['grade'];
            $offline->number = $data['number'];

            $offline->save();
            return redirect('admin/view-offline')->with('flash_message_success','New record added successfully');
        }
        return view('admin.offline.add-offline');
    }
    
    // edit offline
    public function editOffline(Request $request, $id){
        if($request->isMethod('post')){
            $data = $request->all();

            offline::where('id',$id)->update(['name'=>$data['name'],'date'=>$data['date'],'course'=>$data['course'],'grade'=>$data['grade'],'number'=>$data['number']]);
            return redirect('admin/view-offline')->with('flash_message_success','New record updated successfully');
        }
        $offline = offline::where('id',$id)->first();
        return view('admin.offline.edit-offline')->with(compact('offline'));
    }

    // delete offline
    public function deleteOffline(Request $request, $id){
        offline::where('id',$id)->delete();
        return redirect()->back()->with('flash_message_success','New record deleted successfully');
    }
}
