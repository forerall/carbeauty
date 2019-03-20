<?php

namespace App\Http\Controllers\Store\Models;

use App\Services\CommonService;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table = 'z_order';
    protected $guarded = [];
    protected $appends = [
        'state_str',
        'order_amount_str',
        'pay_amount_str',
        'balance_amount_str',
        'delivery_fee_str',
        'can_pay',
        'can_send',
        'can_confirm',
        'show_delivery',
    ];

    protected $casts = [

    ];

    public static $stateArray = [
        1 => '待付款',
        2 => '已付款',
        3 => '已发货',
        4 => '已完成',
        7 => '未付款取消订单',
    ];
    public function getCanSendAttribute()
    {
        return $this->state == 2;
    }
    public function getCanPayAttribute()
    {
        return $this->state == 1;
    }

    public function getShowDeliveryAttribute()
    {
        return $this->state == 3 || $this->state == 4;
    }

    public function getCanConfirmAttribute()
    {
        return $this->state == 3;
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function common()
    {
        return $this->belongsTo(OrderCommon::class, 'order_no', 'order_no');
    }

    public function store()
    {
        return $this->belongsTo(Store::class);
    }

    public function seller()
    {
        return $this->belongsTo(User::class);
    }

    public function product()
    {
        return $this->hasMany(OrderProduct::class, 'order_no', 'order_no');
    }

    public function getStateStrAttribute()
    {
        return CommonService::getArrayItem(self::$stateArray, $this->state);
    }

    public function getPayAmountStrAttribute()
    {
        return CommonService::intToDecimalMoney($this->pay_amount);
    }

    public function getBalanceAmountStrAttribute()
    {
        return CommonService::intToDecimalMoney($this->balance_amount);
    }

    public function getOrderAmountStrAttribute()
    {
        return CommonService::intToDecimalMoney($this->order_amount);
    }

    public function getDeliveryFeeStrAttribute()
    {
        return CommonService::intToDecimalMoney($this->delivery_fee);
    }
}
