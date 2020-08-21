@extends('Admin.layout')

@section('content')

<div class="d-flex justify-content-between mb-4">
    <h6>Students</h6>
    <a class="btn btn-sm btn-primary" href="{{route('Admin.students.create')}}">Add New</a>
</div>

<table class="table">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Speciality</th>
            <th scope="col">Actions</th>
        </tr>
    </thead>
    <tbody>
        @foreach($students as $student)
        <tr>
            <th scope="row">{{$loop->iteration}}</th>
            <td>{{$student->name}}</td>
            <td>{{$student->email}}</td>
            <td>{{$student->spec}}</td>
            <td>
                <a class="btn btn-sm btn-info px-2" href="{{route('Admin.students.edit' , $student->id)}}">EDIT</a>
                <a class="btn btn-sm btn-danger px-2" href="{{route('Admin.students.delete' , $student->id)}}">DELETE</a>
                <a class="btn btn-sm btn-primary px-2" href="{{route('Admin.students.showCourses' , $student->id)}}">SHOW COURSES</a>

            </td>
        </tr>
        @endforeach
    </tbody>
</table>



@endsection