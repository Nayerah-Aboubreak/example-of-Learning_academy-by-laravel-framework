<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::namespace('Front')->group(function(){

    Route::get('/', 'HomePageController@index')->name('front.homepage');
    Route::get('/cat/{id}', 'CourseController@cat')->name('front.Cat');
    
    Route::get('/cat/{id}/course/{c_id}', 'CourseController@show')->name('front.show');
    
    Route::get('/contact', 'ContactController@index')->name('front.contact');
    
    Route::post('/message/newsletter', 'MessageController@newsletter')->name('front.message.newsletter');
    Route::post('/message/contact', 'MessageController@contact')->name('front.message.contact');
    Route::post('/message/enroll', 'MessageController@enroll')->name('front.message.enroll');

});

Route::namespace('Admin')->prefix('dashboard')->group(function(){

    Route::get('/login', 'AuthController@login')->name('Admin.login');
    Route::post('/do-login', 'AuthController@doLogin')->name('Admin.doLogin');
 
    
    Route::middleware('adminAuth:admin')->group(function(){

        Route::get('/logout', 'AuthController@logout')->name('Admin.logout');
    
        Route::get('/', 'HomeController@index')->name('Admin.home');

        //For categories
        Route::get('/cats', 'CatController@index')->name('Admin.cats.index');

        Route::get('/cats/create', 'CatController@create')->name('Admin.cats.create');
        Route::post('/cats/store', 'CatController@store')->name('Admin.cats.store');
        Route::get('/cats/edit/{id}', 'CatController@edit')->name('Admin.cats.edit');
        Route::post('/cats/update', 'CatController@update')->name('Admin.cats.update');
        Route::get('/cats/delete{id}', 'CatController@delete')->name('Admin.cats.delete');

        //For Trainers
        Route::get('/trainers', 'TrainerController@index')->name('Admin.trainers.index');
        
        Route::get('/trainers/create', 'TrainerController@create')->name('Admin.trainers.create');
        Route::post('/trainers/store', 'TrainerController@store')->name('Admin.trainers.store');
        Route::get('/trainers/edit/{id}', 'TrainerController@edit')->name('Admin.trainers.edit');
        Route::post('/trainers/update', 'TrainerController@update')->name('Admin.trainers.update');
        Route::get('/trainers/delete{id}', 'TrainerController@delete')->name('Admin.trainers.delete');

        //For Courses
        Route::get('/courses', 'CourseController@index')->name('Admin.courses.index');

        Route::get('/courses/create', 'CourseController@create')->name('Admin.courses.create');
        Route::post('/courses/store', 'CourseController@store')->name('Admin.courses.store');
        Route::get('/courses/edit/{id}', 'CourseController@edit')->name('Admin.courses.edit');
        Route::post('/courses/update', 'CourseController@update')->name('Admin.courses.update');
        Route::get('/courses/delete{id}', 'CourseController@delete')->name('Admin.courses.delete');

        //For Students
        Route::get('/students', 'StudentController@index')->name('Admin.students.index');

        Route::get('/students/create', 'StudentController@create')->name('Admin.students.create');
        Route::post('/students/store', 'StudentController@store')->name('Admin.students.store');
        Route::get('/students/edit/{id}', 'StudentController@edit')->name('Admin.students.edit');
        Route::post('/students/update', 'StudentController@update')->name('Admin.students.update');
        Route::get('/students/delete{id}', 'StudentController@delete')->name('Admin.students.delete');
        Route::get('/students/show-Courses{id}', 'StudentController@showCourses')->name('Admin.students.showCourses');
        Route::get('/students/{id}/courses/{c_id}/approve', 'StudentController@approveCourse')->name('Admin.students.approveCourse');
        Route::get('/students/{id}/courses/{c_id}/reject', 'StudentController@rejectCourse')->name('Admin.students.rejectCourse');
        Route::get('/students/{id}/add-to-course', 'StudentController@addCourse')->name('Admin.students.addCourse');
        Route::post('/students/{id}/add-to-course', 'StudentController@storeCourse')->name('Admin.students.storeCourse');
    });

});



