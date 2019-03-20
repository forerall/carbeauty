<?php

namespace App\Http\Controllers\Store\Models;

use App\Models\IModel;
use App\Services\Output;
use App\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class LevelRequest extends Model
{
    protected $table = 'z_level_request';
    protected $guarded = [];

    protected $appends = [
        'level_str',
    ];
    protected $casts = [

    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function area()
    {
        return $this->belongsTo(Area::class, 'area_code', 'code');
    }

    public function getLevelStrAttribute()
    {
        if (array_key_exists($this->level_id, User::$levelArray)) {
            return User::$levelArray[$this->level_id];
        }
        return '';
    }
}
