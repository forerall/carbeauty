<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Bill extends Model
{
    //
    protected $table = "bills";
    protected $guarded = [];
    protected $appends = [
        'receive_str',
        'state_str',
        'can_delete',
        'can_edit',
        'qrcode_url'
    ];


    public static $stateArray = [
        1 => '待确认',
        2 => '已确认',
        3 => '异议单',

    ];
    public function getCanDeleteAttribute()
    {
      return in_array($this->state,[1,3]);
    }
    public function getCanEditAttribute()
    {
        return in_array($this->state,[1,3]);
    }

    public function getReceiveStrAttribute()
    {
        if (is_null($this->receive_at)) {
            return "未领取";
        } else {
            return $this->receive_at;
        }
    }


    public function getStateStrAttribute()
    {
        return self::$stateArray[$this->state];
    }

    public function getQrcodeUrlAttribute()
    {
//        dd(asset('/bill?id='.$this->id));
        return asset('/app/content?id='.$this->id);
    }

    public function user()
    {
//        return $this->belongsTo('App\Post');
        return $this->belongsTo('App\User');
    }
}
