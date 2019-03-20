@extends('home.layouts.main')
@section('title', '首页')
@section('content')

        <!-- 广告图片 -->
<div>
    <img class="index-img" src="/home/picture/indexPicture.png"/>
</div>

<div class="index-tab">
    <!-- 展示栏 -->
    <div class="index-left">
        <div class="show-title">
            <a href="example.html">施工案例</a>
        </div>
        <div class="show-content">
            @foreach($example as $example)
                <div class="content-tab">
                    <div class="content-img">
                        <img src="{!! $example->picture !!}"/>
                    </div>
                    <div class="content-pro">

                        <div class="content-name"> 施工项目：{{$example->project->name}}</div>
                        <div class="content-user"> 用户：{{$example->user->name}}</div>
                        <div class="content-remark">      {{$example->remark}}</div>


                    </div>
                </div>
            @endforeach
        </div>
    </div>


    <!--推荐栏-->
    <div class="index-right">
        <div class="right-bg">
            <div class="show-title">
                <a href="project">美容推荐</a>
            </div>
            <div class="show-content ">
                @foreach($project as $project)
                    <div class="content-tab">
                        <div class="content-img">
                            <img src="{!! $project->picture !!}"/>
                        </div>
                        <div class="content-pro">
                            <div>
                                <div class="content-name">{{$project->name}}</div>
                                <div class="content-user">单价：{{$project->price}}</div>
                                <div class="content-remark"> 简介：{{$project->remark}}</div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>

        <!-- 联系栏 -->
        <div class="linkBar">


            <div class="tel1">服务热线</div>
            <div class="tel2">预约热线</div>
            <div class="tel3">400-123-2333</div>
            <div class="tel3">183-8088-8866</div>


        </div>
    </div>

</div>


@endsection('content')

@section('script')
    <script type="text/javascript">
        $(function () {
            $("#profiles").click(function () {
                $("#profiles_content").show();
                $("#idea_content").hide();
                $("#progress_content").hide();
                $("#qualifications_content").hide();
                $("#relation_content").hide();
            });

            $("#idea").click(function () {
                $("#profiles_content").hide();
                $("#idea_content").show();
                $("#progress_content").hide();
                $("#qualifications_content").hide();
                $("#relation_content").hide();
            });

            $("#progress").click(function () {
                $("#profiles_content").hide();
                $("#idea_content").hide();
                $("#progress_content").show();
                $("#qualifications_content").hide();
                $("#relation_content").hide();
            });

            $("#qualifications").click(function () {
                $("#profiles_content").hide();
                $("#idea_content").hide();
                $("#progress_content").hide();
                $("#qualifications_content").show();
                $("#relation_content").hide();
            });

            $("#relation").click(function () {
                $("#profiles_content").hide();
                $("#idea_content").hide();
                $("#progress_content").hide();
                $("#qualifications_content").hide();
                $("#relation_content").show();
            });


        });
    </script>
@endsection