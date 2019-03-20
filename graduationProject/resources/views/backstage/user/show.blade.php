@extends('backstage.layouts.body')
@section('title', '')
@section('content')
    <div class="page-content">
        <div class="page-header">
            <h1>
                用户详情
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
                            <div class="profile-info-name">ID</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->id}}</span>
                            </div>
                        </div>
                    </div>



                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">姓名</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->name}}</span>
                            </div>
                        </div>
                    </div>



                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">性别</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->sex_str}}</span>
                            </div>
                        </div>
                    </div>

                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">身份证号码</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->idNumber}}</span>
                            </div>
                        </div>
                    </div>

                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">车牌号</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->plate_number}}</span>
                            </div>
                        </div>
                    </div>


                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">手机号</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->phone}}</span>
                            </div>
                        </div>
                    </div>

                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">地址</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->address}}</span>
                            </div>
                        </div>
                    </div>

                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">余额</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->balance}}</span>
                            </div>
                        </div>
                    </div>


                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">注册日期</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->created_at}}</span>
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
       @if($item->auth_type>0)
        var url = '/backstage/user?type=1';
       @else
        var url = '/backstage/user';

        @endif
        $(function () {

        })
    </script>
@stop