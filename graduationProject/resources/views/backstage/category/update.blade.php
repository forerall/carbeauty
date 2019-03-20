@extends('backstage.layouts.body')
@section('title', '')
@section('style')

@endsection
@section('content')
    <div class="page-content">
        <div class="page-header">
            <h1>
                {{$mode=='create'?'添加':''}}分类{{$mode=='edit'?'编辑':''}}{{$mode=='show'?'详情':''}}
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
                <form class="form-horizontal" id="" action="/backstage/category{{$mode=='edit'?'/'.$item->id:''}}"
                      method="post">
                    {{csrf_field()}}
                    @if($mode=='edit')
                        {{method_field('PUT')}}
                        <input type="hidden" name="id" value="{{$item->id}}">
                    @elseif($mode=='create')
                        {{method_field('POST')}}
                    @endif
                    @if($item->level == 1)
                        {!! \App\Tools\Html\Control::Select('top_id','上级分类',$item->top_id,['data'=>\App\Http\Controllers\Store\Models\Category::topCategory([$item->id])->pluck('name','id')->toArray()]) !!}
                    @else
                        {!! \App\Tools\Html\Control::Select('top_id','上级分类',$item->top_id,['data'=>\App\Http\Controllers\Store\Models\Category::topCategory()->pluck('name','id')->toArray()]) !!}
                    @endif

                    {!! \App\Tools\Html\Control::Input('name','分类名称',$item->name) !!}

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
    <script type="text/javascript" src="/box/plug-in/My97Date/WdatePicker.js"></script>

    <script>
        var url = '/backstage/category';
        $(function () {

        })
    </script>
@stop