<?php
namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Store\Models\LevelRequest;
use App\Http\Controllers\Store\Models\Order;
use App\Http\Controllers\Store\Services\OrderService;
use App\Models\Feedback;
use App\Models\Recharge;
use App\Models\UserBalanceLog;
use App\Models\Withdraw;
use App\Services\BalanceService;
use App\Services\CommonService;
use App\Services\Output;
use App\Tool\Vendor\Validate;
use App\Tools\Pay\PayService;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class UserController extends Controller
{
    public function userInfo()
    {
        $user = Auth::user();
        $userInfo = [
            'waitPay' => Order::where('user_id', $user->id)->where('state', 1)->count(),
            'waitSend' => Order::where('user_id', $user->id)->where('state', 2)->count(),
            'waitReceive' => Order::where('user_id', $user->id)->where('state', 3)->count(),
            'show_withdraw' => 1,
        ];
        return Output::Success()
            ->with('userInfo', array_merge($userInfo, $user->toArray()));
    }

    //积分充值
    public function chargeScore(Request $request)
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
        $money = intval($request->get('money'));
        if ($money <= 0) {
            return Output::Fail('充值金额不正确');
        }
        $recharge = new Recharge();
        $recharge->user_id = Auth::id();
        $recharge->money = $money;
        $recharge->order_no = OrderService::chargeScoreOrderNo();
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

    public function saveUserInfo(Request $request)
    {
        $fields = [
            'nickname',
            'avatar',
            'sex',
            'clientid',
            'ios',
            'pay_password',
            'login_time',
        ];
        $user = Auth::user();

        $data = $request->only($fields);
        $data = array_filter($data, function ($item) {
            return !is_null($item);
        });
        $user->fill($data);
        $user->save();
        return Output::Success('保存成功')
            ->with('data', $data)
            ->with('user', $user);
    }

    //修改密码
    public function modifyPassword(Request $request)
    {
        $password = $request->get('password');
        $passwordNew = $request->get('passwordNew');
        if (!Validate::password($passwordNew)) {
            return Output::Fail('密码不能为空');
        }
        $user = Auth::user();
        if (is_null($user)) {
            return Output::Fail('用户不存在');
        }
        if (!app('hash')->check($password, $user->password)) {
            return Output::Fail('原密码错误');
        }
        $user->password = bcrypt($passwordNew);
        $result = $user->save();
        return Output::Result($result, '修改成功', '修改失败');

    }

    //修改支付密码
    public function modifyPayPassword(Request $request)
    {
        $password = $request->get('old_pay_password');
        $passwordNew = $request->get('pay_password');
        if (!Validate::password($passwordNew)) {
            return Output::Fail('支付密码不能为空');
        }
        $user = Auth::user();
        if (is_null($user)) {
            return Output::Fail('用户不存在');
        }
        if ($user->pay_password && $user->pay_password != $password) {
            return Output::Fail('原密码错误');
        }
        $user->pay_password = $passwordNew;
        $result = $user->save();
        return Output::Result($result, '修改成功', '修改失败');

    }

    public function balance(Request $request)
    {
        $user_id = Auth::id();
        $list = UserBalanceLog::where('user_id', $user_id)
            ->orderBy('id', 'desc')
            ->paginate(15);
        foreach ($list as $item) {
            if ($item->type == 6 && $item->detail) {
                try {
                    $d = json_decode($item->detail, true);
                    if(isset($d['avatar'])){
                        $d['avatar'] = $d['avatar'] ? asset($d['avatar']) : asset('/images/avatar.png');
                    }
                    $item->detail = json_encode($d);
                } catch (\Exception $e) {
                    throw $e;
                }
            }
        }
        $list->appends($request->except('page', 'per_page'));
        return Output::Success()->with('list', $list);
    }

    public function withdraw(Request $request)
    {
        $this->validate($request, [
            'zfb' => 'required',
            'money' => 'required',
            'name' => 'required',
        ], [
            'account.required' => '账号不能为空',
            'money.required' => '金额不能为空',
            'name.required' => '姓名不能为空',
        ]);
        //$user = Auth::user();
//        if ($user->auth != 2) {
//            return Output::Fail('完成实名认证后才能提现！');
//        }
        $money = intval($request->get('money') * 100);
        if ($money <= 0) {
            return Output::Fail('提现金额不正确');
        }
        $user_id = Auth::id();
        $account = $request->get('zfb');
        $account_type = $request->get('account_type', 'zfb');
        $name = $request->get('name');
        try {
            DB::beginTransaction();
            $balanceService = new BalanceService();
            $user_balance_log_id = $balanceService->withdraw($user_id, $money, '申请提现');
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
            return Output::Fail($e->getMessage());
        }
        return Output::Fail('提交失败');
    }

    public function inviteList(Request $request)
    {
        $user_id = Auth::id();
        $list1 = User::where('fx_chain', 'like', "%,{$user_id},%")
            ->select('nickname', 'avatar', 'created_at')->get();

        return Output::Success()->with('list', $list1);
    }

    public function userLevelEdit(Request $request)
    {
        $user = Auth::user();
        $level = [
            ['money' => '2000元', 'id' => 2, 'name' => '高级会员(2000元)'],
            ['money' => '50000元', 'id' => 3, 'name' => '代理商(50000元)'],
        ];
        $levelArea = [
            ['money' => '100000元', 'id' => 4, 'name' => '区县级代理(100000元)'],
            ['money' => '500000元', 'id' => 5, 'name' => '市级代理(500000元)'],
            ['money' => '3000000元', 'id' => 6, 'name' => '省级代理(3000000元)'],
        ];
        $arrLevel = [];
        foreach ($level as $item) {
            if ($item['id'] > $user->level) {
                $arrLevel[] = $item;
            }
        }
        foreach ($levelArea as $item) {
            if ($item['id'] > $user->proxy + 3) {
                $arrLevel[] = $item;
            }
        }
        return Output::Success()
            ->with('level', $arrLevel)
            ->with('request', LevelRequest::where('user_id', Auth::id())->where('state', 1)->count());
    }

    public function saveLevel(Request $request)
    {
        $levelArray = [
            2 => 2000,
            3 => 50000,
            4 => 100000,
            5 => 500000,
            6 => 3000000,
        ];
        $level_id = $request->get('level_id');
        $payPassword = $request->get('pay_password');
        if (!in_array($level_id, [2, 3, 4, 5, 6])) {
            return Output::Fail('请选择级别');
        }
        if ($level_id > 3 && !$request->get('area_code')) {
            return Output::Fail('请选择地区');
        }
        $user = Auth::user();
        if ($user->level < 1) {
            return Output::Fail('当前级别不支持充值升级');
        }
        if ($user->level >= $level_id) {
            return Output::Fail('选择级别错误');
        }
        if (empty($user->pay_password)) {
            return Output::Fail('请先设置支付密码');
        }
        if ($payPassword != $user->pay_password) {
            return Output::Fail('支付密码错误');
        }
        $exist = LevelRequest::where('user_id', Auth::id())
            ->where('level_id', '>=', $level_id)
            ->whereIn('state', [1, 2])
            ->count();
        if ($exist) {
            return Output::Fail('请勿重复提交');
        }

        $level = new LevelRequest();
        $level->level_id = $level_id;
        $level->user_id = Auth::id();
        $level->state = 1;
        $level->area_code = $request->get('area_code');
        $level->pay_money = $levelArray[$level_id] * 100;
        $level->save();
        return Output::Success();
    }

    //我的邀请
    public function inviteTj(Request $request)
    {
        $user = Auth::user();
        $money_all = UserBalanceLog::where('user_id', $user->id)
            ->where('type', 6)
            ->where('state', 2)
            ->sum('money');
        $money_month = UserBalanceLog::where('user_id', $user->id)
            ->where('type', 6)
            ->whereBetween('created_at', CommonService::monthRange())
            ->where('state', 2)
            ->sum('money');

        return Output::Success()
            ->with('user', $user)
            ->with('money_all', CommonService::intToDecimalMoney($money_all))
            ->with('money_month', CommonService::intToDecimalMoney($money_month));
    }

    //会员留言
    public function feedback(Request $request)
    {
        $this->validate($request, [
            'username' => 'required',
            //'tel' => 'required',
            'content' => 'required',
            //'email' => 'required',
        ], [
            'content.required' => '内容不能为空',
            'email.required' => '邮箱不能为空',
        ]);
        $user_id = intval(Auth::id());
        $feedback = new Feedback();
        $feedback->user_id = $user_id;
        $feedback->content = $request->get('content');
        $feedback->tel = $request->get('tel');
        $feedback->username = $request->get('username');
        $feedback->email = $request->get('email');
        return Output::Result($feedback->save(), '提交成功', '提交失败');

    }
}
