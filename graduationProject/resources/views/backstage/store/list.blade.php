@extends('backstage.layouts.body')
@section('title', '列表')
@section('content')
    <div class="nav-search" id="nav-search">
        <form id="search_form" action="" method="get" enctype="multipart/form-data" class="form-search">
            <span class="input-icon">
                 <input type="hidden" name="state" value="{{request('state')}}">
                <input type="text" placeholder="搜索..." value="{{Request::get('keyword','')}}" class="nav-search-input"
                       id="" autocomplete="off" name="keyword"/>
                <i class="icon-search nav-search-icon"></i>
                </span>
        </form>
    </div>
    <div class="page-content">
        <div class="page-header">
            <h1>店铺列表
                <small>
                    <i class="icon-double-angle-right"></i>
                </small>
            </h1>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="order-nav">
                    <div{!! request('state')===null?' class="current"':'' !!}><a href="/backstage/store">全部</a></div>
                    <div{!! request('state')=='1'?' class="current"':'' !!}><a href="?state=1">开启</a></div>
                    <div{!! request('state')==='0'?' class="current"':'' !!}><a href="?state=0">关闭</a></div>
                    <div{!! request('state')=='4'?' class="current"':'' !!}><a href="?state=4">管理员关闭</a></div>
                </div>
            </div>
            <div class="col-xs-12">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover list">
                        <thead>
                        <tr>
                            <th>
                                <div>ID</div>
                            </th>
                            <th>
                                <div>名称</div>
                            </th>
                            <th>
                                <div>用户</div>
                            </th>
                            <th>
                                <div>类型</div>
                            </th>
                            <th>
                                <div>状态</div>
                            </th>
                            <th>
                                <div>商家认证</div>
                            </th>
                            <th>
                                <div>浏览数</div>
                            </th>
                            <th>
                                <div>点赞数</div>
                            </th>
                            <th>
                                <div>商品数</div>
                            </th>
                            <th>
                                <div>操作</div>
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        @forelse($list as $item)
                            <tr data-item-id="{{$item->id}}">
                                <td>
                                    <div>{{$item->id}}</div>
                                </td>
                                <td>
                                    <div>{{$item->name}}</div>
                                </td>
                                <td>
                                    <div>{{$item->user?$item->user->name:''}}</div>
                                </td>
                                <td>
                                    <div>{{$item->type_str}}</div>
                                </td>
                                <td>
                                    <div>{{$item->state_str}}</div>
                                </td>
                                <td>
                                    <div>{{$item->store_auth_str}}</div>
                                </td>
                                <td>
                                    <div>{{$item->views}}</div>
                                </td>
                                <td>
                                    <div>{{$item->likes}}</div>
                                </td>
                                <td>
                                    <div>{{$item->product_count}}</div>
                                </td>
                                <td width="160">
                                    <div class="  action-buttons">
                                        <a class="blue showBtn" href="/backstage/store/{{$item->id}}"><i
                                                    class="icon-zoom-in bigger-130"></i></a>
                                        <a class="blue " href="/backstage/product?store_id={{$item->id}}">查看商品</a>
                                        @if($item->state!=4)
                                        <a class="blue closeBtn " href="javascript:void(0)">关闭</a>
                                            @else
                                            <a class="blue openBtn " href="javascript:void(0)">开启</a>
                                        @endif
                                    </div>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="9" class="no-record">没有记录！</td>
                            </tr>
                        @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6"></div>
            <div class="col-sm-6">{{$list->render()}}</div>
        </div>
    </div>
@stop
@section('script')
    <script>
        var url = '/backstage/store';
        $(function () {
            $(".closeBtn").click(function () {
                var id = $(this).closest("tr").data("item-id");
                ajaxConfirm("/backstage/closeStore?id=" + id, {}, "POST", function (data) {
                    location.reload();
                }, "确认关闭");
            });
            $(".openBtn").click(function () {
                var id = $(this).closest("tr").data("item-id");
                ajaxConfirm("/backstage/closeStore?open=1&id=" + id, {}, "POST", function (data) {
                    location.reload();
                }, "确认开启");
            });
        })
    </script>
@stop