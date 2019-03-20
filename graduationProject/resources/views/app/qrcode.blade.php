<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Hello MUI</title>
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="stylesheet" href="/app/css/common.css">
    <link rel="stylesheet" href="/app/css/minirefresh.css">
    <link rel="stylesheet" href="/app/css/register.css">
    <link rel="stylesheet" href="/app/css/qr-code.css">
    <style>

    </style>
</head>
<body>

<div class="head headno_bg">
    <div class="ion">
        <img class="login_ion" src="/app/images/ioc.png" alt="">
    </div>
    <div class="details">验证手机号</div>
</div>

<div class="login_logo">
    <img src="/app/images/login_logo.png" alt="">
</div>

<form action="">
    <div class="login_phone">
        <input class="phone_number login_number" type="number" placeholder="请输入手机号"
               oninput="if(value.length>11)value=value.slice(0,11)">
        <img src="/app/images/login_user.png" alt="">
    </div>
    <div class="login_phone">
        <input class="phone_code login_code" type="number" placeholder="请输入验证码"
               oninput="if(value.length>6)value=value.slice(0,6)">
        <img src="/app/images/login_qrcode.png" alt="">
        <div class="login_get"><span class="login_text">获取验证码</span><span style="display:none"
                                                                          class="login_time">60s</span></div>
        <div class="z_index" style="display:none"></div>
    </div>
    <div class="login_footer">
        <button class="login_btn">确 认</button>
    </div>
</form>

<div class="footer_bg" style="">
    <img src="/app/images/login_footer.png" alt="">
</div>



<script src="/app/js/jquery-2.0.3.min.js"></script>
<script src="/app/js/minirefresh.js"></script>
<script src="/app/js/template7.js"></script>
<script src="/app/js/base.js"></script>
<script>
    var app = new App(function () {

    })
</script>
</body>
</html>