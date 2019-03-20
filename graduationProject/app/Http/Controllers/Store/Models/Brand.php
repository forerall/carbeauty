<?php

namespace App\Http\Controllers\Store\Models;

use App\Models\IModel;
use App\Services\Output;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class Brand extends IModel
{
    protected $table = 'z_goods_brand';
    protected $guarded = [
    ];
    protected $casts = [

    ];

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id', 'id')->where('level', 1);
    }

    public function category2()
    {
        return $this->belongsTo(Category::class, 'category_id2', 'id')->where('level', 2);
    }

    protected static function getRule()
    {
        return [
            [
                'name' => 'bail|required_without:id|max:15',
                'category_id2' => 'bail|required_without:id|exists:z_goods_category,id',
                //'image' => '',
            ], [
                'name.required_without' => '品牌名称不能为空',
                'name.max' => '品牌名称不能超过15个字符',
                'category_id2.required_without' => '分类不能为空',
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
        if ($data['category_id2'] > 0) {
            $top = Category::findOrFail($data['category_id2']);
            $item->category_id = $top->top_id;
        }
        return Output::Result($item->save());
    }

    public static function updateModel(Request $request, $id)
    {
        $data = static::validate($request, $id);
        $item = static::findOrFail($id);
        if (isset($data['category_id2']) && $data['category_id2'] > 0) {
            $top = Category::findOrFail($data['category_id2']);
            $item->category_id = $top->top_id;
        }
        $item->fill($data);
        return Output::Result($item->save());
    }

    public static function getBrands($category_id, $category_id2 = 0)
    {
        $list = self::where('category_id', $category_id);
        if ($category_id2 > 0) {
            $list->where('category_id2', $category_id2);
        }
        return $list->get();
    }
}
