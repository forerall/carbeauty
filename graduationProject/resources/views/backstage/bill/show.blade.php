@extends('backstage.layouts.body')
@section('title', '')
@section('content')
    <div class="page-content">
        <div class="page-header">
            <h1>
                奖励单详情
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
                            <div class="profile-info-name">标题</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->title}}</span>
                            </div>
                        </div>
                    </div>


                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">内容</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->content}}</span>
                            </div>
                        </div>
                    </div>

                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">客户</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->user->name}}</span>
                            </div>
                        </div>
                    </div>



                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">二维码</div>
                            <div class="profile-info-value">
                               <img src="{!! \App\Services\CommonService::qrCodeImage($item->qrcode_url) !!}">
                            </div>
                        </div>
                    </div>
                    

                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">状态</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->state_str}}</span>
                            </div>
                        </div>
                    </div>



                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">创建时间</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->updated_at}}</span>
                            </div>
                        </div>
                    </div>

                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">是否领取</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->receive_str}}</span>
                            </div>
                        </div>
                    </div>


                    @if($item->state==3)
                        <div class="profile-user-info profile-user-info-striped">
                            <div class="profile-info-row">
                                <div class="profile-info-name">客户反馈</div>
                                <div class="profile-info-value">
                                    <span class="">{{$item->remark}}</span>
                                </div>
                            </div>
                        </div>
                        @endif



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