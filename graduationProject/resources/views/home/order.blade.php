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
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="/CarBeauty/Public/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="/CarBeauty/Public/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <script src="/CarBeauty/Public/assets/js/echarts.min.js"></script>
    <link rel="stylesheet" href="/CarBeauty/Public/assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="/CarBeauty/Public/assets/css/amazeui.datatables.min.css"/>
    <link rel="stylesheet" href="/CarBeauty/Public/assets/css/app.css">
    <script src="/CarBeauty/Public/assets/js/jquery.min.js"></script>
    <script type="text/javascript">
        function validate() {
            if (confirm("确认订购该服务?")) {
                return true;
            } else {
                return false;
            }
        }
    </script>

</head>

<body data-type="widgets" style="background: white">
<script src="/CarBeauty/Public/assets/js/theme.js"></script>

<form class="am-form tpl-form-line-form" action="" method="post">
    <input type="hidden" name="id" value="<?php echo $project['id']; ?>">
    <div class="am-form-group">
        <label for="user-name" class="am-u-sm-3 am-form-label" style="color: black">项目名称 <span class="tpl-form-line-small-title">Name</span></label>
        <div class="am-u-sm-9">
            <input type="text" class="tpl-form-input" readonly="readonly" style="color: black" name="name" placeholder="请填写项目名称" value="<?php echo $project['name']; ?>">
        </div>
    </div>


    <div class="am-form-group">
        <label for="user-name" class="am-u-sm-3 am-form-label"  style="color: black">项目单价 <span class="tpl-form-line-small-title">Price</span></label>
        <div class="am-u-sm-9">
            <input type="text" class="tpl-form-input"  readonly="readonly" style="color: black" name="price" placeholder="请填写项目单价" value="<?php echo $project['price']; ?>">
        </div>
    </div>


    <div class="am-form-group">
        <label for="user-weibo" class="am-u-sm-3 am-form-label"  style="color: black">封面图 <span
                    class="tpl-form-line-small-title" >Images</span></label>
        <div class="am-u-sm-9">
            <div class="am-form-group am-form-file">
                <div class="tpl-form-file-img">
                    <img src="<?php echo $project['picture']; ?>" alt="" width="600px;" height="400px;">
                </div>

            </div>

        </div>
    </div>

    <div class="am-form-group">
        <label for="user-intro" class="am-u-sm-3 am-form-label"  style="color: black" style="color: black">美容项目详细 <span
                    class="tpl-form-line-small-title">Inform</span></label>
        <div class="am-u-sm-9">
            <textarea class="" rows="10"  style="color: black" readonly="readonly" name="profile"><?php echo ltrim($project['profile']); ?></textarea>
        </div>
    </div>
    <div class="am-form-group" style="margin-left: 20%">
        <div class="am-u-sm-9 am-u-sm-push-3">
            <input type="submit" class="am-btn am-btn-primary tpl-btn-bg-color-success " value="订购"  onclick="return validate()"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="reset" class="am-btn am-btn-primary tpl-btn-bg-color-success " value="取消"  onclick="javascript:window.history.back(-1);"/>

        </div>
    </div>
</form>


</body>

</html>