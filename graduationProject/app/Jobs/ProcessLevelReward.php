<?php

namespace App\Jobs;

use App\Http\Controllers\Store\Models\LevelRequest;
use App\Http\Controllers\Store\Models\UserAddress;
use App\Services\BalanceService;
use App\User;
use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;

class ProcessLevelReward implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;


    protected $user;

    public function __construct(User $user)
    {
        $this->user = $user;
    }

    //会员升级奖励
    public function handle()
    {
        $area_code = $this->user->proxy_code;
        if (empty($area_code)) {
            $add = UserAddress::where('user_id', $this->user->id)->first();
            if ($add) {
                $area_code = $add->area_code;
            }
        }
        $bs = new BalanceService();
        $levelRequest = LevelRequest::where('user_id', $this->user->id)
            ->where('state', 2)
            ->orderBy('id', 'desc')
            ->first();
        $areaReward = 0;
        if ($levelRequest) {
            $areaReward = intval($levelRequest->pay_money * 0.03);
        }
        if ($areaReward) {
            //省市县奖励
            $province_code = substr($area_code, 0, 2) . '%';
            $u = User::where('proxy_code', 'like', $province_code)
                ->where('proxy', 3)
                ->first();
            if ($u && $u->id != $this->user->id) {
                $detail['txt'] = '会员升级奖励';
                $bs->reward($u->id, $areaReward, json_encode($detail, JSON_UNESCAPED_UNICODE));
            }
            $city_code = substr($area_code, 0, 4) . '%';
            $u = User::where('proxy_code', 'like', $city_code)
                ->where('proxy', 2)
                ->first();
            if ($u && $u->id != $this->user->id) {
                $detail['txt'] = '会员升级奖励';
                $bs->reward($u->id, $areaReward, json_encode($detail, JSON_UNESCAPED_UNICODE));
            }
            $area_code = substr($area_code, 0, 6) . '%';
            $u = User::where('proxy_code', 'like', $area_code)
                ->where('proxy', 1)
                ->first();
            if ($u && $u->id != $this->user->id) {
                $detail['txt'] = '会员升级奖励';
                $bs->reward($u->id, $areaReward, json_encode($detail, JSON_UNESCAPED_UNICODE));
            }
        }


        $detail = [
            'txt' => '推荐高级会员奖励',
            'uid' => $this->user->id,
            'nickname' => $this->user->nickname,
            'avatar' => $this->user->avatar,
        ];
        //fx_chain
        $recomIds = array_reverse(array_filter(explode(',', $this->user->fx_chain)));
        $rewardConfig = [
            2 => [200, 200, 200, 200],
            3 => [20000, 3000, 2000],
            4 => [30000, 5000, 3000],
            5 => [200000, 30000, 20000],
            6 => [900000, 150000, 90000],
        ];
        $upgradeLevel = 0;
        if ($this->user->update_type == 1) {
            $upgradeLevel = $this->user->level;
        } else if ($this->user->update_type == 2) {
            $upgradeLevel = $this->user->proxy + 3;
        }
        $this->user->update_type = 0;
        $this->user->save();

        $rewardMoney = isset($rewardConfig[$upgradeLevel]) ? $rewardConfig[$upgradeLevel] : false;
        if ($rewardMoney) {
            $upgradeLevelStr = [2 => '高级会员', 3 => '代理商', 4 => '县代理', 5 => '市代理', 6 => '省代理'][$upgradeLevel];
            $rewardCount = 0;
            $bs = new BalanceService();
            $lastLevel = 1;
            foreach ($recomIds as $uid) {
                $u = User::select('proxy', 'level', 'id')->find($uid);
                if ($u->max_level < $lastLevel) {
                    continue;
                }
                if ($u) {
                    if ($upgradeLevel == 2) {//高级会员
                        if ($rewardCount >= 4) {
                            break;
                        }
                        if ($u->max_level == 2) {//同级
                            $detail['txt'] = "推荐高级会员({$this->user->nickname})奖励";
                            $bs->reward($u->id, $rewardMoney[$rewardCount] * 100, json_encode($detail, JSON_UNESCAPED_UNICODE));
                            $rewardCount++;
                            $lastLevel = $u->max_level;
                            if ($rewardCount == 1) {
                                $lastLevel = max($lastLevel, $this->user->max_level);
                            }
                            if ($rewardCount == 3) {
                                //第四级要代理商
                                $lastLevel = 3;
                            }
                        } else if ($u->max_level > 2) {
                            $detail['txt'] = '网内出现高级会员奖励';
                            $bs->reward($u->id, 20000, json_encode($detail, JSON_UNESCAPED_UNICODE));
                            $rewardCount++;
                            $lastLevel = $u->max_level;
                            if ($rewardCount == 1) {
                                $lastLevel = max($lastLevel, $this->user->max_level);
                            }
                        }
                    } else if ($u->max_level > 2) {//高级会员以上
                        if ($rewardCount < 3) {//同级
                            $r = $u->max_level >= $upgradeLevel ? 100 : 50;//等级低于推荐只有50%奖励
                            $detail['txt'] = "推荐{$upgradeLevelStr}奖励";
                            $bs->reward($u->id, $rewardMoney[$rewardCount] * $r, json_encode($detail, JSON_UNESCAPED_UNICODE));
                            $rewardCount++;
                            $lastLevel = $u->max_level;
                            if ($rewardCount == 1) {
                                $lastLevel = max($lastLevel, $this->user->max_level);
                            }
                        } else {
                            break;
                        }
                    }
                }
            }
        }
    }
}
