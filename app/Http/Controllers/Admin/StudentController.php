<?php

namespace App\Http\Controllers\Admin;

use App\Cat;
use App\Course;
use App\Student;
use App\Trainer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class StudentController extends Controller
{
    public function index()
    {
        $data['students']= Student::select('id','name','email','spec')->orderBy('id','DESC')->get();
        return view('Admin.students.index')->with($data);
    }

    public function create()
    {
        $data['cats'] = Cat::select('id','name')->get();
        $data['trainers'] = Trainer::select('id','name')->get();

        return view('Admin.students.create')->with($data);
    }

    public function store(Request $request)
    {
        $data= $request->validate([
            'name' => 'nullable|string|max:50',
            'email' => 'required|email|max:191|unique:students',
            'spec' => 'nullable|string|max:50',
        ]);

        Student::create($data);

        return redirect(route('Admin.students.index'));
    }

    public function edit($id)
    { 
        $data['cats'] = Cat::select('id','name')->get();
        $data['trainers'] = Trainer::select('id','name')->get();
        
        $data['student'] = Student::findOrFail($id);
        return view('Admin.students.edit')->with($data);
    }

    public function update(Request $request)
    {
        $data= $request->validate([
            'name' => 'nullable|string|max:50',
            'email' => 'required|email|max:191|unique:students',
            'spec' => 'nullable|string|max:50',
        ]);

        Student::findOrFail($request->id)->update($data);

        return redirect(route('Admin.students.index'));
    }

    public function delete($id)
    { 
        //delete from database
        Student::findOrFail($id)->delete();
        return back();
    }

    public function showCourses($id)
    { 
        $data['courses'] = Student::findOrFail($id)->courses;
        $data['student_id'] = $id;
        return view('Admin.students.showCourses')->with($data);
    }

    public function approveCourse($id, $c_id)
    { 

        DB::table('course_student')->where('student_id',$id)->where('course_id',$c_id)->update([
            'status' => 'approve',
        ]);
        return back();
    }

    public function rejectCourse($id, $c_id)
    { 
        DB::table('course_student')->where('student_id',$id)->where('course_id',$c_id)->update([
            'status' => 'reject',
        ]);
        return back();
    }

    public function addCourse($id)
    { 
        $data['student_id'] = $id;
        $data['courses'] = Course::select('id','name')->get();

        return view('Admin.students.addCourse')->with($data);

    }

    public function storeCourse($id, Request $request)
    { 
        $data = $request->validate([
            'course_id' => 'required|exists:courses,id',
        ]);

        DB::table('course_student')->insert([
            'student_id' => $id,
            'course_id' => $data['course_id'],
        ]);

        return redirect(route('Admin.students.showCourses',$id));

    }
}
