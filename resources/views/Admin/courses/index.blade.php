@extends('Admin.layout')

@section('content')

<div class="d-flex justify-content-between mb-4">
    <h6>Courses</h6>
    <a class="btn btn-sm btn-primary" href="{{route('Admin.courses.create')}}">Add New</a>
</div>

<table class="table">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Image</th>
            <th scope="col">Name</th>
            <th scope="col">Price</th>
            <th scope="col">Actions</th>
        </tr>
    </thead>
    <tbody>
        @foreach($courses as $course)
        <tr>
            <th scope="row">{{$loop->iteration}}</th>
            <td>
                <img src="{{ asset('uploads/courses/'. $course->img)}}" height="50px" >
            </td>
            <td>{{$course->name}}</td>
            <td>{{$course->price}}</td>
            <td>
                <a class="btn btn-sm btn-info px-2" href="{{route('Admin.courses.edit' , $course->id)}}">EDIT</a>
                <a class="btn btn-sm btn-danger px-2" href="{{route('Admin.courses.delete' , $course->id)}}">DELETE</a>

            </td>
        </tr>
        @endforeach
    </tbody>
</table>



@endsection