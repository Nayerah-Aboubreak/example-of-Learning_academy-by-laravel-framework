@extends('Admin.layout')

@section('content')


<div class="d-flex justify-content-between mb-3">
    <h6>Courses / Edit /{{$course->name}}</h6>
    <a class="btn btn-sm btn-primary" href="{{route('Admin.courses.index')}}">BACK</a>
</div>


@include('Admin.inc.errors')
<form method="POST" action="{{route('Admin.courses.update')}}" enctype="multipart/form-data">
  @csrf
<input type="hidden" name="id" value="{{$course->id}}">

  <div class="form-group">
    <label> Name : </label>
    <input type="text" class="form-control" name="name" value="{{ $course->name}}">
  </div>
  <div class="form-group">
    <label> Categories : </label>
    <select class="form-control" name="cat_id">
      @foreach($cats as $cat)
      <option value="{{ $cat->id}}" @if($course->cat_id == $cat->id) selected  @endif>{{ $cat->name}}</option>
      @endforeach
    </select>
  </div>
  <div class="form-group">
    <label> Trainers : </label>
    <select class="form-control" name="trainer_id">
      @foreach($trainers as $trainer)
      <option value="{{ $trainer->id}}"  @if($course->trainer_id == $trainer->id) selected  @endif>{{ $trainer->name}}</option>
      @endforeach
    </select>
  </div>


  <div class="form-group">
    <label> Small_description : </label>
    <input type="text" class="form-control" name="small_desc" value="{{ $course->small_desc}}">
  </div>
  <div class="form-group">
    <label> Description : </label>
    <textarea name="desc" rows="10" cols="30" class="form-control" >{{ $course->desc}}</textarea>
  </div>
  <div class="form-group">
    <label> Price : </label>
    <input type="number" class="form-control" name="price" value="{{ $course->price}}">
  </div>
  <div class="form-group">
    <label> Image : </label>
    <img src="{{ asset('uploads/courses/'. $course->img)}}" height="100px" alt="" class="m-4 rounded-circle" >

    <input type="file" class="form-control-file" name="img">
  </div>

  <button type="submit" class="btn btn-primary" name="Submit">Submit</button>
</form>

@endsection