<?php

namespace App\Http\Controllers\Store\Models;

use App\Models\IModel;
use App\Services\Output;
use App\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class FxChain extends Model
{
    protected $table = 'z_fx_chain';
    protected $guarded = [];

}
