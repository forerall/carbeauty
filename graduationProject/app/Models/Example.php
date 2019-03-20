<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\Pivot;

class Example extends Pivot
{
    //
    protected $table="example";
    protected $guarded = [];
    public $timestamps = false;


    public function user(){
        return $this->hasOne('App\User', 'id', 'user_id');
    }

    public function project(){
        return $this->hasOne('App\Models\Project', 'id', 'project_id');
    }



}
