<?php

namespace App\Http\Controllers\Store\Models;

use App\Http\Controllers\Store\Models\Store;
use App\Services\CommonService;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class Coupon extends Model
{

    protected $table = 'z_coupon';
    protected $guarded = [];
    protected $appends = [
        'coupon_code_url',
        'state_str',
    ];

    public static $stateArray = [
        1 => '未使用',
        2 => '已关闭',
        3 => '已使用',
    ];

    public function store()
    {
        return $this->belongsTo(Store::class, 'store_id', 'user_id');
    }


    public function CouponConfig()
    {
        return $this->belongsTo(CouponConfig::class, 'coupon_config_id', 'id');
    }

    public function getStateStrAttribute()
    {
        return CommonService::getArrayItem(self::$stateArray, $this->state);
    }

    public function getCouponCodeUrlAttribute()
    {
        return CommonService::qrCodeImage(urlencode($this->code));
    }

    public static function getUserAllCount($user_id)
    {
        return self::where('state', 1)
            ->where('user_id', $user_id)
            ->count();
    }

    public static function hasCoupon($coupon_config_id)
    {
        return Coupon::where('state', 1)
            ->where('user_id', 0)
            ->where('coupon_config_id', $coupon_config_id)
            ->count();
    }

    public static function ownCoupon($user_id, $coupon_config_id)
    {
        return Coupon::where('user_id', $user_id)
            ->where('coupon_config_id', $coupon_config_id)
            ->count();
    }

    /**
     * 发放优惠券
     * @param $user_id
     * @param $coupon_config_id
     * @param int $num
     * @return bool
     */
    public static function toUser($user_id, $coupon_config_id, $num = 1)
    {
        try {
            DB::beginTransaction();
            $success = CouponConfig::where('id', $coupon_config_id)
                ->whereRaw('total>got+' . $num)
                ->increment('got', $num);
            if (!$success) {
                throw new \Exception('优惠券数量不足');
            }
            $success = self::where('state', 1)
                    ->where('user_id', 0)
                    ->where('coupon_config_id', $coupon_config_id)
                    ->limit($num)
                    ->update([
                        'got_at' => Carbon::now(),
                        'user_id' => $user_id,
                    ]) == $num;
            if (!$success) {
                throw new \Exception('领取失败');
            }
            DB::commit();
            return true;
        } catch (\Exception $e) {
            DB::rollBack();
            Log::error($e);
        }
        return false;
    }

    //核销
    public function hx()
    {
        if (self::where('id', $this->id)->where('state', 1)->update(['state' => 3])) {
            CouponConfig::where('id', $this->coupon_config_id)->increment('used');
            return true;
        }
        return false;
    }
}
