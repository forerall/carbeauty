<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>@yield('title')</title>
    <link href="/home/css/init.css" rel="stylesheet" type="text/css"/>
    <link href="/home/css/index.css" rel="stylesheet" type="text/css"/>
    <link href="/home/css/pagination.css" rel="stylesheet" type="text/css"/>
    <link href="/home/css/common.css" rel="stylesheet" type="text/css"/>
</head>
@yield('style')
</head>
<body>
<!-- 左右边距-->
<div class="container">
    @include('home.layouts.upMenu')
    @yield('content')
    @include('home.layouts.footer')
</div>
<script type="text/javascript" src="/home/js/jquery-1.10.2.js"></script>
@yield('script')
</body>
</html>
