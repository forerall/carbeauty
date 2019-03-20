<?php
namespace App\Tools\Html\Control;

use App\Tools\Html\Common;

/**
 * Created by PhpStorm.
 * User: ygy
 * Date: 2018/5/30
 * Time: 15:48
 */
class BaseControl
{
    protected $id;//控件序号
    protected $key;
    protected $name;
    protected $default;
    protected $attribute;
    protected $style;

    public function getId()
    {
        return $this->key . $this->id;
    }

    public function setId($id)
    {
        $this->id = $id;
    }

    /**
     * BaseControl constructor.
     * @param $key  字段key
     * @param $name 字段名
     * @param $default  默认值
     * @param array $attribute 附加属性
     * @param string $style 模板风格
     */
    public function __construct($key, $name, $default, $attribute = [], $style = '')
    {
        $this->key = $key;
        $this->name = $name;
        $this->default = $default;
        $this->attribute = $attribute;
        $this->style = $style;
        $this->checkAttribute();
    }

    public function getEditHtml()
    {
        $className = $this->getClassName();
        $file = $className . DIRECTORY_SEPARATOR . 'Tpl' . DIRECTORY_SEPARATOR . $this->style . lcfirst($className) . '.blade.php';
        $tpl = Common::getControlTpl($file);
        return $this->parseEdit($tpl);
    }

    public function getConfigJs()
    {

    }


    public function getClassName()
    {
        return trim(strrchr(get_class($this), '\\'), '\\');
    }

    protected function checkAttribute()
    {

    }

    protected function parseEdit($tpl)
    {
        return str_replace([
            '__Id__',
            '__Key__',
            '__FieldName__',
            '__Default__',
        ], [
            $this->getId(),
            $this->key,
            $this->name,
            $this->default,
        ], $tpl);
    }
}