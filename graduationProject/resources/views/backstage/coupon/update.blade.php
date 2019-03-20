@extends('backstage.layouts.body')
@section('title', '')
@section('style')

@endsection
@section('content')
    <div class="page-content">
        <div class="page-header">
            <h1>
                {{$mode=='create'?'创建':''}}优惠券{{$mode=='edit'?'编辑':''}}{{$mode=='show'?'详情':''}}
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
                    @if(!request('redpacket_id')&&!$item->redpacket_config_id)
                    创建门店首页显示的优惠券,活动优惠券请在红包列表配置！
                    @else
                        创建红包优惠券，优惠券随机跟随红包，最多只能创建5种。
                        @endif
                    <br>
                </div>
            </div>
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
                <form class="form-horizontal" id="" action="/backstage/coupon{{$mode=='edit'?'/'.$item->id:''}}"
                      method="post">
                    {{csrf_field()}}
                    @if($mode=='edit')
                        {{method_field('PUT')}}
                        <input type="hidden" name="id" value="{{$item->id}}">
                    @elseif($mode=='create')
                        {{method_field('POST')}}
                    @endif
                    <input type="hidden" name="redpacket_id" value="{{request('redpacket_id',0)}}">
                    <div>

                        <div class="space-2 hide"></div>
                        <div class="form-group hide">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="name">文字颜色</label>
                            <div class="col-xs-12 col-sm-11">
                                <select name="color" class="col-xs-12 col-sm-6">
                                    <option value="#ffffff" {!! $item->color=='#ffffff'?'selected="selected"':'' !!}>
                                        白色
                                    </option>
                                    <option value="#000000" {!! $item->color=='#000000'?'selected="selected"':'' !!}>
                                        黑色
                                    </option>
                                </select>
                            </div>
                        </div>
                        <div class="space-2"></div>
                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="name">
                                面值(元)
                            </label>
                            <div class="col-xs-12 col-sm-5">
                                <input type="text" name="money" value="{{$item->money_str}}" class="col-xs-12 col-sm-12">
                            </div>
                        </div>
                        <div class="space-2" style="display: none;"></div>
                        {!! \App\Tools\Html\Control::DateLong('expire','有效期',$item->expire) !!}

                        <div class="space-2"></div>
                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="name">数量</label>
                            <div class="col-xs-12 col-sm-4">
                                <input type="text" name="total" value="{{$item->total}}"
                                       {!! $mode=='edit'?' readonly="readonly"':'' !!}
                                       class="col-xs-12 col-sm-6">
                            </div>
                        </div>
                        <div class="space-2"></div>
                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="name">使用说明</label>
                            <div class="col-xs-12 col-sm-11">
                                <textarea rows="8" name="detail" class="col-xs-12 col-sm-6">{{$item->detail}}</textarea>
                            </div>
                        </div>

                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-1 col-xs-12 col-sm-11">
                            <div class="btn btn-prev event-back">
                                <i class="icon-arrow-left"></i>
                                返回
                            </div>
                            @if($mode=='edit')
                                <div class="btn btn-prev" id="submitForm">保存</div>
                            @elseif($mode=='create')
                                <div class="btn btn-prev" id="submitForm">创建</div>
                            @endif
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@stop
@section('script')
    <script type="text/javascript" src="/box/plug-in/upload/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/box/plug-in/upload/jquery.fileupload.js"></script>
    <script>
                @if(!request('redpacket_id')&&!$item->redpacket_config_id)
        var url = '/backstage/coupon';
        @else
                var url = '/backstage/redpacket';
               @endif
        $(function () {
            //初始化配置...
            uploadImageBox($('#image'), '/upload?category=coupon', '{{$item->image}}', 120);

        })
    </script>
@stop