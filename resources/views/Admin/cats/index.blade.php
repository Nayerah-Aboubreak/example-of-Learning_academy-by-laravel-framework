@extends('Admin.layout')

@section('content')

<div class="d-flex justify-content-between mb-4">
    <h6>Categories</h6>
    <a class="btn btn-sm btn-primary" href="{{route('Admin.cats.create')}}">Add New</a>
</div>

<table class="table">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Actions</th>
        </tr>
    </thead>
    <tbody>
        @foreach($cats as $cat)
        <tr>
            <th scope="row">{{$loop->iteration}}</th>
            <td>{{$cat->name}}</td>
            <td>
                <a class="btn btn-sm btn-info px-2" href="{{route('Admin.cats.edit' , $cat->id)}}">EDIT</a>
                <a class="btn btn-sm btn-danger px-2" href="{{route('Admin.cats.delete' , $cat->id)}}">DELETE</a>

            </td>
        </tr>
        @endforeach
    </tbody>
</table>



@endsection