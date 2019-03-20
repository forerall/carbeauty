@extends('backstage.layouts.body')
@section('title', '')
@section('style')
    
@endsection
@section('content')
    <div class="page-content">
        <div class="page-header">
            <h1>
                {{$mode=='create'?'添加':''}}公告{{$mode=='edit'?'编辑':''}}{{$mode=='show'?'详情':''}}
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
                <form class="form-horizontal" id="" action="/backstage/notice{{$mode=='edit'?'/'.$item->id:''}}" method="post">
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
    <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="content">内容</label>
    <div class="col-xs-12 col-sm-11">
        <input type="text" name="content" value="{{$item->content}}" class="col-xs-12 col-sm-6">
    </div>
</div>
<div class="space-2"></div>
<div class="form-group">
    <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="begin">开始时间</label>
    <div class="col-xs-12 col-sm-11">
        <div class="input-group">
            <input class="" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" type="text" name="begin" value="{{$item->begin}}">
        </div>
    </div>
</div>

<div class="space-2"></div>
<div class="form-group">
    <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="end">结束时间</label>
    <div class="col-xs-12 col-sm-11">
        <div class="input-group">
            <input class="" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" type="text" name="end" value="{{$item->end}}">
        </div>
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
     <script type="text/javascript" src="/box/plug-in/My97Date/WdatePicker.js"></script>

    <script>
    var url = '/backstage/notice';
    $(function(){
            //初始化配置...
            

            //提交表单...
            $('#submitForm').click(function(){
                $(this).closest('form').ajaxSubmit(function(data){
                    ajaxProcess(data,function(){
                        location.reload();
                    });
                });
            })
        })
    </script>
@stop