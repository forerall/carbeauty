<?php

namespace App\Http\Controllers\Store\Models;

use App\Models\IModel;
use App\Services\CommonService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class Goods extends IModel
{
    protected $table = 'z_goods';
    protected $guarded = [];
    protected $appends = [
        'image_url',
        'price_str',
        'state_str',
        'type_str',
        'attribute_price_str',//规格价格字符串
        'total_price_str',//商品总价格
        'images_url',
        'detail_url',
        'show_score',
        'score_str',
        'qiding_str',
        'data_str',
    ];
    protected $casts = [
        'images' => 'array',
        'attribute' => 'array',
        'detail' => 'array',
    ];
    public static $stateArray = [
        1 => '上架',
        2 => '下架',
    ];
    public static $typeArray = [
        1 => '普通商品',
        2 => '限购',
        3 => '满购',
    ];

    public function getShowScoreAttribute()
    {
        return $this->type == 2;
    }


    public function getImagesUrlAttribute()
    {
        $arr = [];
        if ($this->images) {
            foreach ($this->images as $val) {
                if ($val) {
                    $arr[] = asset($val);
                }
            }
        }
        return $arr;
    }

    public function getDetailUrlAttribute()
    {
        $arr = [];
        if ($this->detail) {
            foreach ($this->detail as $val) {
                if ($val) {
                    $arr[] = asset($val);
                }
            }
        }
        return $arr;
    }

    /**
     * 前端可出售的商品
     * @param $query
     * @return mixed
     */
    public function scopeNormalProduct($query)
    {
        return $query->where('state', 1);
    }


    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function category2()
    {
        return $this->belongsTo(Category::class, 'category_id2');
    }

    public function brand()
    {
        return $this->belongsTo(Brand::class, 'brand_id');
    }

    public function getImageUrlAttribute()
    {
        return asset($this->image);
    }

    public function getQidingStrAttribute()
    {
        return $this->qidin . $this->uint . '起订';
    }

    public function getAttributePriceStrAttribute()
    {
        return CommonService::intToDecimalMoney($this->attribute_price);
    }

    public function getTotalPriceStrAttribute()
    {
        return CommonService::intToDecimalMoney($this->total_price);
    }

    public function getPriceStrAttribute()
    {
        return CommonService::intToDecimalMoney($this->price);
    }

    public function getScoreStrAttribute()
    {
        return CommonService::intToDecimalMoney($this->score);
    }

    public function getStateStrAttribute()
    {
        return CommonService::getArrayItem(self::$stateArray, $this->state);
    }

    public function getTypeStrAttribute()
    {
        return CommonService::getArrayItem(self::$typeArray, $this->type);
    }

    public function getDataStrAttribute()
    {
        $arr = [];
        if ($this->qiding) {
            $arr[] = $this->qiding . $this->uint . '起订';
        }
        if ($this->guige_txt) {
            $arr[] = $this->guige_txt;
        }
        if ($this->stock) {
            $arr[] = '库存:' . $this->stock;
        }
        if ($this->limit_num) {
            $arr[] = '限购:' . $this->limit_num;
        }
        return implode('<span style="padding: 0 4px;color: #DDDDDD">|</span>', $arr);
    }

    public function setPriceAttribute($value)
    {
        $this->attributes['price'] = CommonService::decimalToIntMoney($value);
    }

    public function setScoreAttribute($value)
    {
        $this->attributes['score'] = CommonService::decimalToIntMoney($value);
    }

    protected static function getRule()
    {
        return [
            [
                'category_id' => 'bail|required_without:id',
                'category_id2' => 'bail|required_without:id',
                'name' => 'bail|required_without:id|max:255',
                'type' => 'bail|required_without:id',
                'image' => 'bail|required_without:id',
                //'images' => 'bail|required_without:id|array',
                'state' => 'bail|required_without:id',
                'detail' => 'bail|required_without:id|array',
                'price' => 'bail|required_without:id|money',
                // 'score' => 'bail|required_if:type,2',
                'text' => 'bail|required_without:id',
                'uint' => 'bail|required_without:id|max:10',
                'stock' => 'bail|required_without:id',
                //非必填
                'market_price' => 'sometimes|money',
                'sold_at' => 'sometimes|date_format:Y-m-d H:i:s',
                'attribute' => 'sometimes|array',
                'limit_num' => 'sometimes|integer',
                'limit_amout' => 'sometimes|money',
                'qiding' => 'sometimes|integer',
                'sale_time' => 'sometimes',
                'guige_txt' => 'sometimes',
                'guige_txt2' => 'sometimes',
                'baozhiqi' => 'sometimes',
                'tiaoxingma' => 'sometimes',
                'lingshou' => 'sometimes',
                'brand_id' => 'sometimes|integer',
                'product_txt' => 'sometimes',
            ], [
                'category_id.required_without' => '一级分类不能为空',
                'category_id2.required_without' => '二级分类不能为空',
                'name.required_without' => '商品名称不能为空',
                'type.required_without' => '商品类别不能为空',
                'price.required_without' => '商品价格不能为空',
                'price.money' => '商品价格0.00-999999.00',
                'limit_amout.money' => '满购价格0.00-999999.00',
                'limit_num.integer' => '限购数量必须是整数',
                'qiding.integer' => '起订数量必须是整数',

                'score.required_if' => '购买积分不能为空',
                'name.max' => '商品名称不能超过255个字符',
                'image.required_without' => '商品主图不能为空',
                'images.required_without' => '商品图片不能为空',
                'state.required_without' => '商品状态不能为空',
                'detail.required_without' => '商品详情不能为空',
                'text.required_without' => '商品描述不能为空',
                'attribute.array' => '商品规格错误',
                'uint.required_without' => '商品单位不能为空',
                'uint.max' => '商品单位不能超过10个字符',
                'stock.required_without' => '商品库存不能为空',
                'sold_at.date_format' => '开售时间格式Y-m-d H:i:s',
            ]
        ];
    }

    protected static function afterValidate($data)
    {
        $data['store_id'] = 1;
        if (isset($data['attribute'])) {
            $data['attribute'] = array_values($data['attribute']);
            foreach ($data['attribute'] as &$attr) {
                if (isset($attr['price'])) {
                    $attr['price'] = intval($attr['price'] * 100);
                    $attr['price_str'] = CommonService::intToDecimalMoney($attr['price']);
                }
            }
            if ($data['type'] == 2) {
                $data['attribute'] = [];
            }
        }
        return $data;
    }


}
