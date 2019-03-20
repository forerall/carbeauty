@extends('backstage.layouts.body')
@section('title', '')
@section('content')
    <div class="page-content">
        <div class="page-header">
            <h1>
                审核
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
                            <div class="profile-info-name">店铺名称</div>
                            <div class="profile-info-value">
                                {{$item->name}}
                            </div>
                        </div>
                    </div>
                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">类型</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->type_str}}</span>
                            </div>
                        </div>
                    </div>

                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">行业分类</div>
                            <div class="profile-info-value">
                                {{$item->category_str}}
                            </div>
                        </div>
                    </div>

                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">营业执照</div>
                            <div class="profile-info-value">
                                <img src="{{$item->license_image}}" style="max-width: 150px">
                            </div>
                        </div>
                    </div>
                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">手持营业执照</div>
                            <div class="profile-info-value">
                                <img src="{{$item->user_license_image}}" style="max-width: 150px">
                            </div>
                        </div>
                    </div>

                    @if($item->store_auth==1)
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
                                    <span class="">{{$item->store_auth_str}}</span>
                                </div>
                            </div>
                            <div class="profile-info-row">
                                <div class="profile-info-name">审核信息</div>
                                <div class="profile-info-value">
                                    <span class="">{{$item->msg}}</span>
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
        var url = '/backstage/storeAuth2?store_auth=1';
        $(function () {
            $('.pass').click(function(){
                var msg = $('#msg').val();
                var id = '{{$item->id}}';
                ajaxConfirm('/backstage/storeAuthPass2',{id:id,pass:1,msg:msg},'POST',function(){
                    location.reload()
                },'确定？','');
            })
            $('.notpass').click(function(){
                var msg = $('#msg').val();
                var id = '{{$item->id}}';
                ajaxConfirm('/backstage/storeAuthPass2',{id:id,pass:2,msg:msg},'POST',function(){
                    location.reload()
                },'确定？','');
            })

        })
    </script>
@stop