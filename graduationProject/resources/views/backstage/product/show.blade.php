@extends('backstage.layouts.body')
@section('title', '')
@section('content')
    <div class="page-content">
        <div class="page-header">
            <h1>
                商品详情
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
                            <div class="profile-info-name">店铺</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->store->name}}</span>
                            </div>
                        </div>
                    </div>

                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">商品名</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->name}}</span>
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
                            <div class="profile-info-name">价格</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->price_str}}</span>
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
                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">商品介绍</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->detail}}</span>
                            </div>
                        </div>
                    </div>
                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">商品图片</div>
                            <div class="profile-info-value">
                                @if($item->images)
                                @foreach($item->images as $img)
                                    <img src="{{$img}}">
                                @endforeach
                                @endif
                            </div>
                        </div>
                    </div>
                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">商品详情</div>
                            <div class="profile-info-value">
                                @if($item->images)
                                @foreach($item->image_detail as $img)
                                    <img src="{{$img}}">
                                @endforeach
                                @endif
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
                        @if($item->state == 2)
                            <div class="btn up">上架</div>
                        @else
                            <div class="btn down">下架</div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
@section('script')
    <script>
        var url = '/backstage/product';
        $(function () {
            $('.up').click(function(){
                var id = '{{$item->id}}';
                ajaxConfirm('/backstage/product/'+id,{id:id,state:1},'PUT',function(){
                    location.reload();
                },'确认上架？','');
            })
            $('.down').click(function(){
                var id = '{{$item->id}}';
                ajaxConfirm('/backstage/product/'+id,{id:id,state:2},'PUT',function(){
                    location.reload();
                },'确认下架？','');
            })
        })
    </script>
@stop