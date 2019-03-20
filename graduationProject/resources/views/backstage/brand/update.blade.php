@extends('backstage.layouts.body')
@section('title', '')
@section('style')

@endsection
@section('content')
    <div class="page-content">
        <div class="page-header">
            <h1>
                {{$mode=='create'?'添加':''}}品牌{{$mode=='edit'?'编辑':''}}{{$mode=='show'?'详情':''}}
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
                <form class="form-horizontal" id="" action="/backstage/brand{{$mode=='edit'?'/'.$item->id:''}}"
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
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="email">一级分类</label>
                            <div class="col-xs-12 col-sm-11">
                                <select name="category_id" class="col-xs-6 col-sm-2">
                                    @foreach(\App\Http\Controllers\Store\Models\Category::topCategory([],false)->pluck('name','id') as $k=>$v)
                                        <option value="{{$k}}" {!! $item->category_id==$k?' selected="selected"':'' !!}>{{$v}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="space-2"></div>
                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="email">二级分类</label>
                            <div class="col-xs-12 col-sm-11">
                                <select id="" name="category_id2" class="col-xs-6 col-sm-2">
                                    @foreach(\App\Http\Controllers\Store\Models\Category::where('level',2)->get() as $k=>$v)
                                        @if($v->top_id==$item->category_id)
                                            <option value="{{$v->id}}"
                                                    top_id="{{$v->top_id}}" {!! $item->category_id2==$v->id?' selected="selected"':'' !!}>{{$v->name}}</option>
                                        @endif
                                    @endforeach
                                </select>
                                <select id="category_id2" style="display: none">
                                    @foreach(\App\Http\Controllers\Store\Models\Category::where('level',2)->get() as $k=>$v)
                                        <option value="{{$v->id}}"
                                                top_id="{{$v->top_id}}" {!! $item->category_id2==$v->id?' selected="selected"':'' !!}>{{$v->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="space-2"></div>
                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="email">品牌</label>
                            <div class="col-xs-12 col-sm-11">
                                <input type="text" name="name" value="{{$item->name}}" class="col-xs-12 col-sm-6">
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
        function change(select, init) {
            var top_id = select.val();
            $('select[name="category_id2"]').empty();
            $('#category_id2').find('option').each(function () {
                if ($(this).attr('top_id') == top_id) {
                    $('select[name="category_id2"]').append($(this).clone());
                }
            });

        }
        var url = '/backstage/brand';
        $(function () {
            $('select[name="category_id"]').change(function () {
                change($(this))
            }).change();

        })
    </script>
@stop