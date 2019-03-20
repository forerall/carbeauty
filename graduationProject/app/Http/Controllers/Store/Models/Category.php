<?php

namespace App\Http\Controllers\Store\Models;

use App\Models\IModel;
use App\Services\Output;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class Category extends IModel
{
    protected $table = 'z_goods_category';
    protected $guarded = [
        'level_str',
    ];
    protected $casts = [

    ];

    public function getLevelStrAttribute()
    {
        if ($this->level == 1) {
            return '一级分类';
        }
        return '';
    }


    protected static function getRule()
    {
        return [
            [
                'name' => 'bail|required_without:id|max:15',
                'top_id' => 'bail|required_without:id',
                //'image' => '',
            ], [
                'name.required_without' => '分类名称不能为空',
                'name.max' => '商品名称不能超过15个字符',
                'top_id.required_without' => '上级分类不能为空',
            ]
        ];
    }

    protected static function afterValidate($data)
    {
        $data['store_id'] = 1;
        return $data;
    }

    public static function addModel(Request $request)
    {
        $data = static::validate($request);
        $item = new static();
        $item->fill($data);
        if ($data['top_id'] > 0) {
            $top = Category::findOrFail($data['top_id']);
            $item->top_id = $top->id;
            $item->level = $top->level + 1;
        } else {
            $item->level = 1;
        }
        return Output::Result($item->save());
    }

    public static function updateModel(Request $request, $id)
    {
        $data = static::validate($request, $id);
        $item = static::findOrFail($id);
        if (isset($data['top_id']) && $data['top_id'] > 0) {
            $top = Category::findOrFail($data['top_id']);
            $item->top_id = $top->id;
            $item->level = $top->level + 1;
        } else {
            $item->level = 1;
        }
        $item->fill($data);
        return Output::Result($item->save());
    }

    public static function topCategory($except_ids = [],$prepend = true)
    {
        $top = Category::where('level', 1);
        if($except_ids){
            $top->whereNotIn('id',$except_ids);
        }
        $top = $top->get();
        if($prepend){
            $first = new Category();
            $first->id = 0;
            $first->name = '顶级分类';
            $top->prepend($first);
        }
        return $top;
    }

    public static function allCategory()
    {
        $list = self::orderBy('level', 'desc')->get()->keyBy('id');
        foreach ($list as $item) {
            if ($item->top_id > 0) {
                $parent = $list[$item->top_id];
                if (empty($parent->sub)) {
                    $parent->sub = collect([]);
                }
                $parent->sub->push($item);
            }
        }
        return $list->reject(function ($value, $key) {
            return $value->level > 1;
        });
    }
}
