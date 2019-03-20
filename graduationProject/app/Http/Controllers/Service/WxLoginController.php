<?php

namespace App\Http\Controllers\Service;

use App\Http\Controllers\Controller;
use App\Tools\Wechat\Weixin\WxShareLogin;
use Illuminate\Http\Request;

class WxLoginController extends Controller
{
    public function wxLoginRedirect(Request $request)
    {
        return WxShareLogin::serverLoginRedirect($request);
    }

    public function getWxUserInfo(Request $request){
        return WxShareLogin::serverGetUserInfo($request);
    }
}
