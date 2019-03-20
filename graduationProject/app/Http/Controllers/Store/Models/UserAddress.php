<?php

namespace App\Http\Controllers\Store\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class UserAddress extends Model
{
    protected $table = 'z_user_address';
    protected $guarded = [];
    protected $appends = [];

    public function area()
    {
        return $this->belongsTo(Area::class, 'area_code', 'code');
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
