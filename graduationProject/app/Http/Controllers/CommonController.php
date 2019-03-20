<?php

namespace App\Http\Controllers;

use App\Services\CommonService;
use App\Tools\Wechat\Event\Msg\SubscribeMsg;
use App\Tools\Wechat\Event\Msg\TextMsg;
use App\Tools\Wechat\Event\WxMsgCallback;
use App\Services\UploadService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class CommonController extends Controller
{

    public function __construct()
    {
    }

    public function downloadQrcode(Request $request)
    {
        $url = $request->get('qrcode_url');
        $size = $request->get('size', 300);
        echo CommonService::qrCodeLoad($url, $size);
    }

    public function upload(Request $request)
    {
        $uploadService = new UploadService();
        return $uploadService->saveUploadFile($request);
    }

    public function wxMsgCallback(Request $request)
    {
        try {
            $appId = 'wx137dfe39f849c955';
            $messageToken = '4628c8da3058889f9c60d2d1423bcd4c';
            $encodingAESKey = 'jztkIuJ0JoU9kLcEA8VMeBSSlxfaV0hYG05Ucyp7it1';
            $wx = new WxMsgCallback($appId, $messageToken, $encodingAESKey);
            return $wx->onTextMessage(function (WxMsgCallback $wx, TextMsg $msg) {
                return $wx->replyText('：' . $msg->Content);
            })->onSubscribeMessage(function (WxMsgCallback $wx, SubscribeMsg $msg) {
                if ($msg->subscribe()) {
                    return $wx->replyText('欢迎');
                }
            })->start();
        } catch (\Exception $e) {
            Log::error('wxMsgCallback:' . $e->getMessage());
        }
    }
}
