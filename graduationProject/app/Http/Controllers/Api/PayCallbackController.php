<?php

namespace App\Http\Controllers\Api;

use App\Services\PayCallbackService;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

//支付回调处理
class PayCallbackController extends Controller
{

    protected $payCallbackService;
    public function __construct(PayCallbackService $payCallbackService)
    {
        $this->payCallbackService = $payCallbackService;
    }
    public function alipayCallback(Request $request)
    {
        return $this->payCallbackService->alipayCallback();
    }
    public function wxpayCallback(Request $request){
        return $this->payCallbackService->wxpayCallback();
    }

}
