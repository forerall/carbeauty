@extends('backstage.layouts.body')
@section('title', '后台管理')
@section('content')
    <div class="page-content">
        <div class="row">
            <div class="col-xs-12">
                <form class="form-horizontal">
                        {!! \App\Tools\Html\Control::UploadImage('up1','上传图片','',['category'=>'avatar']) !!}
                        {!! \App\Tools\Html\Control::MultiUploadImage('up2','上传多图片','',['category'=>'avatar']) !!}
                        {!! \App\Tools\Html\Control::UploadBannerImage('up3','轮播图','',['category'=>'avatar','jump_types'=>['不跳转','跳转']]) !!}
                        {!! \App\Tools\Html\Control::UploadImageWithCrop('up4','图片裁剪','',['category'=>'img','size'=>'']) !!}
                        {!! \App\Tools\Html\Control::UploadFile('up5','地址','',['category'=>'file']) !!}
                        {!! \App\Tools\Html\Control::Address('name','地址','350104') !!}


                        {!! \App\Tools\Html\Control::Input('name','文本框','44') !!}
                        {!! \App\Tools\Html\Control::Select('name','选择框','2',['data'=>[1=>'第一个',2=>'第二个']]) !!}
                        {!! \App\Tools\Html\Control::SelectSearch('name','选择框','2',['data'=>[1=>'第一个',2=>'第二个']]) !!}
                        {!! \App\Tools\Html\Control::MultiSelect('mulselect','多选框','2',['data'=>[1=>'第一个',2=>'第二个']]) !!}

                        {!! \App\Tools\Html\Control::Date('name','日期','') !!}
                        {!! \App\Tools\Html\Control::DateLong('name','时间','') !!}
                        {!! \App\Tools\Html\Control::TextArea('name','长文本','长文本长文本长文本') !!}
                        {!! \App\Tools\Html\Control::Editor('name','富文本','富文本富文本富文本富文本') !!}
                </form>
            </div>
        </div>
    </div>
@stop
@section('script')
    <script src="https://cdn.hcharts.cn/highcharts/highcharts.js"></script>
    <script type="text/javascript" src="/box/plug-in/upload/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/box/plug-in/upload/jquery.fileupload.js"></script>
    <script type="text/javascript">
        $(function () {

        })
    </script>
@stop