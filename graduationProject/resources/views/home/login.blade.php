<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin index Examples</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="/CarBeauty/Public/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="/CarBeauty/Public/assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="/CarBeauty/Public/assets/css/app.css">
    <script src="/CarBeauty/Public/assets/js/jquery.min.js"></script>

</head>

<body data-type="login">
<script src="assets/js/theme.js"></script>
<div class="am-g tpl-g">
    <div class="tpl-login">
        <div class="tpl-login-content">
            <h2 style="text-align: center">用户登录</h2>
            <form class="am-form tpl-form-line-form" action="" method="post">
                <div class="am-form-group">
                    <input type="text" class="tpl-form-input" name="name" placeholder="请输入账号">
                </div>
                <div class="am-form-group">
                    <input type="password" class="tpl-form-input" name="password" placeholder="请输入密码">
                </div>
                <div class="am-form-group tpl-login-remember-me">
                </div>

                <?php if(!isset($error)){
                    echo "<br>";}
                else{
                    echo "<p style='color: red;text-align: center;margin: auto'>".$error."</p>";
                }
                ?>

                <div class="am-form-group">
                    <input type="submit" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn" value="登录" />
                </div>
            </form>
        </div>
    </div>
</div>
<script src="assets/js/amazeui.min.js"></script>
<script src="assets/js/app.js"></script>

</body>

</html>