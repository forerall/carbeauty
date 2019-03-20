<?php

namespace App\Http\Controllers\Api;

use App\Models\Recharge;
use App\Models\Withdraw;
use App\Services\BalanceService;
use App\Services\Output;
use App\Tools\Pay\PayService;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class RechargeController extends Controller
{
    protected $balanceService;

    public function __construct(BalanceService $balanceService)
    {
        $this->balanceService = $balanceService;
    }

    //个人充值记录
    public function index(Request $request)
    {
        $user_id = Auth::id();
        $list = Recharge::where('user_id', $user_id)
            ->orderBy('id', 'desc')
            ->paginate();
        $list->appends($request->except('page', 'per_page'));
        return Output::Success()
            ->with('list', $list);
    }

    protected function orderNo()
    {
        return '20' . date('YmdHis') . str_pad(substr(explode('.', microtime(true))[1], 0, 3), 3, 0, STR_PAD_RIGHT) . mt_rand(100000, 999999);
    }

    //充值
    public function store(Request $request)
    {

        $this->validate($request, [
            'money' => 'required',
            'pay_way' => 'required',
        ], [
            'money.required' => '金额不能为空',
            'pay_way.required' => '支付方式不能为空',

        ]);
        $payWayArray = [
            PayService::$Testpay,
            PayService::$Alipay,
            PayService::$Wxpay,
        ];
        if (!in_array($request->get('pay_way'), $payWayArray)) {
            return Output::Fail('支付方式错误');
        }
        $money = intval($request->get('money') * 100);
        if ($money <= 0) {
            return Output::Fail('充值金额不正确');
        }
        $recharge = new Recharge();
        $recharge->user_id = Auth::id();
        $recharge->money = $money;
        $recharge->order_no = $this->orderNo();
        $recharge->state = 1;
        $recharge->pay_way = $request->get('pay_way');
        if ($recharge->save()) {
            try {
                $pay_str = PayService::getAppPayStr(
                    $recharge->pay_way,
                    $recharge->money,
                    $recharge->order_no,
                    '充值');
                $recharge->pay_str = $pay_str;
                return Output::Success()
                    ->with('recharge', $recharge);
            } catch (\Exception $e) {
                Log::info($e);
                return Output::Fail($e->getMessage());
            }
        }
        return Output::Fail('操作失败');

    }
}
