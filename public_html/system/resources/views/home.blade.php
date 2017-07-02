@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">

                    <p>You are logged in!&nbsp;&nbsp;<mark style="font-size:19px">{{Auth::user()->name}}</mark></p>
                <p>EMAIL: {{Auth::user()->email}}</p>
                    <p><strong>IMAGE</strong></p>
                    <img src="{{Auth::user()->avatar}}" style="height: 150px">
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
