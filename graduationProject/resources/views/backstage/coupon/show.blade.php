@extends('backstage.layouts.body')
@section('title', '')
@section('content')
    <div class="page-content">
        <div class="page-header">
            <h1>
                优惠券详情
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
                            <div class="profile-info-name">总个数</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->total}}</span>
                            </div>
                        </div>
                    </div>
                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">已领取</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->got}}</span>
                            </div>
                        </div>
                    </div>
                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">已核销</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->used}}</span>
                            </div>
                        </div>
                    </div>
                    <div class="profile-user-info profile-user-info-striped">
                        <div class="profile-info-row">
                            <div class="profile-info-name">有效期</div>
                            <div class="profile-info-value">
                                <span class="">{{$item->expire}}</span>
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
                    @if($item->state != 1)
                        <div class="profile-user-info profile-user-info-striped">
                            <div class="profile-info-row">
                                <div class="profile-info-name">关闭时间</div>
                                <div class="profile-info-value">
                                    <span class="">{{$item->closed_at}}</span>
                                </div>
                            </div>
                        </div>
                    @endif
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
                            <div class="profile-info-name">详情</div>
                            <div class="profile-info-value">
                                <div class="text-view">{{$item->detail}}</div>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                @if($list)
                    <div class="col-xs-12">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered list">
                                        <thead>
                                        <tr>
                                            <th>
                                                <div>ID</div>
                                            </th>
                                            <th>
                                                <div>编号</div>
                                            </th>
                                            <th>
                                                <div>领取</div>
                                            </th>
                                            <th>
                                                <div>状态</div>
                                            </th>
                                            <th>
                                                <div>创建时间</div>
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @forelse($list as $item)
                                            <tr data-item-id="{{$item->id}}">
                                                <td>
                                                    <div>{{$item->id}}</div>
                                                </td>
                                                <td>
                                                    <div>{{$item->code}}</div>
                                                </td>
                                                <td>
                                                    <div>{{$item->user_id>0?'已领取':'未领取'}}</div>
                                                </td>
                                                <td>
                                                    <div>{{$item->state_str}}</div>
                                                </td>
                                                <td>
                                                    <div>{{$item->created_at}}</div>
                                                </td>
                                            </tr>
                                        @empty
                                            <tr>
                                                <td colspan="9" class="no-record">没有记录！</td>
                                            </tr>
                                        @endforelse
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                @endif
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
        var url = '/backstage/coupon';

        $(function () {

        })
    </script>
@stop