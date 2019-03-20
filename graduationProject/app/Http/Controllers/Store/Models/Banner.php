<?php

namespace App\Http\Controllers\Store\Models;

use App\Models\IModel;
use App\Services\Output;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class Banner extends IModel
{
    protected $table = 'z_banner';
    protected $guarded = [];
    protected $appends = [
        'image_url',
    ];
    protected $casts = [

    ];

    public function getImageUrlAttribute()
    {
        return asset($this->image);
    }

    protected static function getRule()
    {
        return [
            [
                'jump_type' => 'bail|required_without:id',
            ], [
                'jump_type.required_without' => '分类不能为空',
            ]
        ];
    }

    protected static function afterValidate($data)
    {
        return $data;
    }

    public static function addModel(Request $request)
    {
        $data = static::validate($request);
        $item = new static();
        $item->fill($data);
        return Output::Result($item->save());
    }

    public static function updateModel(Request $request, $id)
    {
        $data = static::validate($request, $id);
        $item = static::findOrFail($id);
        $item->fill($data);
        return Output::Result($item->save());
    }

}
