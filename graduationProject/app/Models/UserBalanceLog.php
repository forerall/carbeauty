<?php

namespace App\Models;

use App\Services\CommonService;
use Illuminate\Database\Eloquent\Model;

class UserBalanceLog extends Model
{
    protected $table = 'g_user_balance_log';
    protected $guarded = [];
    protected $appends = [
        'type_str',
        'state_str',
        'money_str',
        'balance_str',
        'created_at_short',
    ];

    public static $typeStrArray = [
        1 => '充值',
        2 => '提现',
        21 => '提现退回',
        3 => '支付',
        4 => '退款',
        5 => '订单收入',
        6 => '奖励',

    ];
    public static $stateStrArray = [
        1 => '申请中',
        2 => '已付款',
        3 => '审核失败',
    ];

    public function getMoneyStrAttribute()
    {
        return ($this->money > 0 ? '+' : '') . number_format($this->money / 100, 2, '.', '');
    }

    public function getBalanceStrAttribute()
    {
        return CommonService::intToDecimalMoney($this->balance);
    }

    public function getStateStrAttribute()
    {
        return CommonService::getArrayItem(self::$stateStrArray, $this->state);
    }

    public function getTypeStrAttribute()
    {
        return CommonService::getArrayItem(self::$typeStrArray, $this->type);
    }

    public function getCreatedAtShortAttribute()
    {
        return substr($this->created_at, 0, 16);
    }

}
