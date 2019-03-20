<?php

namespace App\Http\Controllers\Api;

use App\Models\Withdraw;
use App\Services\BalanceService;
use App\Services\CommonService;
use App\Services\Output;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class WithdrawController extends Controller
{
    protected $balanceService;

    public function __construct(BalanceService $balanceService)
    {
        $this->balanceService = $balanceService;
    }

    //个人提现记录
    public function index(Request $request)
    {
        $user_id = Auth::id();
        $list = Withdraw::where('user_id', $user_id)
            ->orderBy('id', 'desc')
            ->paginate();
        $list->appends($request->except('page', 'per_page'));
        return Output::Success()
            ->with('list',$list);
    }

    //添加提现申请
    public function store(Request $request)
    {
        $this->validate($request, [
            'zfb' => 'required',
            //'account_type' => 'required',
            'money' => 'required',
            'name' => 'required',
        ], [
            'account.required' => '账号不能为空',
            //'account_type.required' => '账号类型不能为空',
            'money.required' => '金额不能为空',
            'name.required' => '姓名不能为空',
        ]);
        $user = Auth::user();
        if ($user->auth != 2) {
            return Output::Fail('完成实名认证后才能提现！');
        }
        $money = intval($request->get('money') * 100);
        if ($money <= 0) {
            return Output::Fail('提现金额不正确');
        }
        $txRate = 0;
        $fee = $money * $txRate;
        $fee = max($fee, 100);

        $money = $money + $fee;
        if ($money + $fee > $user->balance) {
            return Output::Fail('提现金额不能超过余额');
        }
        $user_id = Auth::id();
        $account = $request->get('zfb');
        $account_type = $request->get('account_type', 'zfb');
        $name = $request->get('name');
        try {
            DB::beginTransaction();
            $user_balance_log_id = $this->balanceService->withdraw($user_id, $money, '申请提现(手续费:' . CommonService::intToDecimalMoney($fee) . ')');
            if ($user_balance_log_id <= 0) {
                throw new \Exception('提交失败');
            }
            $item = new Withdraw();
            $item->user_id = $user_id;
            $item->account = $account;
            $item->account_type = $account_type;
            $item->name = $name;
            $item->money = $money;
            $item->user_balance_log_id = $user_balance_log_id;
            $item->state = 1;
            $item->save();
            DB::commit();
            return Output::Success('提交成功');
        } catch (\Exception $e) {
            DB::rollBack();
            Log::error($e);
        }
        return Output::Fail('提交失败');
    }
}
