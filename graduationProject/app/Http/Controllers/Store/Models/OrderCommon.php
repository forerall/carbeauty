<?php

namespace App\Http\Controllers\Store\Models;

use App\Models\Area;
use App\Services\CommonService;
use App\User;
use Illuminate\Database\Eloquent\Model;

class OrderCommon extends Model
{
    protected $table = 'z_order_common';
    protected $guarded = [];
    protected $appends = [];

    public function recArea(){
        return $this->belongsTo(Area::class,'rec_area_code','code');
    }
    public function sendArea(){
        return $this->belongsTo(Area::class,'send_area_code','code');
    }
}
