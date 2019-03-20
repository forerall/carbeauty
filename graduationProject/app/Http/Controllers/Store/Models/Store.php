<?php

namespace App\Http\Controllers\Store\Models;

use App\Services\CommonService;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class Store extends Model
{
    protected $table = 'z_store';
    protected $guarded = [];
    protected $appends = [
        'delivery_fee_str',//运费
        'delivery_fee_limit_str',//满包邮
    ];
    protected $casts = [

    ];

    public function getDeliveryFeeLimitStrAttribute()
    {
        return CommonService::intToDecimalMoney($this->delivery_fee_limit);
    }

    public function getDeliveryFeeStrAttribute()
    {
        return CommonService::intToDecimalMoney($this->delivery_fee);
    }
}
