@extends('Admin.layout')

@section('content')


<div class="d-flex justify-content-between mb-3">
    <h6>Trainers / Edit /{{$trainer->name}}</h6>
    <a class="btn btn-sm btn-primary" href="{{route('Admin.trainers.index')}}">BACK</a>
</div>


@include('Admin.inc.errors')
<form method="POST" action="{{route('Admin.trainers.update')}}" enctype="multipart/form-data">
@csrf
<input type="hidden" name="id" value="{{$trainer->id}}">
  <div class="form-group">
    <label> Name :  </label>
    <input type="text" class="form-control" name="name" value="{{$trainer->name}}">
  </div>
  <div class="form-group">
    <label> Phone :  </label>
    <input type="text" class="form-control" name="phone" value="{{$trainer->phone}}">
  </div>
  <div class="form-group">
    <label> Speciatity :  </label>
    <input type="text" class="form-control" name="spec" value="{{$trainer->spec}}">
  </div>

  <div class="form-group" >
    <label> Image :  </label>
    <img src="{{ asset('uploads/trainers/'. $trainer->img)}}" height="100px" alt="" class="m-4 rounded-circle" >

    <input type="file" class="form-control-file" name="img">
  </div>

  <button type="submit" class="btn btn-primary" name="Submit">Submit</button>
</form>

@endsection