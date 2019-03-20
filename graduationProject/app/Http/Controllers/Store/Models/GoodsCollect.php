<?php

namespace App\Http\Controllers\Store\Models;

use App\Services\Output;
use App\User;
use Illuminate\Database\Eloquent\Model;

class GoodsCollect extends Model
{
    protected $table = 'z_goods_collect';
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

    public static function collectState($user_id, $product_id)
    {
        $exist = self::where('product_id', $product_id)
            ->where('user_id', $user_id)
            ->where('state', 1)
            ->exists();
        return $exist ? 1 : 0;
    }

    public static function doCollect($user_id, $product_id)
    {
        if (!Goods::where('id', $product_id)->exists()) {
            return Output::Fail('商品不存在');
        }
        $collect = self::firstOrNew([
            'user_id' => $user_id,
            'product_id' => $product_id,
        ]);
        $collect->state = $collect->state == 1 ? 0 : 1;
        $result = $collect->save();
        $msg = $collect->state == 1 ? '已收藏' : '已取消';
        $msg2 = $collect->state == 1 ? '收藏失败' : '取消失败';
        return Output::Result($result, $msg, $msg2)
            ->with('collect', $collect->state)
            ->with('collect_str', $collect->state == 1 ? '已收藏' : '收藏');
    }

}
