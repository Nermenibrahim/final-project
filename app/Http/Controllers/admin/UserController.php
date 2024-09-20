<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Traits\Common;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    
        public function index()
    {
        $users= User::get();
        return view('admin.users.users',compact('users'));

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {

        return view('admin.users.add_user');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->validate([

            'firstName' => 'required|string',
            'lastName' => 'required|string',
            'userName' => 'required|string',
            'email' => 'required|email',
            'email_verified_at' => now(),
            'password' => ['required', 'string', 'min:8', 'confirmed'],
            'active' => [1] ,
           ]);
    
           

           $data['password'] = Hash::make($request['password']);

    
            User::create($data);
            
            return redirect()->route('users.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $user = User::findOrFail($id);
        return view('admin.users.edit_user',compact('user'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $data = $request->validate([

            'firstName' => 'required|string',
            'lastName' => 'required|string',
            'userName' => 'required|string',
            'email' => 'required|email',
            'email_verified_at' => now(),
            
            
           ]);
    
           $data['active'] = isset($request->active) ;

           $data['password'] = Hash::make($request['password']);

    
            User::where('id',$id)->update($data);
            
            return redirect()->route('users.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
