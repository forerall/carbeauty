<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    //
    protected $table="project";
    protected $guarded = [];
    public $timestamps = false;


    public function users_example()
    {
        return $this->belongsToMany('App\User','example')
            ->using('App\Models\Example')
            ->withPivot('picture','created_at');
    }

}
