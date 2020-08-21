@if($errors->any())
<ul class="list-unstyled mt-5 alert alert-danger">
    @foreach($errors->all() as $error)
    <li>{{$error}}</li>
    @endforeach
</ul>
@endif