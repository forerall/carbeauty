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
            <h1>奖励单列表
                <small>
                    <i class="icon-double-angle-right"></i>
                </small>
            </h1>
        </div>
        <div class="row">

            <div class="col-xs-12">
                <div class="order-nav">
                    <div{!! request('state')===null?' class="current"':'' !!}><a href="/backstage/bill">全部</a></div>
                    @foreach(\App\Models\Bill::$stateArray as $key=>$type)
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
                    <label>编号:</label>
                    <input type="text" placeholder="" value="{{Request::get('keyword','')}}" class="nav-search-input"
                           id="" autocomplete="off" name="keyword"/>
                    <button class="btn btn-sm" type="submit">搜索</button>
                    <a href="/backstage/bill/create" class="btn btn-sm">新增</a>
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
                                <div>标题</div>
                            </th>
                            <th>
                                <div>内容</div>
                            </th>
                            <th>
                                <div>客户</div>
                            </th>
                            <th>
                                <div>状态</div>
                            </th>
                            <th>
                                <div>创建时间</div>
                            </th>
                            <th>
                                <div>确认时间</div>
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
                                    <div>{{$item->title}}</div>
                                </td>
                                <td>
                                    <div>{{$item->content}}</div>
                                </td>
                                <td>
                                    <div>{{$item->user->name}}</div>
                                </td>
                                <td>
                                    <div>{{$item->state_str}}</div>
                                </td>
                                <td>
                                    <div>{{$item->created_at}}</div>
                                </td>
                                <td>
                                    <div>{{$item->receive_at}}</div>
                                </td>

                                <td width="180">
                                    <div class="  action-buttons">
                                        <a class="blue showBtn" href="/backstage/bill/{{$item->id}}"><i
                                                    class="icon-zoom-in bigger-130"></i></a>
                                        @if($item->can_delete)
                                        <a class="red delBtn" href="javascript:void(0)"><i
                                                    class="icon-trash bigger-130"></i></a>
                                        @endif

                                        @if($item->can_edit)
                                            <a class="green editBtn" href="/backstage/bill/{{$item->id}}/edit"><i
                                                        class="icon-pencil bigger-130"></i></a>
                                        @endif

                                        <a class="blue showBtn" href="/downloadQrcode?qrcode_url={!! $item->qrcode_url !!}" download="二维码{{$item->id}}.png">下载二维码</a>

                                        {{--@if($item->state==1)--}}
                                            {{--<a class="green checkBtn" _state="1" href="javascript:void(0)"/>确认</a>--}}
                                        {{--@endif--}}


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
        var url = '/backstage/bill?type=1';
                @else
        var url = '/backstage/bill';

        @endif

        $(function () {
            $(".delBtn").click(function () {
                var id = $(this).closest("tr").data("item-id");
                ajaxConfirm("{{url('/backstage/bill')}}/" + id, {}, "DELETE", function (data) {
                    location.reload();
                }, "确认删除");
            });

            $(".checkBtn").click(function () {
                var id = $(this).closest("tr").data("item-id");
                var state = $(this).attr('_state');
                ajaxConfirm("{{url('/backstage/bill/check')}}/" + id+"/"+state, {}, "GET", function (data) {

                    location.reload();
                }, "确认审核");
            });


        })


    </script>
@stop