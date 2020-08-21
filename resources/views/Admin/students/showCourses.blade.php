@extends('Admin.layout')

@section('content')

<div class="d-flex justify-content-between mb-3">
    <h6>Students / Show Courses</h6>
    <a class="btn btn-sm btn-info ml-auto mx-3" href="{{route('Admin.students.addCourse',$student_id)}}">Add to course</a>
    <a class="btn btn-sm btn-primary" href="{{route('Admin.students.index')}}">BACK</a>
</div>


<table class="table">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Status</th>
            <th scope="col">Actions</th>
        </tr>
    </thead>
    <tbody>

        @foreach($courses as $course)

        <tr>
            <td>{{ $loop->iteration }}</td>
            <td>{{$course->name}}</td>
            <td>{{$course->pivot->status}}</td>
            <td>
                @if($course->pivot->status !== 'approve')
                <a class="btn btn-sm btn-info px-2" href="{{route('Admin.students.approveCourse' , [$student_id ,$course->id])}}">APPROVE</a>
                @endif
                @if($course->pivot->status !== 'reject')
                <a class="btn btn-sm btn-danger px-2" href="{{route('Admin.students.rejectCourse' , [$student_id ,$course->id])}}">REJECT</a>
                @endif

            </td>
        </tr>

        @endforeach

    </tbody>
</table>
@endsection