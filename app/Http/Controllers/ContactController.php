<?php

namespace App\Http\Controllers;

use App\Mail\ContactMail;
use App\Models\Contact;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class ContactController extends Controller
{

    public function index()
    {
        $messages = Contact::get();
        return view('admin.message.messages',compact('messages'));
    }


    public function create()
    {
        
    }


    public function show(string $id)
    {
        $message =  Contact::findOrFail($id);
        return view('admin.message.message_details',compact('message'));
        
    }





    public function store(Request $request)
    {
        $data = $request->validate([

            'name' => 'required|string',
            'email' => 'required|email',
            'subject' =>'required|string|max:200',
            'message' =>'required|string|max:300',
           
           ]);

            Contact::create($data);

            Mail::to('nermenibrahim34@gmail.com')->send(new ContactMail($data));
        

            
            return "Message was sent";

    }


    public function destroy(string $id)
    {
       
        Contact::where('id',$id)->delete();
        return redirect()->route('contactMessages');
    }



}
