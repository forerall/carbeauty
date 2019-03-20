@extends('backstage.layouts.body')
@section('title', '')
@section('style')
    
@endsection
@section('content')
    <div class="page-content">
        <div class="page-header">
            <h1>
                {{$mode=='create'?'添加':''}}轮播图{{$mode=='edit'?'编辑':''}}{{$mode=='show'?'详情':''}}
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
                <form class="form-horizontal" id="" action="/backstage/banner{{$mode=='edit'?'/'.$item->id:''}}" method="post">
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
    <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="name">名称</label>
    <div class="col-xs-12 col-sm-11">
        <input type="text" name="name" value="{{$item->name}}" class="col-xs-12 col-sm-6">
    </div>
</div>
<div class="space-2"></div>
<div class="form-group">
    <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="type">类型</label>
    <div class="col-xs-12 col-sm-11">
        <input type="text" name="type" value="{{$item->type}}" class="col-xs-12 col-sm-6">
    </div>
</div>
<div class="space-2"></div>
<div class="form-group">
    <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="state">状态</label>
    <div class="col-xs-12 col-sm-11">
        <select name="state" class="col-xs-6 col-sm-2">
            @forelse(App\Models\Banner::$stateArray as $k=>$v)
<option value="{{$k}}"{{$item->state==$k? ' selected="selected"':''}}>{{$v}}</option>
@empty
@endforelse
        </select>
    </div>
</div>
<div class="space-2"></div>
<div class="form-group">
    <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="images">轮播图</label>
    <div class="col-xs-12 col-sm-11">
        <div class="input-group">
            <div id="images" upload-name="images" class="banner-container"></div>
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
     <script type="text/javascript" src="/box/plug-in/upload/jquery-ui.min.js"></script>
 <script type="text/javascript" src="/box/plug-in/upload/jquery.fileupload.js"></script>

    <script>
    var url = '/backstage/banner';
    $(function(){
            //初始化配置...
            var jump_types = {
            0:'不跳转',
            1:'url',
            2:'图片',
            3:'视频',
            4:'赛程',
        }
multiUploadBannerBox($('#images'),'/upload?category=banner',{!! json_encode($item->images) !!},80,jump_types);


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