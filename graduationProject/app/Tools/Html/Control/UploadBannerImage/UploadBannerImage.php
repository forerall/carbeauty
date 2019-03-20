<?php

namespace App\Tools\Html\Control\UploadBannerImage;

use App\Tools\Html\Control\BaseControl;

/**
 * Created by PhpStorm.
 * User: arts-mgcx
 * Date: 2017/2/4
 * Time: 9:40
 */
class UploadBannerImage extends BaseControl
{
    protected function checkAttribute()
    {
        parent::checkAttribute(); // TODO: Change the autogenerated stub
        if (!isset($this->attribute['category'])) {
            throw new \Exception('UploadImage attribute category is empty');
        }
        if (!isset($this->attribute['jump_types']) || !is_array($this->attribute['jump_types'])) {
            throw new \Exception('UploadImage attribute jump_types is invalid');
        }
    }

    protected function parseEdit($tpl)
    {
        return str_replace([
            '__Id__',
            '__Key__',
            '__FieldName__',
        ], [
            $this->getId(),
            $this->key,
            $this->name,
        ], $tpl);
    }

    public function getConfigJs()
    {
        $jump_types = json_encode($this->attribute['jump_types']);
        $value = [];
        if ($this->default && is_array($this->default)) {
            $value = $this->default;
        }
        $value = json_encode($value);
        return "multiUploadBannerBox($('#{$this->getId()}'),'/upload?category={$this->attribute['category']}',JSON.parse('{$value}'),80,JSON.parse('{$jump_types}'));";

    }
}