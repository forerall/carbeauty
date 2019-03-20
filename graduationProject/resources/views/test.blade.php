<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <!-- 以下meta只有添加到桌面才有效-->
    <!-- 允许全屏模式浏览 -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <!-- 定义safari顶端状态条的样式 -->
    <meta name="apple-mobile-web-app-status-bar-style" content="default"/><!-- 可选default、black、black-translucent -->
    <!-- WEB APP名称 -->
    <meta name="apple-mobile-web-app-title" content="APP名">
    <title>Laravel</title>
    <style>
        html, body {
            background-color: #fff;
            color: #636b6f;
            font-family: 'Raleway', sans-serif;
            font-weight: 100;
            height: 100vh;
            margin: 0;
        }

        @media screen and (orientation: portrait) {
            html {
                width: 100%;
                height: 100%;
                background-color: white;
                overflow: hidden;
            }

            body {
                width: 100%;
                height: 100%;
                background-color: red;
                overflow: hidden;
            }

            #print {
                position: absolute;
                background-color: yellow;
            }
        }

        @media screen and (orientation: landscape) {
            html {
                width: 100%;
                height: 100%;
                background-color: white;
            }

            body {
                width: 100%;
                height: 100%;
                background-color: white;
            }

            #print {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: yellow;
            }
        }

        #print p {
            margin: auto;
            margin-top: 20px;
            text-align: center;
        }

    </style>
</head>
<body class="webpBack">
<div id="print" style="overflow: scroll">
    <p>lol</p>
    <p>lol</p>
    <p>lol</p>

</div>
<script src="{{ asset('js/jquery-2.0.3.min.js') }}"></script>
<script>
    var evt = "onorientationchange" in window ? "orientationchange" : "resize";
    function screen(){
        var width = document.documentElement.clientWidth;
        var height = document.documentElement.clientHeight;
        $print = $('#print');
        if (width > height) {
            $print.width(width);
            $print.height(height);
            $print.css('top', 0);
            $print.css('left', 0);
            $print.css('transform', 'none');
            $print.css('transform-origin', '50% 50%');
        }
        else {
            $print.width(height);
            $print.height(width);
            $print.css('top', (height - width) / 2);
            $print.css('left', 0 - (height - width) / 2);
            $print.css('transform', 'rotate(90deg)');
            $print.css('transform-origin', '50% 50%');
        }

    }
    window.addEventListener(evt, function () {
        screen()
    }, false);
    screen();
    function full() {
        var e = document.documentElement;
        if (e.requestFullscreen)
            e.requestFullscreen();
        else if (e.mozRequestFullScreen)
            e.mozRequestFullScreen();
        else if (e.webkitRequestFullScreen)
            e.webkitRequestFullScreen();
        else if ("undefined" != typeof window.ActiveXObject) {
            var t = new ActiveXObject("WScript.Shell");
            t && t.SendKeys("{F11}")
        }
    }
</script>
</body>
</html>
