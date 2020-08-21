@extends('Admin.layout')

@section('content')


<div class="d-flex justify-content-between mb-3">
    <h6>Students / Edit / Add course</h6>
    <a class="btn btn-sm btn-primary" href="{{route('Admin.students.index')}}">BACK</a>
</div>


@include('Admin.inc.errors')
<form method="POST" action="{{route ('Admin.students.storeCourse', $student_id) }}">
  @csrf
<input type="hidden" name="id" value="{{$student_id}}">

  <div class="form-group">
    <label> Courses : </label>
    <select class="form-control" name="course_id">
      @foreach($courses as $course)
      <option value="{{ $course->id}}">{{ $course->name}}</option>
      @endforeach
    </select>
  </div>

  <button type="submit" class="btn btn-primary" name="Submit">Submit</button>
</form>

@endsection