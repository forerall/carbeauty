<?php

namespace App;

use App\Services\CommonService;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $table = "users";
    protected $guarded = [];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */

    protected $hidden = [
        'remember_token',
    ];

    protected $appends = [
        'sex_str', 'state_str',

    ];

    public static $stateArray = [
        1 => '待审核',
        2 => '已通过',
        3 => '已拒绝',

    ];
    public static $sexArray = [
        0 => '保密',
        1 => '男',
        2 => '女',
    ];

    public function getSexStrAttribute()
    {
        return self::$sexArray[$this->sex];
    }

    public function getStateStrAttribute()
    {
        return self::$stateArray[$this->state];
    }

    public function projects_example()
    {
        return $this->belongsToMany('App\Models\Project','example')
            ->using('App\Models\Example')
            ->withPivot('picture','created_at');
    }
}
