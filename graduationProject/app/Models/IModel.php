<?php

namespace App\Models;

use App\Services\Output;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

/**
 * App\Model\Article
 *
 * @mixin \Eloquent
 */
class IModel extends Model
{
    /**
     * 模型全部字段验证
     * @return array
     */
    protected static function getRule()
    {
        // 新增和修改的字段验证规则
        // 必填字段验证加bail|required_without:id，id不存在时才验证
        // 非必填字段加 sometimes 存在时验证
        return [[], []];
    }

    protected static function afterValidate($data)
    {
        return $data;
    }

    public static function validate($data, $id = null)
    {
        $_this = new static;//获取当前对象实例
        $rules = static::getRule();
        if ($data instanceof Request) {
            $data = $data->only(array_keys($rules[0]));
        }
        //加入主键，验证使用保存验证
        if (!is_null($id)) {
            $data[$_this->getKeyName()] = $id;
        }
        $validator = Validator::make($data, $rules[0], $rules[1]);
        $validator->validate();
        //清除主键，返回数据
        if (!is_null($id)) {
            unset($data[$_this->getKeyName()]);
        }
        return static::afterValidate($data);
    }

    /**
     * 添加数据
     * @param Request $request
     * @return mixed
     */
    public static function addModel(Request $request)
    {
        $data = static::validate($request);
        $item = new static();
        $item->fill($data);
        return Output::Result($item->save());
    }

    /**
     * 更新数据
     * @param Request $request
     * @param $id
     * @return mixed
     */
    public static function updateModel(Request $request, $id)
    {
        $data = static::validate($request, $id);
        $item = static::findOrFail($id);
        $item->fill($data);
        return Output::Result($item->save());
    }

}
