<?php
/**
 * Created by PhpStorm.
 * User: arts-mgcx
 * Date: 2016/10/19
 * Time: 11:45
 */
namespace App\Services;


use App\Models\UserScoreLog;
use App\Models\Withdraw;
use App\Models\UserBalanceLog;
use App\Tools\Pay\PayService;
use App\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class BalanceService
{
    public static $typeRecharge = 1;//充值
    public static $typeWithdraw = 2;//提现
    public static $typeWithdrawReturn = 21;//提现失败退回
    public static $typePay = 3;//支付
    public static $typeReturn = 4;//退款
    public static $typeOrder = 5;//订单到账
    public static $typeReward = 6;//邀请奖励

    const SignScore = 1;
    const CommentScore = 2;
    const BuyCoupon = 3;

    public function addScore($user_id, $score, $type, $detail = '')
    {
        if (User::where('id', $user_id)->count() < 1) {
            return false;
        }
        return $this->changeScore($user_id, abs($score), $detail, $type);
    }

    public function payScore($user_id, $score, $detail = '')
    {
        if (User::where('id', $user_id)->count() < 1) {
            return false;
        }
        return $this->changeScore($user_id, -abs($score), $detail, self::BuyCoupon);
    }

    public function reward($user_id, $money, $detail = '')
    {
        if (User::where('id', $user_id)->count() < 1) {
            return true;
        }
        $money = abs(intval($money));
        if ($money < 0) {
            throw new \Exception('订单金额错误');
        }
        if ($money == 0) {
            return true;
        }
        return $this->changeBalance($user_id, $money, $detail, self::$typeReward);
    }


    /**
     * 订单到账
     * @param $user_id
     * @param $money
     * @param string $detail
     * @return bool
     * @throws \Exception
     */
    public function orderMoney($user_id, $money, $detail = '')
    {
        $money = abs(intval($money));
        if ($money < 0) {
            throw new \Exception('订单金额错误');
        }
        return $this->changeBalance($user_id, $money, $detail, self::$typeOrder);
    }

    /**
     * 充值
     * @param $user_id
     * @param $money
     * @param string $detail
     * @return bool
     * @throws \Exception
     */
    public function recharge($user_id, $money, $detail = '')
    {
        $money = abs(intval($money));
        if ($money < 0) {
            throw new \Exception('充值金额错误');
        }
        return $this->changeBalance($user_id, $money, $detail, self::$typeRecharge);
    }


    /**
     * 申请提现
     * @param $user_id
     * @param $money
     * @param string $detail
     * @return bool
     * @throws \Exception
     */
    public function withdraw($user_id, $money, $detail = '')
    {
        $money = abs(intval($money));
        if ($money < 0) {
            throw new \Exception('提现金额错误');
        }
        //提现申请添加未确认的余额变更日志
        return $this->changeBalance($user_id, -$money, $detail, self::$typeWithdraw, 1);
    }

    /**
     * 余额使用
     * @param $user_id
     * @param $money
     * @param string $detail
     * @return bool
     * @throws \Exception
     */
    public function pay($user_id, $money, $detail = '')
    {
        $money = abs(intval($money));
        if ($money < 0) {
            throw new \Exception('支付金额错误');
        }
        return $this->changeBalance($user_id, -$money, $detail, self::$typePay);
    }

    /**
     * 退款
     * @param $user_id
     * @param $money
     * @param string $detail
     * @return bool
     * @throws \Exception
     */
    public function Back($user_id, $money, $detail = '')
    {
        $money = abs(intval($money));
        if ($money < 0) {
            throw new \Exception('支付金额错误');
        }
        return $this->changeBalance($user_id, $money, $detail, self::$typeReturn);
    }

    /**
     * 提现处理
     * @param $withdraw
     * @param $pass  是否通过
     * @param $msg  审核信息
     * @return bool
     */
    public function withdrawConfirm($withdraw, $pass, $msg)
    {
        try {
            DB::beginTransaction();
            //查询提现对应的余额记录
            $balance_log = UserBalanceLog::findOrFail($withdraw->user_balance_log_id);
            if ($balance_log->type != self::$typeWithdraw || $balance_log->state != 1) {
                throw new \Exception('提现记录状态错误');
            }
            //修改余额记录状态
            $result = UserBalanceLog::where('id', $balance_log->id)
                ->where('type', self::$typeWithdraw)
                ->where('state', 1)
                ->update([
                    'state' => $pass ? 2 : 3,
                    'balance' => $pass ? $balance_log->balance : $balance_log->balance + abs($balance_log->money),
                ]);
            if (!$result) {
                throw new \Exception('修改状态失败');
            }
            //不通过恢复余额
            if (!$pass) {
                $this->changeBalance($balance_log->user_id, abs($balance_log->money), '提现失败退回', self::$typeWithdrawReturn);
                $balance_log->state = 3;
                $balance_log->save();
                $result = Withdraw::where('id', $withdraw->id)
                    ->where('state', 1)
                    ->update([
                        'state' => 3,
                        'msg' => $msg,
                    ]);
                if (!$result) {
                    throw new \Exception('修改审核状态失败');
                }
            } else {
                $balance_log->state = 2;
                $balance_log->save();
                $zfb_out_trade_no = date('YmdHis') . mt_rand(1000, 9999);
                $result = Withdraw::where('id', $withdraw->id)
                    ->where('state', 1)
                    ->update([
                        'state' => 2,
                        'msg' => $msg,
                        'zfb_out_trade_no' => $zfb_out_trade_no,
                    ]);
                if (!$result) {
                    throw new \Exception('修改审核状态失败');
                }
                if (!PayService::transToAccountAlipay($withdraw->account, $withdraw->money / 100, $zfb_out_trade_no)) {
                    throw new \Exception('转账失败');
                }
            }
            DB::commit();
            return true;
        } catch (\Exception $e) {
            DB::rollBack();
            Log::error($e);
        }
        return false;
    }

    /**
     * 变更余额
     * @param $user_id
     * @param $money    int 单位分
     * @param $detail
     * @param $type
     * @param int $logState 余额日志状态1未确认，2已确认，3已取消
     * @return bool
     * @throws \Exception
     */
    protected function changeBalance($user_id, $money, $detail, $type, $logState = 2)
    {
        if ($money > 0) {
            if (!User::where('id', $user_id)->increment('balance', $money)) {
                throw new \Exception('增加余额失败');
            }
        } else if ($money < 0) {
            //余额不足
            if (User::where('id', $user_id)->where('balance', '>=', -$money)->count() == 0) {
                throw new \Exception('余额不足');
            }
            if (!User::where('id', $user_id)->where('balance', '>=', -$money)->decrement('balance', -$money)) {
                throw new \Exception('扣款失败');
            }
        } else {
            return false;
        }
        $u = User::where('id', $user_id)->select()->first();
        $log = UserBalanceLog::create([
            'user_id' => $user_id,
            'type' => $type,
            'money' => $money,
            'detail' => $detail,
            'state' => $logState,
            'balance' => $u->balance
        ]);
        return $log->id;
    }

    protected function changeScore($user_id, $score, $detail, $type)
    {
        if ($score > 0) {
            if (!User::where('id', $user_id)->increment('score', abs($score))) {
                throw new \Exception('增加积分失败');
            }
        } else if ($score < 0) {
            //余额不足
            if (User::where('id', $user_id)->where('score', '>=', abs($score))->count() == 0) {
                throw new \Exception('积分不足');
            }
            if (!User::where('id', $user_id)->where('score', '>=', abs($score))->decrement('score', abs($score))) {
                throw new \Exception('扣除积分失败');
            }
        } else {
            return false;
        }
        $u = User::where('id', $user_id)->select()->first();
        $log = UserScoreLog::create([
            'user_id' => $user_id,
            'type' => $type,
            'money' => $score,
            'detail' => $detail,
            'state' => 2,
            'balance' => $u->score
        ]);
        return $log->id;
    }

}