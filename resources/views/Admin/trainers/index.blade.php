@extends('Admin.layout')

@section('content')

<div class="d-flex justify-content-between mb-4">
    <h6>Trainers</h6>
    <a class="btn btn-sm btn-primary" href="{{route('Admin.trainers.create')}}">Add New</a>
</div>

<table class="table">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Image</th>
            <th scope="col">Name</th>
            <th scope="col">Phone</th>
            <th scope="col">Spec</th>
            <th scope="col">Actions</th>
        </tr>
    </thead>
    <tbody>
        @foreach($trainers as $trainer)
        <tr>
            <th scope="row">{{$loop->iteration}}</th>
            <td>
                <img src="{{ asset('uploads/trainers/'. $trainer->img)}}" height="50px" class="rounded-circle" >
            </td>
            <td>{{$trainer->name}}</td>
            <td>
                @if($trainer->phone !== null)
                {{$trainer->phone}}
                @else
                not exist
                @endif
            </td>
            <td>{{$trainer->spec}}</td>
            <td>
                <a class="btn btn-sm btn-info px-2" href="{{route('Admin.trainers.edit' , $trainer->id)}}">EDIT</a>
                <a class="btn btn-sm btn-danger px-2" href="{{route('Admin.trainers.delete' , $trainer->id)}}">DELETE</a>

            </td>
        </tr>
        @endforeach
    </tbody>
</table>



@endsection