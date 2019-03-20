<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <link rel="stylesheet" href="/app/css/mui.min.css">
    <link rel="stylesheet" href="/app/css/sign.css">
    <style>
        html,body,#app{
            height: 100%;
        }
        .page{
            background-color: rgb(50,50,50);
            height: 100%;
        }
        .sign-title{
            position: relative;

        }
        .sign-title img{
            width: 100%;
            display: block;
        }
        .bar{
            font-size: 0;
            background-color: #ffffff;
            width: 90%;
            margin-left: 5%;
            border-radius: 0.4rem;
            margin-bottom: 0.7rem;
        }
        .bar > div{
            width: 33.33%;
            text-align: center;
            display: inline-block;
            vertical-align: top;
        }
        .bar > div > div:nth-child(1){
            font-size: 0.7rem;
            color: rgb(153,153,153);
            padding: 0.7rem 0 0.1rem;
            line-height: 1;
        }
        .bar > div > div:nth-child(2){
            font-size: 1.4rem;
            color: rgb(219,99,57);
            padding: 0.5rem 0;
        }
        .sign-btn{
            color: #ffffff !important;
            font-size: 0.8rem !important;
            width: 80%;
            margin-left: 10%;
            border-radius: 0.5rem;
            line-height: 1.7rem !important;
            padding: 0 !important;
            margin-top: 1rem;
            background-color: rgb(213,127,91);
        }
        .sign-btn-ed{
            background-color: rgb(199,199,200) !important;
            color: rgb(139,139,139) !important;
        }
        .rule-btn{
            position: absolute;
            bottom: 0.4rem;
            width: 6rem;
            height: 1.3rem;
            right: 0.8rem;
            opacity: 0.5;
        }
    </style>
    <div>

    </div>
</head>
<body>
<div id="app">
    <div class="page">
        <div class="sign-title">
            <img src="/app/images/sign-title.png">
            <div class="rule-btn"></div>
        </div>
        <div class="bar">
            <div>
                <div>我的积分</div>
                <div>1389</div>
            </div>
            <div>
                <div>已连续签到</div>
                <div>32</div>
            </div>
            <div>
                <div class="sign-btn">签到</div>
            </div>
        </div>
        <div class="checkin"></div>
        <div class="mask" style="display: none">
            <div class="modal">
                <a href="#" class="closeBtn">×</a>
                <h1 class="title_h1 clearfix"><span></span><em>已签到</em> <i>您已签到2天</i></h1>
                <h2 class="title_h2">您获得现金<span>0.88元</span></h2>
            </div>
        </div>
    </div>
</div>




<script src="/app/js/mui.min.js"></script>
<script src="/app/js/jquery-2.0.3.min.js"></script>
<script src="/app/js/template7.min.js"></script>
<script src="/app/js/sign.js"></script>
<script src="/app/js/base.js"></script>
<script>
    var app = new App(function () {
        $(".checkin").Checkin();
    })
</script>
</body>
</html>