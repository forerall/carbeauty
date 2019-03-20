@extends('backstage.layouts.body')
@section('title', '列表')
@section('content')
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
            <h1>用户列表
                <small>
                    <i class="icon-double-angle-right"></i>
                </small>
            </h1>
        </div>
        <div class="row">

            <div class="col-xs-12">
                <div class="order-nav">
                    <div{!! request('state')===null?' class="current"':'' !!}><a href="/backstage/user">全部</a></div>
                    @foreach(\App\User::$stateArray as $key=>$type)
                        <div{!! request('state')===strval($key)?' class="current"':'' !!}>
                            <a href="?state={{$key}}">{{$type}}</a>
                        </div>
                    @endforeach
                </div>
            </div>


            <div class="col-xs-12">
                <form id="search_form" action="" method="get" enctype="multipart/form-data"
                      class="form-search search-container">
                    <input type="hidden" name="state" value="{{request('state')}}">
                    <label>姓名:</label>
                    <input type="text" placeholder="" value="{{Request::get('keyword','')}}" class="nav-search-input"
                           id="" autocomplete="off" name="keyword"/>
                    <button class="btn btn-sm" type="submit">搜索</button>
                    <a href="/backstage/user/create" class="btn btn-sm">新增</a>
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
                                <div>姓名</div>
                            </th>
                            <th>
                                <div>性别</div>
                            </th>
                            <th>
                                <div>身份证号码</div>
                            </th>
                            <th>
                                <div>车牌号</div>
                            </th>
                            <th>
                                <div>手机号</div>
                            </th>
                            <th>
                                <div>地址</div>
                            </th>
                            <th>
                                <div>余额</div>
                            </th>

                            <th>
                                <div>注册时间</div>
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
                                    <div>{{$item->sex_str}}</div>
                                </td>
                                <td>
                                    <div>{{$item->idNumber}}</div>
                                </td>
                                <td>
                                    <div>{{$item->plate_number}}</div>
                                </td>
                                <td>
                                    <div>{{$item->phone}}</div>
                                </td>
                                <td>
                                    <div>{{$item->address}}</div>
                                </td>
                                <td>
                                    <div>{{$item->balance}}</div>
                                </td>
                                <td>
                                    <div>{{$item->created_at}}</div>
                                </td>

                                <td width="180">
                                    <div class="  action-buttons">
                                        <a class="blue showBtn" href="/backstage/user/{{$item->id}}"><i
                                                    class="icon-zoom-in bigger-130"></i></a>
                                        <a class="green editBtn" href="/backstage/user/{{$item->id}}/edit"><i
                                                    class="icon-pencil bigger-130"></i></a>
                                        <a class="red delBtn" href="javascript:void(0)"><i
                                                    class="icon-trash bigger-130"></i></a>


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
                @if(request('type')>0)
        var url = '/backstage/user?type=1';
                @else
        var url = '/backstage/user';

        @endif

        $(function () {
            $(".delBtn").click(function () {
                var id = $(this).closest("tr").data("item-id");
                ajaxConfirm("{{url('/backstage/user')}}/" + id, {}, "DELETE", function (data) {
                    location.reload();
                }, "确认删除");
            });
        })


    </script>
@stop