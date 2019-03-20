@extends('home.layouts.main')
@section('title', '施工案例')
@section('content')

    <style>


    </style>
    <div class="pro-exam-title">施工案例</div>

    <div class="tab-2 ">
        @foreach($exampleList as $example)
                <!-- 例子-->
        <div class="pro-exam-block tab-2 bottom-side">
            <div>
                <img class="exam-img" src="{!! $example->picture !!}"/>
            </div>
            <div class="exam-detail">
                <div class="exam-detail1">{{$example->project->name}}</div>
                <div class="exam-detail1"> 施工项目:{{$example->project->name}}</div>
                <div class="exam-detail1"> 客户:{{$example->user->name}}</div>
                <div class="exam-detail2"> {{$example->remark}}</div>
            </div>
        </div>
        @endforeach

    </div>


    <!-- 分页 -->
    <div class="page">
        {{$exampleList->render()}}
    </div>

@endsection('content')



