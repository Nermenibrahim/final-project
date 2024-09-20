<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Topic;
use App\Traits\Common;
use Illuminate\Http\Request;

class TopicController extends Controller
{

    use Common;
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $topics = Topic::get();
        return view('admin.topics.topics',compact('topics'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = Category::select('id', 'categoryName')->get();
    
        return view('admin.topics.add_topic', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->validate([

            'topicTitle' => 'required|string',
            'content' => 'required|string|max:200',
            'category_id' => 'required|exists:categories,id',
            'image' => 'required|mimes:png,jpg,jpeg|max:2048',
            
           ]);
    
           
            $data['image'] = $this->uploadFile($request->image, 'assets/images/topics');
    
            $data['published'] = isset($request->published) ;

            $data['trending'] = isset($request->trending) ;
    
            
    
            Topic::create($data);
    
            return redirect()->route('topics.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $topic =  Topic::findOrFail($id);
        return view('public.topics-detail',compact('topic'));
        
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $topic = Topic::findOrFail($id);

        $categories = Category::select('id', 'categoryName')->get();
        
        return view('admin.topics.edit_topic' , compact('topic',('categories')));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $data = $request->validate([

            'topicTitle' => 'required|string',
            'content' => 'required|string|max:200',
            'category_id' => 'required|exists:categories,id',
            'image' => 'nullable|mimes:png,jpg,jpeg|max:2048',
            
           ]);
    
           
           if($request->hasFile(('image'))){
            
            $data['image'] = $this->uploadFile($request->image, 'assets/images/topics');

           }
    
            $data['published'] = isset($request->published) ;

            $data['trending'] = isset($request->trending) ;
    
            
    
            Topic::where('id',$id)->update($data);
    
            return redirect()->route('topics.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Topic::where('id',$id)->delete();
        return redirect()->route('topics.index');
    }
}
