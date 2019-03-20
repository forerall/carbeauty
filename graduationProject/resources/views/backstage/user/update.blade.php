@extends('backstage.layouts.body')
@section('title', '')
@section('style')

@endsection
@section('content')
    <div class="page-content">
        <div class="page-header">
            <h1>
                {{$mode=='create'?'添加':''}}用户{{$mode=='edit'?'编辑':''}}{{$mode=='show'?'详情':''}}
                <small>
                    <i class="icon-double-angle-right"></i>
                </small>
            </h1>
        </div>
        <div class="row">
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
                <form class="form-horizontal" id="" action="/backstage/user{{$mode=='edit'?'/'.$item->id:''}}"
                      method="post">
                    {{csrf_field()}}
                    @if($mode=='edit')
                        {{method_field('PUT')}}
                        <input type="hidden" name="id" value="{{$item->id}}">
                    @elseif($mode=='create')
                        {{method_field('POST')}}
                    @endif
                    <div>

                        <div class="space-2"></div>
                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="name">姓名</label>
                            <div class="col-xs-12 col-sm-11">
                                <input type="text" name="name" value="{{$item->name}}" class="col-xs-12 col-sm-6">
                            </div>
                        </div>

                        <div class="space-2"></div>
                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="sex">性别</label>
                            <div class="col-xs-12 col-sm-11">
                                <label class="control-label col-xs-12 col-sm-1 no-padding-right">
                                    <input name="sex" type="radio" value="0" @if($item->sex==0)checked @endif />保密
                                </label>
                                <label class="control-label col-xs-12 col-sm-1 no-padding-right">
                                    <input name="sex" type="radio" value="1" @if($item->sex==1)checked @endif />男
                                </label>
                                <label class="control-label col-xs-12 col-sm-1 no-padding-right">
                                    <input name="sex" type="radio" value="2" @if($item->sex==2)checked @endif />女
                                </label>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right"
                                   for="idNumber">身份证号码</label>
                            <div class="col-xs-12 col-sm-11">
                                <input type="text" name="idNumber" value="{{$item->idNumber}}"
                                       class="col-xs-12 col-sm-6">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right"
                                   for="idNumber">车牌号码</label>
                            <div class="col-xs-12 col-sm-11">
                                <input type="text" name="idNumber" value="{{$item->plate_number}}"
                                       class="col-xs-12 col-sm-6">
                            </div>
                        </div>


                        <div class="space-2"></div>
                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="phone">手机号</label>
                            <div class="col-xs-12 col-sm-11">
                                <input type="text" name="phone" value="{{$item->phone}}" class="col-xs-12 col-sm-6">
                            </div>
                        </div>

                        <div class="space-2"></div>
                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="address">地址</label>
                            <div class="col-xs-12 col-sm-11">
                                <input type="text" name="address" value="{{$item->address}}" class="col-xs-12 col-sm-6">
                            </div>
                        </div>

                        <div class="space-2"></div>
                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="address">余额</label>
                            <div class="col-xs-12 col-sm-11">
                                <input type="text" name="address" value="{{$item->balance}}" class="col-xs-12 col-sm-6" readonly="readonly">
                            </div>
                        </div>


                        <div class="space-2"></div>
                        @if($mode=='edit')
                            <div class="form-group">
                                <label class="control-label col-xs-12 col-sm-1 no-padding-right"
                                       for="created_at">注册时间</label>
                                <div class="col-xs-12 col-sm-11">
                                    <input type="text" name="created_at" value="{{$item->created_at}}"
                                           class="col-xs-12 col-sm-6"
                                           @if($mode=='edit')readonly="readonly"@endif >
                                </div>
                            </div>
                        @endif
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
                                <div class="btn btn-prev" id="submitForm">添加</div>
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
        var url = '/backstage/user';
        $(function () {
            //初始化配置...


        })
    </script>
@stop