@extends('backstage.layouts.auth')
@section('title', '登录')
@section('body')
    <style>
        video {
            object-fit: cover;
            margin: auto;
            position: absolute;
            z-index: -1;
            top: 50%;
            left: 50%;
            -webkit-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
            visibility: visible;
            width: 100%;
            height: 100%;
        }

        .login-bg {
            width: 100%;
            height: 100%;
            position: absolute;
            z-index: -1;
            top: 0;
            left: 0;
            background: url('/assets/images/login.jpg');
            background-size: auto 100%;
            background-repeat: no-repeat;
            background-position: center;
        }

        .container2 {
            position: absolute;
            padding: 0;
            background: rgba(0, 0, 0, 0.55);
            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
            width: 100%;
            height: 100%;
        }

        .form-signin {
            position: relative;
            top: 50%;
            left: 50%;
            -webkit-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
            max-width: 430px;
            padding: 15px;
        }

        .form-signin .form-signin-heading {
            font-size: 26px;
            font-weight: 400;
            color: #eee;
            margin: 0px auto 40px auto;
            text-align: center;
            line-height: 40px;
        }

        .form-signin .checkbox {
            font-weight: normal;
        }

        .form-signin .inputdiv {
            border: 1px solid rgba(255, 255, 255, 0.1);
            background: rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            margin-bottom: 20px;
        }

        .inputdiv2 {
            border-radius: 5px;
            margin-bottom: 20px;
            color: #eee;
            text-align: center;
        }

        .form-signin .form-control {
            border-radius: 3px !important;
            position: relative;
            height: auto;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding: 10px;
            font-size: 14px;

            background: transparent;
            border: 0px;
            -webkit-appearance: none;
            border-radius: 0px;
            padding: 12px 5px 12px 15px;
            color: #eee;
            height: 47px;

        }

        .form-signin .form-control:focus {
            z-index: 2;
        }

        .form-signin input {
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }

        .form-signin input:focus {
            border-radius: 3px;
        }

        input:-webkit-autofill {
            -webkit-box-shadow: 0 0 0px 1000px #ffffff inset !important;
            background-color: transparent !important;
            color: #eee !important;
        }
    </style>
    <video autoplay="autoplay" loop="loop" muted="muted" class="login-video">
        <source data-v-2a732f9c="" src="/assets/images/login.mp4" type="video/mp4">
    </video>
    <div class="login-bg" style="display: none"></div>

    <div class="container2">

        <form class="form-signin" action="" method="post">
            {{csrf_field()}}
            <h2 class="form-signin-heading">{{config('app.name','Laravel')}}</h2>
            @if (count($errors) > 0)
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            <div class="inputdiv2" style="display: none;">
                <input name="selecttype" id="sel1" value="1" type="radio" checked="checked"/><label
                        for="sel1">管理员登录</label>
                <input name="selecttype" id="sel2" value="2" style="margin-left:60px;" type="radio"/><label for="sel2">评委登录</label>
            </div>
            <div class="inputdiv id1">
                <input type="text" name="name" class="form-control" placeholder="请输入用户名!" autofocus>
            </div>
            <div class="inputdiv id1">
                <input type="password" name="password" autocomplete="new-password" class="form-control"
                       placeholder="请输入密码!">
            </div>
            <div class="inputdiv id1" style="position: relative;width: 240px;display: none;">
                <input type="text" name="captcha" class="form-control" placeholder="请输入验证码!">
                <img alt="点击换图" title="点击换图"
                     style="cursor:pointer;position: absolute;top: 0px;right: -160px;height: 45px;" id="yw0"
                     src=""/>
            </div>

            <div style="color: #f56c6c;font-size: 12px;line-height: 1;padding-top: 4px;position: absolute;bottom: 65px;left: 15px;"
                 class="errorMessage">{{ $errors->first('errmsg') }}</div>
            <span class="btn btn-lg btn-primary btn-block btn-login post-login" style="border-radius: 4px">登录</span>
        </form>
    </div>
@stop
@section('script')
    <script type="text/javascript">
        $(function () {
            $('form').bind('keyup', function (event) {
                if (event.keyCode == "13") {
                    //回车执行查询
                    $('.post-login').click();
                }
            });
            $('.post-login').click(function () {
                $(this).closest('form').attr('Method', 'POST').submit();
            });

            if (/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
                $('.login-bg').show();
            }
        })
    </script>
@stop