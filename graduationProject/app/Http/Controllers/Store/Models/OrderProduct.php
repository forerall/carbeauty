<?php

namespace App\Http\Controllers\Store\Models;

use App\Services\CommonService;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;

class OrderProduct extends Model
{
    protected $table = 'z_order_product';
    protected $guarded = [];
    protected $appends = [
        'price_str',
        'image_url',
    ];

    public function getPriceStrAttribute()
    {
        return CommonService::intToDecimalMoney($this->price);
    }

    public function getImageUrlAttribute()
    {
        return $this->image ? asset($this->image) : CommonService::$defaultProductImage;
    }
}
