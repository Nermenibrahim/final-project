<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Testimonial;
use App\Models\Topic;
use Illuminate\Http\Request;

class PublicController extends Controller
{
    public function index(){


       $tests = Testimonial::where('published',1)->latest()->take(3)->get();

       $topics = Topic::where('published',1)->latest()->take(2)->get();
       
       $categories = Category::with([
        'topics' => function ($query) {
        $query -> where('published',1)->limit(3);

        }]) 
        ->take(5)
        ->latest()
        ->get();



        return view('public.index',compact('tests',('topics'),('categories')));

    }

    public function testimonials(){

        $tests = Testimonial::where('published',1)->get();

        return view('public.testimonials', compact('tests'));
        
    }

    public function contact(){
    
        return view('public.contact');
    }


    public function topicsListing(){

        $tests = Topic::where('published',1)->latest()->paginate(3);
        $trendtopics = Topic::where('published', 1 )->where('trending',1)->latest()->take(2)->get();

        return view('public.topics-listing',compact('tests',('trendtopics')));
    }


    public function topicDetail(string $id)
    {
        $topic =  Topic::findOrFail($id);
        return view('public.topics-detail',compact('topic'));
        
    }


   
}



