@extends('backstage.layouts.body')
@section('title', '列表')
@section('content')
    <style>

        }
    </style>
    <div class="nav-search" id="nav-search">
        <form id="search_form" action="" method="get" enctype="multipart/form-data" class="form-search">
            <input type="hidden" name="store" value="{{request('store','')}}">
            <span class="input-icon">
                <input type="text" placeholder="搜索..." value="{{Request::get('keyword','')}}" class="nav-search-input"
                       id="" autocomplete="off" name="keyword"/>
                <i class="icon-search nav-search-icon"></i>
                </span>
        </form>
    </div>
    <div class="page-content">
        <div class="page-header">
            <h1>案例列表
                <small>
                    <i class="icon-double-angle-right"></i>
                </small>
            </h1>
        </div>
        <div class="row">


            <div class="col-xs-12">
                <form id="search_form" action="" method="get" enctype="multipart/form-data"
                      class="form-search search-container">

                    <label>项目:</label>
                    <input type="text" placeholder="" value="{{Request::get('keyword','')}}" class="nav-search-input"
                           id="" autocomplete="off" name="keyword"/>
                    <button class="btn btn-sm" type="submit">搜索</button>
                    <a href="/backstage/example/create" class="btn btn-sm">新增</a>
                </form>
            </div>

            <div class="col-xs-12">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover list">
                        <thead>
                        <tr>
                            <th>
                                <div>编号</div>
                            </th>
                            <th>
                                <div>用户名</div>
                            </th>
                            <th>
                                <div>项目名</div>
                            </th>
                            <th>
                                <div>创建时间</div>
                            </th>
                            <th>
                                <div>图片</div>
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
                                    <div>{{$item->user->name}}</div>
                                </td>
                                <td>
                                    <div>{{$item->project->name}}</div>
                                </td>
                                <td>
                                    <div>{{$item->created_at}}</div>
                                </td>
                                <td>
                                    <div><img class="example_img" src="{!! $item->picture !!}"></div>
                                </td>

                                <td width="180">
                                    <div class="  action-buttons">
                                        <a class="blue showBtn" href="/backstage/example/{{$item->id}}"><i
                                                    class="icon-zoom-in bigger-130"></i></a>

                                        <a class="red delBtn" href="javascript:void(0)"><i
                                                    class="icon-trash bigger-130"></i></a>

                                        <a class="green editBtn" href="/backstage/example/{{$item->id}}/edit"><i
                                                    class="icon-pencil bigger-130"></i></a>


                                    </div>
                                </td>


                            </tr>
                        @empty
                            <tr>
                                <td colspan="11" class="no-record">没有记录！</td>
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
    <script type="text/javascript" src="/box/plug-in/upload/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/box/plug-in/upload/jquery.fileupload.js"></script>

    <script>

        $(function () {
            $(".delBtn").click(function () {
                var id = $(this).closest("tr").data("item-id");
                ajaxConfirm("{{url('/backstage/example')}}/" + id, {}, "DELETE", function (data) {
                    location.reload();
                }, "确认删除");
            });

        })


    </script>
@stop