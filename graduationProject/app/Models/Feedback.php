<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class Feedback extends Model
{
    protected $table = 'g_feedback';
    protected $guarded = [];
    protected $appends = [];

    public function user(){
        return $this->belongsTo(User::class);
    }

}
