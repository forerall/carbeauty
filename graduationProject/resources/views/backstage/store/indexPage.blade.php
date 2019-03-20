@extends('backstage.layouts.body')
@section('title', '后台管理')
@section('content')
    <div class="page-content">
        <style>
            .banner-container .img-item-container .options {
                display: none;
            }
        </style>
        <div class="row">
            <div class="col-xs-12">
                <form class="form-horizontal" id="" action="" method="post">
                    {{csrf_field()}}
                    {!! \App\Tools\Html\Control::UploadBannerImage('banner','轮播图',$banners,['category'=>'banner','jump_types'=>['不跳转','跳转']]) !!}
                    {!! \App\Tools\Html\Control::TextArea('gonggao','公告',$gonggao) !!}
                    <div class="form-group">
                        <div class="col-sm-offset-1 col-xs-12 col-sm-11">
                            <div class="btn btn-prev event-back">
                                <i class="icon-arrow-left"></i>
                                返回
                            </div>
                            <div class="btn btn-prev" id="submitForm" no-back-reload="1">保存</div>
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
    <script type="text/javascript">
        var url = '/backstage/indexPageSetting'
        $(function () {

        })
    </script>
@stop