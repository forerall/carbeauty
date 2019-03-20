<?php

namespace App\Tools\Html\Control\UploadImage;

use App\Tools\Html\Control\BaseControl;

/**
 * Created by PhpStorm.
 * User: arts-mgcx
 * Date: 2017/2/4
 * Time: 9:40
 */
class UploadImage extends BaseControl
{

    protected function checkAttribute()
    {
        parent::checkAttribute(); // TODO: Change the autogenerated stub
        if (!isset($this->attribute['category'])) {
            throw new \Exception('UploadImage attribute category is empty');
        }
    }

    protected function parseEdit($tpl)
    {
        return parent::parseEdit($tpl); // TODO: Change the autogenerated stub
    }

    public function getConfigJs()
    {
        return 'uploadImageBox($(\'#' . $this->getId() . '\'),\'/upload?category=' . $this->attribute['category'] . '\',\'' . $this->default . '\',80);';
    }
}