@extends('backstage.layouts.body')
@section('title', '列表')
@section('content')
    <div class="nav-search" id="nav-search">

    </div>
    <div class="page-content">
        <div class="page-header">
            <h1>拍拍列表
                <small>
                    <i class="icon-double-angle-right"></i>
                </small>
            </h1>
        </div>
        <div class="row">
            <div class="order-nav">
                <div{!! request('state')=='1'?' class="current"':'' !!}><a href="?state=1">待审核</a></div>
                <div{!! request('state')=='2'?' class="current"':'' !!}><a href="?state=2">已审核</a></div>
                <div{!! request('state')=='3'?' class="current"':'' !!}><a href="?state=3">审核失败</a></div>
                <div{!! request('state')=='4'?' class="current"':'' !!}><a href="?state=4">已删除</a></div>
            </div>
            <div class="col-xs-12">
                <form id="search_form" action="" method="get" enctype="multipart/form-data" class="form-search search-container">
                    <label>用户Id:</label>
                    <input type="text" placeholder="" value="{{Request::get('user_id','')}}" class="nav-search-input"
                           id="" autocomplete="off" name="user_id"/>
                    <input type="submit" value="搜索">
                </form>
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
                                <div>用户</div>
                            </th>
                            <th>
                                <div>标题</div>
                            </th>
                            <th>
                                <div>状态</div>
                            </th>
                            <th>
                                <div>浏览量</div>
                            </th>
                            <th>
                                <div>点赞数</div>
                            </th>
                            <th>
                                <div>发布时间</div>
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
                                    <div>{{$item->user?$item->user->nickname:''}}</div>
                                </td>
                                <td>
                                    <div>{{$item->title}}</div>
                                </td>
                                <td>
                                    <div>{{$item->state_str}}</div>
                                </td>
                                <td>
                                    <div>{{$item->views}}</div>
                                </td>
                                <td>
                                    <div>{{$item->likes}}</div>
                                </td>
                                <td>
                                    <div>{{$item->created_at}}</div>
                                </td>
                                <td>
                                    <div class="  action-buttons">
                                        <a class="blue showBtn" href="/backstage/pai/{{$item->id}}"><i
                                                    class="icon-zoom-in bigger-130"></i></a>
                                        @if($item->trashed())
                                            <a class="red restoreBtn" href="javascript:void(0)">还原</a>
                                        @else
                                            <a class="red delBtn" href="javascript:void(0)"><i
                                                        class="icon-trash bigger-130"></i></a>
                                        @endif
                                        <a class="blue " href="/backstage/paiComment?pai_id={{$item->id}}">查看评论</a>
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
        var url = '/backstage/pai?state=1';
        $(function () {
            $(".delBtn").click(function () {
                var id = $(this).closest("tr").data("item-id");
                ajaxConfirm("{{url('/backstage/pai')}}/" + id, {}, "DELETE", function (data) {
                    location.reload();
                }, "确认删除");
            });
            $(".restoreBtn").click(function () {
                var id = $(this).closest("tr").data("item-id");
                ajaxConfirm("{{url('/backstage/paiRestore')}}/" + id, {}, "POST", function (data) {
                    location.reload();
                }, "确认还原");
            });
        })
    </script>
@stop