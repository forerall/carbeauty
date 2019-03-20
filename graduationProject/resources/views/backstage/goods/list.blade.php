@extends('backstage.layouts.body')
@section('title', '列表')
@section('content')
    <div class="nav-search" id="nav-search">

    </div>
    <div class="page-content">
        <div class="page-header">
            <h1>商品列表
                <small>
                    <i class="icon-double-angle-right"></i>
                </small>
            </h1>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="order-nav">
                    <div{!! request('state')===null?' class="current"':'' !!}><a href="/backstage/goods">全部</a></div>
                    @foreach(\App\Http\Controllers\Store\Models\Goods::$stateArray as $key=>$type)
                        <div{!! request('state')===strval($key)?' class="current"':'' !!}>
                            <a href="?state={{$key}}">{{$type}}</a>
                        </div>
                    @endforeach
                </div>
            </div>
            <div class="col-xs-12">
                <form id="search_form" action="" method="get" enctype="multipart/form-data"
                      class="form-search search-container">
                    <label>名称:</label>
                    <input type="hidden" value="{{request('state')}}" name="state">
                    <input type="hidden" value="{{request('type')}}" name="type">
                    <input type="text" placeholder="" value="{{Request::get('keyword','')}}" class="nav-search-input"
                           id="" autocomplete="off" name="keyword"/>
                    <button class="btn btn-sm" type="submit">搜索</button>
                    <a class="btn btn-sm" href="/backstage/goods/create">新增</a>
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
                                <div>名称</div>
                            </th>
                            <th>
                                <div>分类</div>
                            </th>
                            <th>
                                <div>品牌</div>
                            </th>
                            <th>
                                <div>价格</div>
                            </th>
                            <th>
                                <div>状态</div>
                            </th>
                            <th>
                                <div>排序</div>
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
                                    <div>{{$item->category2?$item->category2->name:''}}</div>
                                </td>
                                <td>
                                    <div>{{$item->brand?$item->brand->name:''}}</div>
                                </td>
                                <td>
                                    <div>{{$item->price_str}}</div>
                                </td>
                                <td>
                                    <div>{{$item->state_str}}</div>
                                </td>
                                <td width="80">
                                    <div>
                                        <input type="tel" class="order-input" value="{{$item->order}}">
                                    </div>
                                </td>
                                <td>
                                    <div class="  action-buttons">
                                        <a class="blue showBtn" href="/backstage/goods/{{$item->id}}/edit"><i
                                                    class="icon-pencil bigger-130"></i></a>
                                        @if($item->state==2)
                                            <a class="red upBtn" href="javascript:void(0)">上架</a>
                                        @endif
                                        @if($item->state==1)
                                            <a class="red downBtn" href="javascript:void(0)">下架</a>
                                        @endif
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
        var url = '/backstage/goods';
        $(function () {
            $(".delBtn").click(function () {
                var id = $(this).closest("tr").data("item-id");
                ajaxConfirm("{{url('/backstage/goods')}}/" + id, {}, "DELETE", function (data) {
                    location.reload();
                }, "确认删除");
            });
            $(".upBtn").click(function () {
                var id = $(this).closest("tr").data("item-id");
                ajaxConfirm("{{url('/backstage/goodsState')}}?id=" + id + '&up=1', {}, "POST", function (data) {
                    location.reload();
                }, "确认上架");
            });
            $(".downBtn").click(function () {
                var id = $(this).closest("tr").data("item-id");
                ajaxConfirm("{{url('/backstage/goodsState')}}?id=" + id + '&up=2', {}, "POST", function (data) {
                    location.reload();
                }, "确认下架");
            });

            $('.order-input').change(function(){
                var id = $(this).closest("tr").data("item-id");
                ajaxConfirm("{{url('/backstage/goodsOrder')}}?id=" + id + '&order='+$(this).val(), {}, "POST", function (data) {
                    location.reload();
                }, "确认修改排序");
            })
        })
    </script>
@stop