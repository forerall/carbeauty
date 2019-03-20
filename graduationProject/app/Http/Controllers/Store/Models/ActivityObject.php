<?php

namespace App\Http\Controllers\Store\Models;

use App\Models\Area;
use App\Services\CommonService;
use App\User;
use Illuminate\Database\Eloquent\Model;

class ActivityObject extends Model
{
    protected $table = 'z_activity_object';
    protected $guarded = [];
    protected $appends = [];

    protected $casts = [
        'content' => 'array',
    ];

    public function activity()
    {
        return $this->belongsTo(Activity::class);
    }
}
