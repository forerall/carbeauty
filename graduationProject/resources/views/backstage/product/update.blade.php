@extends('backstage.layouts.body')
@section('title', '')
@section('style')

@endsection
@section('content')
    <div class="page-content">
        <div class="page-header">
            <h1>
                {{$mode=='create'?'添加':''}}商品{{$mode=='edit'?'编辑':''}}{{$mode=='show'?'详情':''}}
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
                <form class="form-horizontal" id="" action="/backstage/product{{$mode=='edit'?'/'.$item->id:''}}"
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
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="name">名称</label>
                            <div class="col-xs-12 col-sm-11">
                                <input type="text" name="name" value="{{$item->name}}" class="col-xs-12 col-sm-6">
                            </div>
                        </div>
                        <div class="space-2"></div>
                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="name">分类</label>
                            <div class="col-xs-12 col-sm-11">
                                <select name="category_id">
                                    @foreach(\App\Models\M\ProductCategory::selfCategory() as $category)
                                        <option{{$category->id==$item->category_id?' selected="selected"':''}}  value="{{$category->id}}">{{$category->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="space-2"></div>
                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="name">状态</label>
                            <div class="col-xs-12 col-sm-11">
                                <select name="state">
                                        <option {{1==$item->state?' selected="selected"':''}} value="1">上架</option>
                                        <option {{2==$item->state?' selected="selected"':''}} value="2">下架</option>
                                </select>
                            </div>
                        </div>
                        <div class="space-2"></div>
                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="">市场价</label>
                            <div class="col-xs-12 col-sm-11">
                                <input type="text" name="market_price" value="{{$item->market_price_str}}" class="col-xs-12 col-sm-6">
                            </div>
                        </div>
                        <div class="space-2"></div>
                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="name">实际售价</label>
                            <div class="col-xs-12 col-sm-11">
                                <input type="text" name="price" value="{{$item->price_str}}" class="col-xs-12 col-sm-6">
                            </div>
                        </div>
                        <div class="space-2"></div>
                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="name">尺寸型号</label>
                            <div class="col-xs-12 col-sm-11">
                                <input type="text" name="size" value="{{$item->size}}" class="col-xs-12 col-sm-6">
                            </div>
                        </div>
                        <div class="space-2"></div>
                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="email">商品描述</label>
                            <div class="col-xs-12 col-sm-11">
                                <textarea rows="5" name="detail" class="col-xs-6 col-sm-6">{{$item->detail}}</textarea>
                            </div>
                        </div>
                        <div class="space-2"></div>
                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="email">商品图</label>
                            <div class="col-xs-12 col-sm-11">
                                <div class="input-group">
                                    <div id="images" upload-name="images" class="image-container"></div>
                                </div>
                            </div>
                        </div>
                        <div class="space-2"></div>
                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="email">商品详情</label>
                            <div class="col-xs-12 col-sm-11">
                                <div class="input-group">
                                    <div id="image_detail" upload-name="image_detail" class="image-container"></div>
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
        var url = '/backstage/selfproduct';
        $(function () {
            //初始化配置...
            multiUploadImageBox($('#images'),'/upload?category=product',{!! json_encode($item->images) !!},80);
            multiUploadImageBox($('#image_detail'),'/upload?category=product',{!! json_encode($item->image_detail) !!},80);


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