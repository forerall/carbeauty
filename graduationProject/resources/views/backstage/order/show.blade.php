@extends('backstage.layouts.body')
@section('title', '')
@section('content')
    <div class="page-content">
        <div class="page-header">
            <h1>
                订单详情
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
                <div class="form-horizontal">
                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">ID</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->id}}</span>
                            </div>
                        </div>
                    </div>

                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">订单号</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->order_no}}</span>
                            </div>
                        </div>
                    </div>
                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">外部交易号</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->out_trade_no}}</span>
                            </div>
                        </div>
                    </div>
                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">状态</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->state_str}}</span>
                            </div>
                        </div>
                    </div>
                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">订单总额</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->order_amount_str}}</span>
                            </div>
                        </div>
                    </div>
                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">在线支付</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->pay_amount_str}}</span>
                            </div>
                        </div>
                    </div>

                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">创建时间</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->created_at}}</span>
                            </div>
                        </div>
                    </div>
                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">付款时间</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->pay_at}}</span>
                            </div>
                        </div>
                    </div>
                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">发货时间</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->send_at}}</span>
                            </div>
                        </div>
                    </div>
                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">收货时间</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->confirm_at}}</span>
                            </div>
                        </div>
                    </div>


                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">买家</div>
                            <div class="profile-info-value">
                                <p class="">昵称：{{$item->user?$item->user->nickname:''}}</p>
                                <p class="">手机：{{$item->user?$item->user->phone:''}}</p>
                            </div>
                        </div>
                    </div>

                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">收货信息</div>
                            <div class="profile-info-value">
                                <p class="">收货人：{{$item->common?$item->common->rec_name:''}}</p>
                                <p class="">手机：{{$item->common?$item->common->rec_phone:''}}</p>
                                <p class="">
                                    省市县：{{$item->common?($item->common->recArea?$item->common->recArea->full_name:''):''}}</p>
                                <p class="">地址：{{$item->common?$item->common->rec_address:''}}</p>
                            </div>
                        </div>
                    </div>

                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">订单商品</div>
                            <div class="profile-info-value">
                                <table style="width: 60%;">
                                    <tr>
                                        <th>图片</th>
                                        <th>名称</th>
                                        <th>价格</th>
                                        <th>数量</th>
                                    </tr>
                                    @foreach($item->product as $product)
                                        <tr>
                                            <td><img class="avatar-img" src="{{$product->image}}"></td>
                                            <td>{{$product->product_name}}</td>
                                            <td>{{$product->price_str}}</td>
                                            <td>{{$product->num}}</td>
                                        </tr>
                                    @endforeach
                                </table>
                            </div>
                        </div>
                    </div>


                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">发货</div>
                            <div class="profile-info-value">
                                @if($item->can_send)
                                <input type="text" name="delivery_company" placeholder="快递公司">
                                <input type="text" name="delivery_code" placeholder="快递单号">

                                <div class="btn send-btn">
                                    发货
                                </div>
                                    @else
                                    <p class="">快递公司：{{$item->delivery_company}}</p>
                                    <p class="">快递单号：{{$item->delivery_no}}</p>
                                    @endif
                            </div>
                        </div>
                    </div>

                </div>
                <br>
                <div class="form-group">
                    <div class="col-xs-12 col-sm-9">
                        <div class="btn btn-prev event-back">
                            <i class="icon-arrow-left"></i>
                            返回
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
@section('script')
    <script>
        var url = '/backstage/order';
        $(function () {
            $(".send-btn").click(function () {
                var id = {{$item->id}};
                var delivery_company =$('input[name="delivery_company"]').val()
                var delivery_code =$('input[name="delivery_code"]').val()
                ajaxConfirm("{{url('/backstage/order')}}/" + id, {delivery_company:delivery_company,delivery_code:delivery_code}, "PUT", function (data) {
                    location.reload();
                }, "确认发货");
            });
        })
    </script>
@stop