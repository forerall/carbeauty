@extends('backstage.layouts.body')
@section('title', '')
@section('content')
    <div class="page-content">
        <div class="page-header">
            <h1>
                店铺详情
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
                            <div class="profile-info-name">开店审核</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->auth_str}}</span>
                            </div>
                        </div>
                    </div>
                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">店铺认证</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->store_auth_str}}</span>
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
                            <div class="profile-info-name">店铺首页图片</div>
                            <div class="profile-info-value">
                                <img src=" {{$item->image}}" style="max-width: 150px">
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
                    @if($item->type == 1)
                        <div class="profile-user-info profile-user-info-striped">
                            <div class="profile-info-row">
                                <div class="profile-info-name">大楼名称</div>
                                <div class="profile-info-value">
                                    <span class="">{{$item->building?$item->building->name:''}}</span>
                                </div>
                            </div>
                        </div>
                    @endif
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
                            <div class="profile-info-name">城市</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->area?$item->area->full_name:''}}</span>
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
                            <div class="profile-info-name">附加地址</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->address_bak}}</span>
                            </div>
                        </div>
                    </div>
                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">浏览数</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->views}}</span>
                            </div>
                        </div>
                    </div>
                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">点赞数</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->likes}}</span>
                            </div>
                        </div>
                    </div>

                    @if($item->store_auth == 2)
                        <div class="profile-user-info profile-user-info-striped">
                            <div class="profile-info-row">
                                <div class="profile-info-name">营业执照</div>
                                <div class="profile-info-value">
                                    <img src="{{$item->license_image}}">
                                </div>
                            </div>
                        </div>
                    @endif

                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">店铺介绍</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->detail}}</span>
                            </div>
                        </div>
                    </div>

                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">开店时间</div>
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
        var url = '/backstage/store';
        $(function () {

        })
    </script>
@stop