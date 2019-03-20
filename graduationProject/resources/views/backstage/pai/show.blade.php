@extends('backstage.layouts.body')
@section('title', '')
@section('content')
    <div class="page-content">
        <div class="page-header">
            <h1>
                拍拍详情
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
                            <div class="profile-info-name">是否删除</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->deleted_at?'已删除':'未删除'}}</span>
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
                            <div class="profile-info-name">用户</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->user?$item->user->nickname:''}}</span>
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
                            <div class="profile-info-name">图片</div>
                            <div class="profile-info-value">
                                @if($item->images)
                                    @foreach($item->images as $img)
                                        <img style="max-width: 150px" src="{{$img}}">
                                    @endforeach
                                @endif

                            </div>
                        </div>
                    </div>
                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">视频</div>
                            <div class="profile-info-value">

                                @if($item->video)
                                    <video src="{{$item->video}}" style="max-width: 150px" controls="controls"></video>
                                @endif
                            </div>
                        </div>
                    </div>

                    @if($item->state==1)
                        <div class="profile-user-info profile-user-info-striped">
                            <div class="profile-info-row">
                                <div>
                                    <textarea id="msg" style="width: 300px;"></textarea>
                                </div>
                                <div class="btn pass">通过</div>
                                <div class="btn notpass">不通过</div>
                            </div>
                        </div>
                    @else
                        <div class="profile-user-info profile-user-info-striped">
                            <div class="profile-info-row">
                                <div class="profile-info-name">审核状态</div>
                                <div class="profile-info-value">
                                    <span class="">{{$item->state_str}}</span>
                                </div>
                            </div>
                            <div class="profile-info-row">
                                <div class="profile-info-name">审核信息</div>
                                <div class="profile-info-value">
                                    <span class="">&nbsp;{{$item->msg}}</span>
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
        var url = '/backstage/pai?state=1';
        $(function () {
            $('.pass').click(function(){
                var msg = $('#msg').val();
                var id = '{{$item->id}}';
                ajaxConfirm('/backstage/paiAuthPass',{id:id,pass:1,msg:msg},'POST',function(){
                    location.reload()
                },'确定？','');
            })
            $('.notpass').click(function(){
                var msg = $('#msg').val();
                var id = '{{$item->id}}';
                ajaxConfirm('/backstage/paiAuthPass',{id:id,pass:2,msg:msg},'POST',function(){
                    location.reload()
                },'确定？','');
            })
        })
    </script>
@stop