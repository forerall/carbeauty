@extends('backstage.layouts.body')
@section('title', '')
@section('content')
    <div class="page-content">
        <div class="page-header">
            <h1>
                案例详情
                <small>
                    <i class="icon-double-angle-right"></i>
                </small>
            </h1>
        </div>
        <div class="row">
            <div class="col-xs-12">
                @if (count($errors) > 0)
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
                <div class="form-horizontal">
                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">编号</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->id}}</span>
                            </div>
                        </div>
                    </div>


                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">用户Id</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->user_id}}</span>
                            </div>
                        </div>
                    </div>

                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">用户名</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->user->name}}</span>
                            </div>
                        </div>
                    </div>

                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">项目Id</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->project_id}}</span>
                            </div>
                        </div>
                    </div>

                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">项目名</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->project->name}}</span>
                            </div>
                        </div>
                    </div>

                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">创建时间</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->created_at}}</span>
                            </div>
                        </div>
                    </div>
                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">图片</div>
                            <div class="profile-info-value">
                                <span class=""><img class="example_img" src="{!! $item->picture !!}"></span>
                            </div>
                        </div>
                    </div>

                </div>
                <br>
                <div class="form-group">
                    <div class="col-xs-12 col-sm-9">
                        <div class="btn btn-prev event-back">
                            <i class="icon-arrow-left"></i>
                            返回
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
@section('script')
    <script>
        $(function () {

        })
    </script>
@stop