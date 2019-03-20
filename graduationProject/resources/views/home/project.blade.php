@extends('home.layouts.main')
@section('title', '美容项目')
@section('content')
    <style>

    </style>


    <div class="pro-exam-title">服务项目</div>

    <div class="pro-exam-content tab-4 ">
        <!--例子 -->
        @foreach($projectList as $project)

            <div class="pro-exam-block ">
                <div>
                    <img class="pro-img" src="{!! $project->picture !!}"/>
                </div>
                <div class="pro-detail">

                    <div class="pro-detail1"> {{$project->name}}</div>

                    <div class="pro-detail1"> 单价：{{$project->price}}</div>

                    <div class="pro-detail2"> 简介：{{$project->remark}}</div>
                </div>

            </div>

        @endforeach
    </div>

    <!-- 分页 -->
    <div class="page">

        {{$projectList->render()}}

    </div>
@endsection
