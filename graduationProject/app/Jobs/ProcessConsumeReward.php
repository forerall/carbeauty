<?php

namespace App\Jobs;

use App\Http\Controllers\Store\Models\Order;
use App\Http\Controllers\Store\Models\OrderProduct;
use App\Services\BalanceService;
use App\User;
use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Support\Facades\Log;

class ProcessConsumeReward implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;


    protected $order;

    public function __construct(Order $order)
    {
        $this->order = $order;
    }

    //会员购买奖励
    public function handle()
    {
        if ($this->order->fx == 0) {
            $this->order->fx = 1;
            $this->order->save();
        }
        $order = $this->order;
        $user = $this->order->user;
        $bs = new BalanceService();
        $recomIds = array_reverse(array_filter(explode(',', $user->fx_chain)));
        $price29Count = 0;
        $price39Count = 0;
        $goods = OrderProduct::where('order_no', $order->order_no)
            ->where('score', 0)
            ->select('num', 'price')
            ->get();
        foreach ($goods as $good) {
            if ($good->price % 2980 == 0) {
                $price29Count += $good->num * intval(ceil($good->price / 2980));
            } else if ($good->price % 3980 == 0) {
                $price39Count += $good->num * intval(ceil($good->price / 3980));;
            }
        }

        if ($price29Count + $price39Count <= 0) {
            return true;
        }

        $detail = [
            'txt' => '',
            'uid' => $user->id,
            'nickname' => $user->nickname,
            'avatar' => $user->avatar,
        ];
        //省市县奖励
        $province_code = substr($order->common->rec_area_code, 0, 2) . '%';
        $u = User::where('proxy_code', 'like', $province_code)
            ->where('proxy', 3)
            ->first();
        if ($u) {
            $detail['txt'] = '分销奖励';
            $bs->reward($u->id, $price29Count * 89 + $price39Count * 119, json_encode($detail,JSON_UNESCAPED_UNICODE));
        }
        $city_code = substr($order->common->rec_area_code, 0, 4) . '%';
        $u = User::where('proxy_code', 'like', $city_code)
            ->where('proxy', 2)
            ->first();
        if ($u) {
            $detail['txt'] = '分销奖励';
            $bs->reward($u->id, $price29Count * 89 + $price39Count * 119, json_encode($detail,JSON_UNESCAPED_UNICODE));
        }
        $area_code = substr($order->common->rec_area_code, 0, 6) . '%';
        $u = User::where('proxy_code', 'like', $area_code)
            ->where('proxy', 1)
            ->first();
        if ($u) {
            $detail['txt'] = '分销奖励';
            $bs->reward($u->id, $price29Count * 89 + $price39Count * 119, json_encode($detail,JSON_UNESCAPED_UNICODE));
        }


        //分销5级奖励
        $config = [
            [1, 1, 1, 1, '2220'],
            [1, 1, 1, 2, '2220'],
            [1, 1, 1, 3, '2225'],
            [1, 1, 2, 1, '2260'],
            [1, 1, 2, 2, '2260'],
            [1, 1, 2, 3, '2265'],
            [1, 1, 3, 1, '2270'],
            [1, 1, 3, 2, '2270'],
            [1, 1, 3, 3, '2270'],
            [1, 2, 1, 1, '2600'],
            [1, 2, 1, 2, '2606'],
            [1, 2, 1, 3, '2603'],
            [1, 2, 2, 1, '2660'],
            [1, 2, 2, 2, '2660'],
            [1, 2, 2, 3, '2665'],
            [1, 2, 3, 1, '2630'],
            [1, 2, 3, 2, '2630'],
            [1, 2, 3, 3, '2630'],
            [1, 3, 1, 1, '2700'],
            [1, 3, 1, 2, '2700'],
            [1, 3, 1, 3, '2702'],
            [1, 3, 2, 1, '2700'],
            [1, 3, 2, 2, '2700'],
            [1, 3, 2, 3, '2702'],
            [1, 3, 3, 1, '2720'],
            [1, 3, 3, 2, '2720'],
            [1, 3, 3, 3, '2720'],
            [2, 1, 1, 1, '6000'],
            [2, 1, 1, 2, '6006'],
            [2, 1, 1, 3, '6003'],
            [2, 1, 2, 1, '6060'],
            [2, 1, 2, 2, '6066'],
            [2, 1, 2, 3, '6063'],
            [2, 1, 3, 1, '6030'],
            [2, 1, 3, 2, '6030'],
            [2, 1, 3, 3, '6032'],
            [2, 2, 1, 1, '6600'],
            [2, 2, 1, 2, '6606'],
            [2, 2, 1, 3, '6603'],
            [2, 2, 2, 1, '6660'],
            [2, 2, 2, 2, '6660'],
            [2, 2, 2, 3, '6665'],
            [2, 2, 3, 1, '6630'],
            [2, 2, 3, 2, '6630'],
            [2, 2, 3, 3, '6630'],
            [2, 3, 1, 1, '6300'],
            [2, 3, 1, 2, '6300'],
            [2, 3, 1, 3, '6302'],
            [2, 3, 2, 1, '6300'],
            [2, 3, 2, 2, '6300'],
            [2, 3, 2, 3, '6302'],
            [2, 3, 3, 1, '6320'],
            [2, 3, 3, 2, '6320'],
            [2, 3, 3, 3, '6320'],
            [3, 1, 1, 1, '7000'],
            [3, 1, 1, 2, '7000'],
            [3, 1, 1, 3, '7002'],
            [3, 1, 2, 1, '7000'],
            [3, 1, 2, 2, '7000'],
            [3, 1, 2, 3, '7002'],
            [3, 1, 3, 1, '7020'],
            [3, 1, 3, 2, '7020'],
            [3, 1, 3, 3, '7022'],
            [3, 2, 1, 1, '7000'],
            [3, 2, 1, 2, '7000'],
            [3, 2, 1, 3, '7002'],
            [3, 2, 2, 1, '7000'],
            [3, 2, 2, 2, '7000'],
            [3, 2, 2, 3, '7002'],
            [3, 2, 3, 1, '7020'],
            [3, 2, 3, 2, '7020'],
            [3, 2, 3, 3, '7022'],
            [3, 3, 1, 1, '7200'],
            [3, 3, 1, 2, '7200'],
            [3, 3, 1, 3, '7202'],
            [3, 3, 2, 1, '7200'],
            [3, 3, 2, 2, '7200'],
            [3, 3, 2, 3, '7202'],
            [3, 3, 3, 1, '7220'],
            [3, 3, 3, 2, '7220'],
            [3, 3, 3, 3, '7220'],
        ];
        $configKey = [];
        foreach ($config as $item) {
            $configKey[$item[0] . $item[1] . $item[2] . $item[3]] = [
                intval(substr($item[4], 0, 1)) * 100,
                intval(substr($item[4], 1, 1)) * 100,
                intval(substr($item[4], 2, 1)) * 100,
                intval(substr($item[4], 3, 1)) * 100,
            ];
        }
        $rewardKey = '';
        $lastLevel = 1;
        $rewardUids = [];
        foreach ($recomIds as $uid) {
            if (count($rewardUids) >= 4) {
                break;
            }
            $u = User::select('proxy', 'level', 'id')->find($uid);

            if (count($rewardUids) == 3) {
                if ($u->max_level < 3) {
                    continue;
                }
            }
            if ($u->proxy > 0) {//省市县代理都按 代理商等级算
                $rewardKey .= 3;
                $lastLevel = $u->max_level;
                $rewardUids[] = $u->id;
            } else if ($u->level >= $lastLevel) {
                $rewardKey .= $u->level;
                $lastLevel = $u->level;
                $rewardUids[] = $u->id;
            }
        }
        Log::info($rewardUids);
        $rewardKey = str_pad($rewardKey, 4, '1');
        $rewardMoney = isset($configKey[$rewardKey]) ? $configKey[$rewardKey] : false;
        if (!$rewardKey) {
            Log::error('奖励错误：' . $rewardKey);
            return false;
        }
        foreach ($rewardUids as $key => $uid) {
            $detail['txt'] = '分销奖励';
            $bs->reward($uid, $rewardMoney[$key] * ($price29Count + $price39Count), json_encode($detail,JSON_UNESCAPED_UNICODE));
        }
    }
}

