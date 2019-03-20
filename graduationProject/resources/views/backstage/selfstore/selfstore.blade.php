@extends('backstage.layouts.body')
@section('title', '')
@section('style')

@endsection
@section('content')
    <div class="page-content">
        <div class="page-header">
            <h1>
                自营店铺
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
                <form class="form-horizontal" id="" action="/backstage/selfstore"
                      method="post">
                    {{csrf_field()}}
                    {{method_field('PUT')}}
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
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="name">店铺用户id</label>
                            <div class="col-xs-12 col-sm-11">
                                <input type="text" name="user_id" value="{{$item->user_id}}"
                                       class="col-xs-12 col-sm-6">
                            </div>
                        </div>
                        <div class="space-2"></div>
                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="name">满包邮</label>
                            <div class="col-xs-12 col-sm-11">
                                <input type="text" name="free_delivery" value="{{$item->free_delivery/100}}"
                                       class="col-xs-12 col-sm-6">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="name">邮费</label>
                            <div class="col-xs-12 col-sm-11">
                                <input type="text" name="delivery" value="{{$item->delivery/100}}"
                                       class="col-xs-12 col-sm-6">
                            </div>
                        </div>
                        <div class="space-2"></div>
                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="image">店铺图</label>
                            <div class="col-xs-12 col-sm-11">
                                <div class="input-group">
                                    <div id="image" upload-name="image" class="image-container"></div>
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
                            <div class="btn btn-prev" id="submitForm">保存</div>
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
    <script type="text/javascript" src="/box/plug-in/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" src="/box/plug-in/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" src="/box/plug-in/ueditor/lang/zh-cn/zh-cn.js"></script>

    <script>
        var url = '/backstage/selfstore';
        $(function () {
            //初始化配置...
            uploadImageBox($('#image'), '/upload?category=article', '{{$item->image}}', 80);

            //提交表单...
            $('#submitForm').click(function () {
                $(this).closest('form').ajaxSubmit(function (data) {
                    ajaxProcess(data, function () {
                        location.reload();
                    });
                });
            })
        })
    </script>
@stop