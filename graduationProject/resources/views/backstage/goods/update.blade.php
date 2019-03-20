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
                <form class="form-horizontal" id="" action="/backstage/goods{{$mode=='edit'?'/'.$item->id:''}}"
                      method="post">
                    {{csrf_field()}}
                    @if($mode=='edit')
                        {{method_field('PUT')}}
                        <input type="hidden" name="id" value="{{$item->id}}">
                    @elseif($mode=='create')
                        {{method_field('POST')}}
                    @endif

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
                            <select id="" name="category_id2" class="col-xs-6 col-sm-2" _val="{{$item->category_id2}}">
                                @foreach(\App\Http\Controllers\Store\Models\Category::where('level',2)->get() as $k=>$v)
                                    @if($v->top_id==$item->category_id)
                                        <option value="{{$v->id}}"
                                                top_id="{{$v->top_id}}" {!! $item->category_id2==$v->id?' selected="selected"':'' !!}>{{$v->name}}</option>
                                    @endif
                                @endforeach
                            </select>
                            <select id="category_id2" style="display: none">
                                @foreach(\App\Http\Controllers\Store\Models\Category::where('level',2)->get() as $k=>$v)
                                    <option value="{{$v->id}}" top_id="{{$v->top_id}}">{{$v->name}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="space-2"></div>
                    <div class="form-group">
                        <label class="control-label col-xs-12 col-sm-1 no-padding-right" for="email">品牌</label>
                        <div class="col-xs-12 col-sm-11">
                            <select name="brand_id" class="col-xs-6 col-sm-2" _val="{{$item->brand_id}}">

                            </select>
                        </div>
                    </div>


                    {!! \App\Tools\Html\Control::Input('name','名称',$item->name) !!}
                    {!! \App\Tools\Html\Control::Input('price','价格',$item->price_str) !!}
                    {!! \App\Tools\Html\Control::Input('uint','单位',$item->uint) !!}
                    {!! \App\Tools\Html\Control::Input('stock','库存',$item->stock) !!}
                    {!! \App\Tools\Html\Control::Input('limit_num','限购',$item->limit_num) !!}
                    {!! \App\Tools\Html\Control::Input('limit_amout','满购(元)',$item->limit_amout) !!}
                    {!! \App\Tools\Html\Control::Input('qiding','起订数量',$item->qiding) !!}

                    {!! \App\Tools\Html\Control::Select('state','状态',$item->state,['data'=>[1=>'上架',2=>'下架']]) !!}
                    {!! \App\Tools\Html\Control::Input('sale_time','起订时间',$item->sale_time) !!}
                    {!! \App\Tools\Html\Control::Input('product_txt','列表规格',$item->product_txt) !!}
                    {!! \App\Tools\Html\Control::Input('guige_txt','规格',$item->guige_txt) !!}
                    {!! \App\Tools\Html\Control::TextArea('text','商品描述',$item->text) !!}

                    {!! \App\Tools\Html\Control::Input('baozhiqi','保质期',$item->baozhiqi) !!}
                    {!! \App\Tools\Html\Control::Input('tiaoxingma','条形码',$item->tiaoxingma) !!}
                    {!! \App\Tools\Html\Control::Input('lingshou','建议零售价',$item->lingshou) !!}
                    {!! \App\Tools\Html\Control::Input('guige_txt2','规格2',$item->guige_txt2) !!}



                    {!! \App\Tools\Html\Control::UploadImage('image','商品主图',$item->image,['category'=>'goods']) !!}
                    {{--{!! \App\Tools\Html\Control::MultiUploadImage('images','商品图',$item->images,['category'=>'goods']) !!}--}}
                    {!! \App\Tools\Html\Control::MultiUploadImage('detail','详情图',$item->detail,['category'=>'goods']) !!}


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

    <script>
        function change3() {
            var top_id = $('select[name="category_id"]').val();
            var id2 = $('select[name="category_id2"]').val();
            var _val = $('select[name="brand_id"]').attr('_val');
            $('select[name="brand_id"]').empty();
            if (id2 > 0) {
                ajax('/backstage/ajaxBrands', {category_id: top_id, category_id2: id2}, 'GET', function (result) {
                    if (result.errCode == 0) {
                        var html = '';
                        for (var i in result.data.brands) {
                            var b = result.data.brands[i];
                            if (b.id == _val) {
                                html += '<option selected="selected" value="' + b.id + '">' + b.name + '</option>';
                            } else {
                                html += '<option value="' + b.id + '">' + b.name + '</option>';
                            }
                        }
                        $('select[name="brand_id"]').html(html);
                    }
                }, true)
            }
        }
        function change2() {
            var top_id = $('select[name="category_id"]').val();
            var _val = $('select[name="category_id2"]').attr('_val');
            $('select[name="category_id2"]').empty();
            $('#category_id2').find('option').each(function () {
                if ($(this).attr('top_id') == top_id) {
                    $('select[name="category_id2"]').append($(this).clone());
                }
            });
            $('select[name="category_id2"]').val(_val)
            change3();

        }

        var url = '/backstage/goods';
        var gg_count = {{is_array($item->attribute)?count($item->attribute):0}};
        function initGG() {
            $('.gg-container .add-gg').click(function () {
                $('<div class="gg-item">' +
                        '<input type="text" name="attribute[' + gg_count + '][name]" value="" placeholder="规格名">' +
                        '<input type="text" name="attribute[' + gg_count + '][price]" value="" placeholder="价格">' +
                        '<div class="close">x</div></div>').insertBefore($(this))
                gg_count++;
            })
            $('.gg-container').on('click', '.close', function () {
                $(this).closest('.gg-item').remove();
            })
        }
        $(function () {
            $('select[name="category_id"]').change(function () {
                change2()
            }).change();
            $('select[name="category_id2"]').change(function () {
                change3()
            });

            initGG();
            $('select[name="type"]').change(function () {
                if ($(this).val() == 2) {
                    $('.jf').show();
                    $('.jf2').hide();
                } else {
                    $('.jf').hide();
                    $('.jf2').show();
                }
            }).change();

        })
    </script>
@stop