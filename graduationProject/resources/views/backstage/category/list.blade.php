@extends('backstage.layouts.body')
@section('title', '列表')
@section('content')
    <div class="page-content">
        <div class="page-header">
            <h1>分类列表
                <small>
                    <i class="icon-double-angle-right"></i>
                </small>
            </h1>
        </div>
        <div class="row">
            <div class="col-xs-12 r-toolbar">
                <a href="/backstage/category/create" class="btn btn-sm">新增</a>
            </div>
            <div class="col-xs-12">
                <div class="table-responsive">
                    <table class="table table-bordered list">
                        <thead>
                        <tr>
                            <th>
                                <div>ID</div>
                            </th>
                            <th>
                                <div></div>
                            </th>
                            <th>
                                <div>分类名称</div>
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
                                    <div>
                                        {{$item->level_str}}
                                    </div>
                                </td>
                                <td>
                                    <div>{{$item->name}}</div>
                                </td>
                                <td>
                                    <div>{{$item->created_at}}</div>
                                </td>
                                <td width="120">
                                    <div class="action-buttons">
                                        <a class="green editBtn" href="/backstage/category/{{$item->id}}/edit"><i
                                                    class="icon-pencil bigger-130"></i></a>
                                        <a class="red delBtn" href="javascript:void(0)"><i
                                                    class="icon-trash bigger-130"></i></a>
                                    </div>
                                </td>
                            </tr>
                            @if(!empty($item->sub))
                                @foreach($item->sub as $sub)
                                    <tr data-item-id="{{$sub->id}}">
                                        <td>
                                            <div>{{$sub->id}}</div>
                                        </td>
                                        <td>
                                            <div>{{$sub->level_str}}</div>
                                        </td>
                                        <td>
                                            <div>{{$sub->name}}</div>
                                        </td>
                                        <td>
                                            <div>{{$sub->created_at}}</div>
                                        </td>
                                        <td width="120">
                                            <div class="action-buttons">
                                                <a class="green editBtn" href="/backstage/category/{{$sub->id}}/edit"><i
                                                            class="icon-pencil bigger-130"></i></a>
                                                <a class="red delBtn" href="javascript:void(0)"><i
                                                            class="icon-trash bigger-130"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                            @endif
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
    </div>
@stop
@section('script')
    <script>
        var url = '/backstage/category';
        $(function () {
            $(".delBtn").click(function () {
                var id = $(this).closest("tr").data("item-id");
                ajaxConfirm("{{url('/backstage/category')}}/" + id, {}, "DELETE", function (data) {
                    location.reload();
                }, "确认删除");
            });
        })
    </script>
@stop