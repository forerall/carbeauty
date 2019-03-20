<?php

namespace App\Http\Controllers\Store\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Carbon;

class GoodsBuy extends Model
{
    protected $table = 'z_goods_buy';
    protected $guarded = [];
    protected $appends = [];

    public function Goods()
    {
        return $this->belongsTo(Goods::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public static function addBuyRecord($user_id, $productIds = [])
    {
        if (!is_array($productIds) || empty($productIds)) {
            throw new \Exception('参数错误productIds');
        }
        $day = intval(date('Ymd'));
        $existIds = self::where('user_id', $user_id)->whereIn('product_id', $productIds)->pluck('product_id')->toArray();
        //更新购买时间
        if ($existIds) {
            self::where('user_id', $user_id)->whereIn('product_id', $existIds)->update(['day' => $day]);
        }
        $insertIds = array_diff($productIds, $existIds);
        if ($insertIds) {
            $insertData = [];
            $date = Carbon::now();
            foreach ($insertIds as $id) {
                $insertData[] = [
                    'created_at' => $date,
                    'updated_at' => $date,
                    'product_id' => $id,
                    'user_id' => $user_id,
                    'state' => 1,
                    'day' => $day,
                ];
            }
            self::insert($insertData);
        }
        return true;
    }
    
}
