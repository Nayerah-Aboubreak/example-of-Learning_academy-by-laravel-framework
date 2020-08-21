@extends('Admin.layout')

@section('content')


<div class="d-flex justify-content-between mb-3">
  <h6>Courses / Add New</h6>
  <a class="btn btn-sm btn-primary" href="{{route('Admin.courses.index')}}">BACK</a>
</div>

@include('Admin.inc.errors')
<form method="POST" action="{{route('Admin.courses.store')}}" enctype="multipart/form-data">
  @csrf
  <div class="form-group">
    <label> Name : </label>
    <input type="text" class="form-control" name="name">
  </div>
  <div class="form-group">
    <label> Categories : </label>
    <select class="form-control" name="cat_id">
      @foreach($cats as $cat)
      <option value="{{ $cat->id}}">{{ $cat->name}}</option>
      @endforeach
    </select>
  </div>
  <div class="form-group">
    <label> Trainers : </label>
    <select class="form-control" name="trainer_id">
      @foreach($trainers as $trainer)
      <option value="{{ $trainer->id}}">{{ $trainer->name}}</option>
      @endforeach
    </select>
  </div>


  <div class="form-group">
    <label> Small_description : </label>
    <input type="text" class="form-control" name="small_desc">
  </div>
  <div class="form-group">
    <label> Description : </label>
    <textarea name="desc" rows="10" cols="30" class="form-control"> </textarea>
  </div>
  <div class="form-group">
    <label> Price : </label>
    <input type="number" class="form-control" name="price">
  </div>
  <div class="form-group">
    <label> Image : </label>
    <input type="file" class="form-control-file" name="img">
  </div>

  <button type="submit" class="btn btn-primary" name="Submit">Submit</button>
</form>

@endsection