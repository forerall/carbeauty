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
    <link rel="icon" type="image/png" href="/CarBeauty/Public/css/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="/CarBeauty/Public/css/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="/CarBeauty/Public/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="/CarBeauty/Public/assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="/CarBeauty/Public/assets/css/app.css">
    <script src="/CarBeauty/Public/assets/js/jquery.min.js"></script>

</head>

<body data-type="login">
<script src="assets/js/theme.js"></script>
<div class="am-g tpl-g">
    <div class="tpl-login" style="margin-top: -100px;">
        <div class="tpl-login-content">
            <div class="tpl-login-title" style="">注册用户</div>
                <span class="tpl-login-content-info">
                  创建一个新的用户
              </span>
            <form class="am-form tpl-form-line-form" action="" method="post">
                <div class="am-form-group">
                    <input type="text" class="tpl-form-input" name="name" placeholder="请输入用户名">
                </div>

                <div class="am-form-group">
                    <input type="password" class="tpl-form-input" name="password" placeholder="请输入密码">
                </div>


                <div class="am-form-group">
                    <input type="radio" name="sex" value="男" checked />男
                    <input type="radio" name="sex" value="女"/>女
                </div>

                <div class="am-form-group">
                    <input type="text" class="tpl-form-input"  name="tel" placeholder="请输入电话号码">
                </div>

                <div class="am-form-group">
                    <input type="text" class="tpl-form-input" name="license"  placeholder="请输入车牌号码">
                </div>

                <div class="am-form-group tpl-login-remember-me">
                    <input id="remember-me" type="checkbox" checked="checked">
                    <label for="remember-me">我已阅读并同意 <a href="javascript:;">《用户注册协议》</a></label>
                </div>

                <?php if(!isset($error)){
                    echo "<br>";}
                else{
                    echo "<p style='color: red;text-align: center;margin: auto'>".$error."</p>";
                }
                ?>


                <div class="am-form-group">

                    <input type="submit" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn" value="注册"/>
                    <input type="button" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn" onclick="javascript:history.back(-1);" value="返回"/>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="/CarBeauty/Public/assets/js/amazeui.min.js"></script>
<script src="/CarBeauty/Public/assets/js/app.js"></script>

</body>

</html>