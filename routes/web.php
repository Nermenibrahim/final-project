<?php

use App\Http\Controllers\admin\CategoryController;
use App\Http\Controllers\admin\TestimonialController;
use App\Http\Controllers\admin\TopicController;
use App\Http\Controllers\admin\UserController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\PublicController;
use Illuminate\Support\Facades\Route;


Route::get('/', function () {
    return view('welcome');
});

//public routes

Route::get('index',[PublicController::class,'index'])->name('index');
Route::get('publicTestimonials',[PublicController::class,'testimonials'])->name('publicTestimonials');
Route::get('topics-listing',[PublicController::class,'topicsListing'])->name('topicsListing');
Route::get('topics-detail/{id}',[PublicController::class,'topicDetail'])->name('topicDetail');
Route::get('contact-us',[PublicController::class,'contact'])->name('contact-us');





//admin routes for testimonials
Route::group([
    'prefix' => 'testimonials',
    'as' => 'testimonials.',
    'middleware'=> 'verified',
    'controller' => TestimonialController::class,
], function () {
Route::get('','index')->name('index');
Route::get('create','create')->name('create');
Route::post('store','store')->name('store');
Route::get('edit/{id}','edit')->name('edit');
Route::put('update/{id}','update')->name('update');
Route::get('delete/{id}','destroy')->name('destroy');

});




//admin routes for category
Route::group([
    'prefix' => 'categories',
    'as' => 'categories.',
    'middleware'=> 'verified',
    'controller' => CategoryController::class,
], function () {
Route::get('','index')->name('index');
Route::get('create','create')->name('create');
Route::post('store','store')->name('store');
Route::get('edit/{id}','edit')->name('edit');
Route::put('update/{id}','update')->name('update');
Route::get('delete/{id}','destroy')->name('destroy');

});

//admin routes for topics

Route::group([
    'prefix' => 'topics',
    'as' => 'topics.',
    'middleware'=> 'verified',
    'controller' => TopicController::class,
], function () {
Route::get('','index')->name('index');
Route::get('create','create')->name('create');
Route::post('store','store')->name('store');
Route::get('edit/{id}','edit')->name('edit');
Route::put('update/{id}','update')->name('update');
Route::get('details/{id}','show')->name('show');
Route::get('delete/{id}','destroy')->name('destroy');


});



//routes for contact

Route::group([
    'prefix' => 'messages',
    'as' => 'messages.',
    'middleware'=> 'verified',
    'controller' => ContactController::class,
], function () {
Route::get('','index')->name('index');
Route::post('store','store')->name('store');
Route::get('delete/{id}','destroy')->name('destroy');
Route::get('details/{id}','show')->name('show');
});



//routes for user


Route::group([
    'prefix' => 'users',
    'as' => 'users.',
    'middleware'=> 'verified',
    'controller' => UserController::class,
], function () {

    Route::get('','index')->name('index');
    Route::get('create','create')->name('create');
    Route::post('store','store')->name('store');
    Route::get('edit/{id}','edit')->name('edit');
    Route::put('update/{id}','update')->name('update');


});


















Auth::routes(['verify' => true]);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');





