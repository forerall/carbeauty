@extends('backstage.layouts.body')
@section('title', '列表')
@section('content')
    <div class="nav-search" id="nav-search">
        <form id="search_form" action="" method="get" enctype="multipart/form-data" class="form-search">
            <span class="input-icon">
                <input type="text" placeholder="搜索..." value="{{Request::get('keyword','')}}" class="nav-search-input"
                       id="" autocomplete="off" name="keyword"/>
                <i class="icon-search nav-search-icon"></i>
                </span>
        </form>
    </div>
    <div class="page-content">
        <div class="page-header">
            <h1>优惠券列表
                <small>
                    <i class="icon-double-angle-right"></i>
                </small>
            </h1>
        </div>
        <div class="row">
            <div class="col-xs-12 hide">
                <div class="alert alert-success">
                    <button type="button" class="close" data-dismiss="alert">
                    </button>
                    <strong>
                        提醒：
                    </strong>
                    在门店首页只显示这里创建的第一个优惠券,活动优惠券请在红包列表配置！
                    <br>
                </div>
            </div>
            <div class="col-xs-12 r-toolbar">
                <a href="/backstage/coupon/create" class="btn btn-sm">新增</a>
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
                                <div>面值</div>
                            </th>
                            <th>
                                <div>总数量</div>
                            </th>
                            <th>
                                <div>已领取</div>
                            </th>
                            <th>
                                <div>已使用</div>
                            </th>
                            <th>
                                <div>状态</div>
                            </th>
                            <th>
                                <div>创建时间</div>
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
                                    <div>{{$item->money_str}}元</div>
                                </td>
                                <td>
                                    <div>{{$item->total}}</div>
                                </td>
                                <td>
                                    <div>{{$item->got}}</div>
                                </td>
                                <td>
                                    <div>{{$item->used}}</div>
                                </td>
                                <td>
                                    <div>{{$item->state_str}}</div>
                                </td>
                                <td>
                                    <div>{{$item->created_at}}</div>
                                </td>
                                <td width="200">
                                    <div class="  action-buttons">
                                        <a class="green" href="/backstage/coupon/{{$item->id}}">查看详情</a>
                                        @if($item->state==1)
                                            <a class="green editBtn" href="/backstage/coupon/{{$item->id}}/edit"><i
                                                        class="icon-pencil bigger-130"></i></a>
                                            <a class="red delBtn" href="javascript:void(0)">关闭</a>
                                        @endif
                                    </div>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="8" class="no-record">没有记录！</td>
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
        var url = '/backstage/coupon';
        $(function () {
            $(".delBtn").click(function () {
                var id = $(this).closest("tr").data("item-id");
                ajaxConfirm("{{url('/backstage/coupon')}}/" + id, {state: 2}, "PUT", function (data) {
                    location.reload();
                }, "确认关闭");
            });
        })
    </script>
@stop