<?php

namespace App\Http\Controllers\Front;

use App\Course;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\SiteContent;
use App\Student;
use App\Test;
use App\Trainer;

class HomePageController extends Controller
{
    public function index()
    {
        //banner
        $data['banner']= SiteContent::select('content')->where('name','banner')->first();
        $data['feature_content']= SiteContent::select('content')->where('name','feature')->first();
        $data['courses_content']= SiteContent::select('content')->where('name','courses')->first();

        //courses
        $data['courses']=Course::select('id','name','small_desc','cat_id','trainer_id','img','price')
        ->orderBy('id','desc')
        ->take(3)
        ->get();

        //dd($data['courses']);

        // counter
        $data['courses_count']=Course::count();
        $data['trainers_count']=Trainer::count();
        $data['students_count']=Student::count();

        //testimonial_part
        $data['tests']=Test::select('name','spec','desc','img')->get();

        return view('Front/index')->with($data);

        
    }
}
