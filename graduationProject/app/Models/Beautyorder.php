<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class Beautyorder extends Model
{
    //
    protected $table="order";
    protected $guarded = [];
    public $timestamps = false;
    protected $appends = [
        'state_str',
        'received_at_str',
    ];

    public static $stateArray=[
        1=>'待完成',
        2=>'订单完成',
        3=>'订单取消'
    ];



    public function user(){
        return $this->hasOne(User::class, 'id', 'user_id');
    }

    public function project()
    {
        return $this->hasOne('App\Models\Project', 'id', 'project_id');
    }


    public function getStateStrAttribute()
    {
        return self::$stateArray[$this->state];
    }
    public function getReceivedAtStrAttribute()
    {
        if($this->state==1){
            return '';
        }elseif($this->state==2){
            return now();
        }elseif($this->state==3){
            return '已取消订单';
        }
    }
}
