@extends('Admin.layout')

@section('content')


<div class="d-flex justify-content-between mb-3">
    <h6>Trainers / Add New</h6>
    <a class="btn btn-sm btn-primary" href="{{route('Admin.trainers.index')}}">BACK</a>
</div>

@include('Admin.inc.errors')
<form method="POST" action="{{route('Admin.trainers.store')}}" enctype="multipart/form-data">
    @csrf
  <div class="form-group">
    <label> Name :  </label>
    <input type="text" class="form-control" name="name">
  </div>
  <div class="form-group">
    <label> Phone :  </label>
    <input type="text" class="form-control" name="phone">
  </div>
  <div class="form-group">
    <label> Speciatity :  </label>
    <input type="text" class="form-control" name="spec">
  </div>
  <div class="form-group" >
    <label> Image :  </label>
    <input type="file" class="form-control-file" name="img">
  </div>

  <button type="submit" class="btn btn-primary" name="Submit">Submit</button>
</form>

@endsection