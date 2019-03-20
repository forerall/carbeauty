<?php

namespace App\Http\Controllers\Store\Models;

use App\Http\Controllers\Store\Models\Store;
use App\Services\CommonService;
use Illuminate\Database\Eloquent\Model;

class CouponConfig extends Model
{

    protected $table = 'z_coupon_config';
    protected $guarded = [];
    protected $appends = [
        'state_str',
        'image_url',
        'money_str',
    ];
    public static $stateArray = [
        1 => '发放中',
        2 => '已关闭',
    ];

    public function store()
    {
        return $this->belongsTo(Store::class, 'store_id', 'user_id');
    }

    public function getStateStrAttribute()
    {
        return CommonService::getArrayItem(self::$stateArray, $this->state);
    }

    public function getImageUrlAttribute()
    {
        return $this->image ? asset($this->image) : '';
    }

    public function getMoneyStrAttribute()
    {
        return $this->money != 0 ? CommonService::intToDecimalMoney($this->money) : '';
    }

    public function setMoneyAttribute($value)
    {
        $this->attributes['money'] = CommonService::decimalToIntMoney($value);
    }
}
