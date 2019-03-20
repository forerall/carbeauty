<?php

namespace App\Models;

use App\Services\CommonService;
use App\User;
use Illuminate\Database\Eloquent\Model;

class Recharge extends Model
{
    protected $table = 'g_recharge';
    protected $guarded = [];
    protected $appends = [
        'money_str',
        'state_str',
    ];

    public static $stateStrArray = [
        1 => '充值中',
        2 => '充值成功',
        3 => '充值失败',
    ];


    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function getStateStrAttribute()
    {
        return CommonService::getArrayItem(self::$stateStrArray, $this->state);
    }

    public function setMoneyAttribute($value)
    {
        $this->attributes['money'] = CommonService::decimalToIntMoney($value);
    }

    public function getMoneyStrAttribute()
    {
        return CommonService::intToDecimalMoney($this->money);
    }
}
