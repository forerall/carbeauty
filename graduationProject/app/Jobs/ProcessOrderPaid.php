<?php

namespace App\Jobs;

use App\Http\Controllers\Store\Models\Order;
use App\Http\Controllers\Store\Models\OrderProduct;
use App\Services\BalanceService;
use App\Services\SettingService;
use App\User;
use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class ProcessOrderPaid implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $order;

    public function __construct(Order $order)
    {
        $this->order = $order;
    }


    public function handle()
    {
        try {
            $bs = new BalanceService();
            $order = $this->order;
            $order_no = $order->order_no;
            //积分商品分红
            $sum = OrderProduct::where('order_no', $order_no)
                ->where('score', '>', 0)
                ->sum('price');
            $jfMoney = $sum * SettingService::get('common.jf_rate') / 100;
            if ($jfMoney > 0) {
                $uList = User::where(function ($query) {
                    $query->where('level', '>', 1)
                        ->orWhere('proxy', '>', 0);
                })->pluck('id')
                    ->toArray();
                if (count($uList) > 0) {
                    $up = intval($jfMoney / count($uList));
                    if ($up > 0) {
                        foreach ($uList as $uid) {
                            $detail = [
                                'txt' => '积分商品分红',
                                'uid' => $order->user->id,
                                'nickname' => $order->user->nickname,
                                'avatar' => $order->user->avatar,
                            ];
                            $bs->reward($uid, $up, json_encode($detail,JSON_UNESCAPED_UNICODE));
                        }
                    }
                }
            }
            //非积分商品,奖励积分
            $sum = OrderProduct::where('order_no', $order_no)
                ->where('score', 0)
                ->sum(DB::Raw('price*num'));
            if ($sum > 0) {
                $bs->addScore($order->user_id, $sum, '购物奖励');
            }
            //第一次购物升级普通会员
            $user = $order->user;
            if ($user->level == 0) {
                $sum = Order::where('user_id', $user->id)
                    ->whereNotIn('state', [1, 7])
                    ->count();
                if ($sum > 0) {
                    $user->level = 1;
                    $user->update_type = 1;
                    $user->save();
                    //推荐奖励
                    dispatch(new ProcessLevelReward($user));
                }
            }
            //分销奖励
            dispatch(new ProcessConsumeReward($order));
        } catch (\Exception $e) {
            Log::error($e);
            throw $e;
        }
    }
}
