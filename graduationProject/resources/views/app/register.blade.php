<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Hello MUI</title>
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="/app/css/common.css">
    <link rel="stylesheet" href="/app/css/minirefresh.css">
    <link rel="stylesheet" href="/app/css/register.css">
    <style>
        .upload-btn{
            background-size: cover;
            background-repeat: no-repeat;
            height: 5rem;
        }
    </style>
</head>
<body class="register_height">

<div class="head">
    <span class="head_lf"><a href="index.html">返回</a></span>

    用户注册

    <span class="head_rg"><a href="login.html">登录</a></span>
</div>

<form class="form-horizontal" id="form" action="" method="post">
    <div class="zhuce">
        <div class="avatar_div">
            <div class="avatar" id="avatar" upload-name="avatar">
            </div>
        </div>


        <div class="text">
            <div class="text">
                <span>店 名</span>
                <input type="text" name="store_name" placeholder="请输入店名" class="input">
            </div>

            <div class="text">
                <span>姓 名</span>
                <input type="text" name="name" placeholder="请输入姓名" class="input">

            </div>

            <div class="text">
                <span>性 别</span>
                <input name="sex" type="radio" value="0" checked/>保密
                <input name="sex" type="radio" value="1"/>男
                <input name="sex" type="radio" value="2"/>女
            </div>

            <div class="text">
                <span>手机号</span>
                <input type="text" name="phone" name="store_name" placeholder="请输入手机号" class="input">
            </div>
            <div class="text">
                <span>地 址</span>
                <input type="text" name="address" placeholder="请输入地址" class="input" style="width:55%">
            </div>

            <div class="text">
                <span>验证码</span>
                <input type="text" name="authcode" placeholder="请输入验证码" class="input" style="width:55%">
                <span class="yzm"><input type="button" value="获取验证码"></span>
            </div>


            <div class="btndl">
                <input type="button" value="注 册" class="btn btn-prev" id="submitForm">
            </div>
        </div>
    </div>
</form>

<script src="/app/js/jquery-2.0.3.min.js"></script>
<script src="/app/js/minirefresh.js"></script>
<script src="/app/js/template7.js"></script>
<script src="/app/js/base.js"></script>

<script type="text/javascript" src="/app/js/upload/jquery-ui.min.js"></script>
<script type="text/javascript" src="/app/js/upload/jquery.fileupload.js"></script>


<script>
    function uploadImageBox(dom, url, value, height) {
        var name = dom.attr('upload-name');
        if (typeof name == 'undefined') {
            console.log('upload upload-name is undefined!');
        }
        //文件上传input
        $('body').append('<input name="upload_obj_' + name + '" id="upload_obj_' + name + '" type="file" style="display: none">');
        //文件地址input，预览
        dom.append('<input type="hidden" name="' + name + '">');
        dom.append('<div class="upload-preview upload_preview_' + name + '"></div>');
        dom.append('<div class="upload-progress upload_progress_' + name + '"></div>');

        var upload_obj = $('#upload_obj_' + name);
        var input = dom.find('input[name="' + name + '"]');
        var upload_preview = dom.find('.upload_preview_' + name);
        var upload_progress = dom.find('.upload_progress_' + name);
        //
        //上传事件触发
        upload_preview.click(function () {
            //upload_obj.trigger('click');//这样只能上传一次
            //var a=document.createEvent("MouseEvents");//FF的处理
            //a.initEvent("click", true, true);
            //document.getElementById('upload_obj_'+name).dispatchEvent(a);
            $('#upload_obj_' + name).click();

        });

        //初始化显示
        if (value) {
            //upload_preview.append('<img style="width:100%;height: 100%" src="' + value + '">');
            upload_preview.html('<div class="upload-btn"></div>');
            upload_preview.find('.upload-btn').css('background-image','url('+value+')');
            input.val(value);
        } else {
            upload_preview.html('<div class="upload-btn">头像</div>');
        }

        upload_obj.fileupload({
            url: url,

        }).bind('fileuploadprogress', function (e, data) {
            var progress = parseInt(data.loaded / data.total * 100, 10);
            upload_progress.show().css('width', progress + '%');
            console.log(progress);
        }).bind('fileuploaddone', function (e, data) {
            var result = data.result;
            data = result.data;
            console.log(data);
            upload_preview.find('.upload-btn').html("");
            //data[0]是缩略图，data[1]大图
            if (upload_preview.find('img').length == 0) {
                //upload_preview.empty().append('<img>');
            }
            upload_preview.find('.upload-btn').css('background-image','url('+data.files[0].thumb[0].webPath+')');
            //upload_preview.find('img').attr('src', data.files[0].thumb[0].webPath).show(200);
            input.val(data.files[0].webPath);
            upload_progress.hide();

        });
    }

    var app = new App(function () {
        $('#submitForm').click(function () {
            app.submitForm($('#form'), function (result) {
                console.log(result);
                app.alert(result.errMsg);
            })
        })
        uploadImageBox($('#avatar'), '/upload?category=avatar', '', 80);




    })
</script>
</body>
</html>