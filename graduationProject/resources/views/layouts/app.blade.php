<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="minimal-ui, width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- 以下meta只有添加到桌面才有效-->
    <!-- 允许全屏模式浏览
    <meta name="apple-mobile-web-app-capable" content="yes">
    -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <!-- 定义safari顶端状态条的样式 -->
    <meta name="apple-mobile-web-app-status-bar-style" content="default" /><!-- 可选default、black、black-translucent -->
    <!-- WEB APP名称 -->
    <meta name="apple-mobile-web-app-title" content="笔记">

    <meta name="apple-touch-fullscreen" content="yes">
    <link rel="apple-touch-icon-precomposed" href="{{asset('images/add.png')}}" />
    <link rel="apple-touch-icon-precomposed" href="{{asset('images/add.png')}}" />

    <title>{{ config('app.name', 'Laravel') }}</title>
    <!-- Styles -->
    <link href="{{ asset('css/common.css')}}" rel="stylesheet">
    @yield('css')
</head>
<body>
<div id="app">
    @yield('content')
</div>
<script src="{{ asset('js/jquery-2.0.3.min.js') }}"></script>
<script src="{{ asset('js/jquery.form.js') }}"></script>
<script src="{{ asset('js/template7.min.js') }}"></script>
<script src="{{ asset('js/base.js') }}"></script>
@yield('js')
</body>
</html>
