<?php

namespace App\Http\Controllers\Store\Models;

use App\Models\Area;
use App\Services\CommonService;
use App\User;
use Illuminate\Database\Eloquent\Model;

class OrderNotify extends Model
{
    protected $table = 'z_order_notify';
    protected $guarded = [];
    protected $appends = [];

    public function order()
    {
        return $this->belongsTo(Order::class);
    }
    public function user()
    {
        return $this->belongsTo(User::class);
    }

}
