<?php

namespace App\Http\Controllers\Store\Models;

use App\Models\Area;
use App\Services\CommonService;
use App\User;
use Illuminate\Database\Eloquent\Model;

class OrderRefund extends Model
{
    protected $table = 'z_order_refund';
    protected $guarded = [];
    protected $appends = [
        'images_url',
        'money_str',
    ];

    protected $casts = [
        'images' => 'array',
    ];

    public function order()
    {
        return $this->belongsTo(Order::class);
    }

    public function getMoneyStrAttribute()
    {
        return CommonService::intToDecimalMoney($this->money);
    }

    public function getImagesUrlAttribute()
    {
        $arr = [];
        if ($this->images) {
            foreach ($this->images as $val) {
                if ($val) {
                    $arr[] = asset($val);
                }
            }
        }
        return $arr;
    }
}
