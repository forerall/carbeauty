<?php

namespace App\Models;

use App\Services\CommonService;
use Illuminate\Database\Eloquent\Model;

class UserScoreLog extends Model
{
    protected $table = 'g_user_score_log';
    protected $guarded = [];
    protected $appends = [
        'type_str',
        'state_str',
        'money_str',
        'balance_str',
        'created_at_short',
    ];

    public static $typeStrArray = [
        1 => '奖励',
        2 => '购买',
    ];
    public static $stateStrArray = [
        1 => [
            1 => '充值中',
            2 => '充值成功',
            3 => '充值失败',
        ]
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
        return substr($this->created_at, 0, 10);
    }

}
