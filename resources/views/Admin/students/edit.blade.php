@extends('Admin.layout')

@section('content')


<div class="d-flex justify-content-between mb-3">
    <h6>Students / Edit /{{$student->name}}</h6>
    <a class="btn btn-sm btn-primary" href="{{route('Admin.students.index')}}">BACK</a>
</div>


@include('Admin.inc.errors')
<form method="POST" action="{{route('Admin.students.update')}}">
  @csrf
<input type="hidden" name="id" value="{{$student->id}}">

  <div class="form-group">
    <label> Name : </label>
    <input type="text" class="form-control" name="name" value="{{ $student->name}}">
  </div>

  <div class="form-group">
    <label> Email : </label>
    <input type="email" class="form-control" name="email" value="{{ $student->email}}">
  </div>
  <div class="form-group">
    <label> Speciality : </label>
    <input type="text" class="form-control" name="spec" value="{{ $student->spec}}">
  </div>

  <button type="submit" class="btn btn-primary" name="Submit">Submit</button>
</form>

@endsection