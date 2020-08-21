@extends('Admin.layout')

@section('content')


<div class="d-flex justify-content-between mb-3">
    <h6>Categories / Add New</h6>
    <a class="btn btn-sm btn-primary" href="{{route('Admin.cats.index')}}">BACK</a>
</div>

@include('Admin.inc.errors')
<form method="POST" action="{{route('Admin.cats.store')}}">
    @csrf
  <div class="form-group">
    <label> Name :  </label>
    <input type="text" class="form-control" name="name">
  </div>

  <button type="submit" class="btn btn-primary" name="Submit">Submit</button>
</form>

@endsection