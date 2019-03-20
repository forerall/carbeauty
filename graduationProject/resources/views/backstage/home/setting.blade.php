@extends('backstage.layouts.body')
@section('title', '列表')
@section('content')
    <style>
        .tab-top {
            position: relative;
            padding: 0 28px;
        }

        .tab-top:after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            border-bottom: 1px solid rgb(199, 218, 235);
            z-index: 1;
        }

        .tab-top > div {
            display: inline-block;
            padding: 8px 15px;
            cursor: pointer;
            position: relative;
            z-index: 2;
        }

        .tab-top > div.active {
            border: 1px solid rgb(199, 218, 235);
            border-bottom: 1px solid #fff;
        }

        .tab-body {
            padding-top: 30px;
        }

        .tab-body .tab-item {
            display: none;
        }
    </style>
    <div class="nav-search" id="nav-search">
        <form id="search_form" action="" method="get" enctype="multipart/form-data" class="form-search">
            <input type="hidden" name="state" value="{{request('state')}}">
            <span class="input-icon">
                <input type="text" placeholder="搜索..." value="{{Request::get('keyword','')}}" class="nav-search-input"
                       id="" autocomplete="off" name="keyword"/>
                <i class="icon-search nav-search-icon"></i>
                </span>
        </form>
    </div>
    <div class="page-content">
        <div class="page-header">
            <h1>订单列表
                <small>
                    <i class="icon-double-angle-right"></i>
                </small>
            </h1>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="tab-top">
                    @foreach($settingGroups as $group)
                        <div class="tab-top-item"
                             key="{{$group['group_key']}}">{{$group['group_name']}}</div>
                    @endforeach
                </div>
            </div>
            <div class="col-xs-12">
                <div class="tab-body">
                    @foreach($settingGroups as $group)
                        <div class="tab-item" key="{{$group['group_key']}}">
                            <form class="form-horizontal" method="post">
                                <input type="hidden" name="group_key" value="{{$group['group_key']}}">
                                @foreach($group['items'] as $items)
                                    {!! \App\Tools\Html\Control::Input($group['group_key'].'-'.$items['key'],$items['name'],$items['value']) !!}
                                @endforeach
                                <div class="form-group submit-group">
                                    <div class="col-sm-offset-1 col-xs-12 col-sm-11">
                                        <div class="btn btn-prev event-back">
                                            <i class="icon-arrow-left"></i>
                                            返回
                                        </div>
                                        <div class="btn btn-prev submitSetting">保存</div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    @endforeach

                </div>
            </div>
        </div>

    </div>
@stop
@section('script')
    <script>
        var url = '/backstage/setting';
        function initTab(activeKey) {
            $('.tab-top').on('click', '.tab-top-item', function () {
                var key = $(this).attr('key')
                $(this).addClass('active').siblings().removeClass('active')
                $('.tab-body').find('[key="' + key + '"]').show().siblings().hide()
                history.replaceState(null, '', '#' + key);
            })
            if (activeKey) {
                var item = $('.tab-top').find('[key="' + activeKey + '"]')
                if (item.length == 1) {
                    item.click();
                    return;
                }
            }
            $('.tab-top').find('.tab-top-item:first-child').click();
        }
        $(function () {
            initTab(location.hash.substr(1))
            $('.submitSetting').click(function () {
                $(this).closest('form').ajaxSubmit(function (data) {
                    ajaxProcess(data, function (result) {
                        history.replaceState(null, '', '#' + result.data.group_key);
                        location.reload();
                    });
                });
            })
        })
    </script>
@stop