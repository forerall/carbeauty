<?php

namespace App\Http\Controllers\Store\Models;

use App\Models\Area;
use App\Services\CommonService;
use App\User;
use Illuminate\Database\Eloquent\Model;

class Activity extends Model
{
    protected $table = 'z_activity';
    protected $guarded = [];
    protected $appends = [];


}
