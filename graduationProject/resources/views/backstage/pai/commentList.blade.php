@extends('backstage.layouts.body')
@section('title', '列表')
@section('content')
    <div class="nav-search" id="nav-search">

    </div>
    <div class="page-content">
        <div class="page-header">
            <h1>评论列表
                <small>
                    <i class="icon-double-angle-right"></i>
                </small>
            </h1>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <form id="search_form" action="" method="get" enctype="multipart/form-data" class="form-search search-container">
                    <label>拍拍Id:</label>
                    <input type="text" placeholder="" value="{{Request::get('pai_id','')}}" class="nav-search-input"
                       id="" autocomplete="off" name="pai_id"/>
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
                                <div>拍拍</div>
                            </th>
                            <th>
                                <div>评论人</div>
                            </th>
                            <th>
                                <div>回复人</div>
                            </th>
                            <th>
                                <div>内容</div>
                            </th>
                            <th>
                                <div>时间</div>
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
                                    <div>{{$item->pai?$item->pai->title:''}}</div>
                                </td>
                                <td>
                                    <div>{{$item->user?$item->user->nickname:''}}</div>
                                </td>
                                <td>
                                    <div>{{$item->reply_user?$item->reply_user->nickname:''}}</div>
                                </td>
                                <td>
                                    <div>{{$item->content}}</div>
                                </td>
                                <td>
                                    <div>{{$item->created_at}}</div>
                                </td>
                                <td>
                                    <div class="  action-buttons">
                                        <a class="blue showBtn" style="display:none" href="/backstage/product/{{$item->id}}"><i
                                                    class="icon-zoom-in bigger-130"></i></a>
                                        <a class="red delBtn" href="javascript:void(0)"><i
                                                    class="icon-trash bigger-130"></i></a>
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
        var url = '/backstage/paiComment';
        $(function () {
            $(".delBtn").click(function () {
                var id = $(this).closest("tr").data("item-id");
                ajaxConfirm("{{url('/backstage/paiComment')}}/" + id, {}, "DELETE", function (data) {
                    location.reload();
                }, "确认删除");
            });
        })
    </script>
@stop