<?php
namespace App\Tools\Html;

use App\Tools\Html\Control\Address\Address;
use App\Tools\Html\Control\ControlConfig;
use App\Tools\Html\Control\Date\Date;
use App\Tools\Html\Control\DateLong\DateLong;
use App\Tools\Html\Control\Editor\Editor;
use App\Tools\Html\Control\Input\Input;
use App\Tools\Html\Control\MultiSelect\MultiSelect;
use App\Tools\Html\Control\MultiUploadImage\MultiUploadImage;
use App\Tools\Html\Control\Select\Select;
use App\Tools\Html\Control\SelectSearch\SelectSearch;
use App\Tools\Html\Control\TextArea\TextArea;
use App\Tools\Html\Control\UploadBannerImage\UploadBannerImage;
use App\Tools\Html\Control\UploadFile\UploadFile;
use App\Tools\Html\Control\UploadImage\UploadImage;
use App\Tools\Html\Control\UploadImageWithCrop\UploadImageWithCrop;


/**
 * Created by PhpStorm.
 * User: arts-mgcx
 * Date: 2017/1/24
 * Time: 9:47
 */
class Control
{
    protected static $controls = [];
    protected static $controlCount = 0;

    protected static function addControl($control)
    {
        self::$controls[] = $control;
        self::$controlCount++;
        $control->setId(self::$controlCount);
        return $control;
    }

    public static function Input($key, $name, $default = '', $attribute = [], $style = '')
    {
        $control = new Input($key, $name, $default, $attribute, $style);
        return self::addControl($control)->getEditHtml();
    }

    public static function TextArea($key, $name, $default = '', $attribute = [], $style = '')
    {
        $control = new TextArea($key, $name, $default, $attribute, $style);
        return self::addControl($control)->getEditHtml();
    }

    public static function Editor($key, $name, $default = '', $attribute = [], $style = '')
    {
        $control = new Editor($key, $name, $default, $attribute, $style);
        return self::addControl($control)->getEditHtml();
    }

    public static function UploadFile($key, $name, $default = '', $attribute = [], $style = '')
    {
        $control = new UploadFile($key, $name, $default, $attribute, $style);
        return self::addControl($control)->getEditHtml();
    }

    public static function UploadImage($key, $name, $default = '', $attribute = [], $style = '')
    {
        $control = new UploadImage($key, $name, $default, $attribute, $style);
        return self::addControl($control)->getEditHtml();
    }

    public static function UploadImageWithCrop($key, $name, $default = '', $attribute = [], $style = '')
    {
        $control = new UploadImageWithCrop($key, $name, $default, $attribute, $style);
        return self::addControl($control)->getEditHtml();
    }

    public static function UploadBannerImage($key, $name, $default = '', $attribute = [], $style = '')
    {
        $control = new UploadBannerImage($key, $name, $default, $attribute, $style);
        return self::addControl($control)->getEditHtml();
    }

    public static function MultiUploadImage($key, $name, $default = '', $attribute = [], $style = '')
    {
        $control = new MultiUploadImage($key, $name, $default, $attribute, $style);
        return self::addControl($control)->getEditHtml();
    }


    public static function Date($key, $name, $default = '', $attribute = [], $style = '')
    {
        $control = new Date($key, $name, $default, $attribute, $style);
        return self::addControl($control)->getEditHtml();
    }

    public static function DateLong($key, $name, $default = '', $attribute = [], $style = '')
    {
        $control = new DateLong($key, $name, $default, $attribute, $style);
        return self::addControl($control)->getEditHtml();
    }

    public static function Address($key, $name, $default = '', $attribute = [], $style = '')
    {
        $control = new Address($key, $name, $default, $attribute, $style);
        return self::addControl($control)->getEditHtml();
    }

    public static function Select($key, $name, $default = '', $attribute = [], $style = '')
    {
        $control = new Select($key, $name, $default, $attribute, $style);
        return self::addControl($control)->getEditHtml();
    }

    public static function SelectSearch($key, $name, $default = '', $attribute = [], $style = '')
    {
        $control = new SelectSearch($key, $name, $default, $attribute, $style);
        return self::addControl($control)->getEditHtml();
    }

    public static function MultiSelect($key, $name, $default = '', $attribute = [], $style = '')
    {
        $control = new MultiSelect($key, $name, $default, $attribute, $style);
        return self::addControl($control)->getEditHtml();
    }


    public static function HtmlControlDependency()
    {
        $css = [];
        $js = [];
        $config = [];
        foreach (self::$controls as $control) {
            $css[] = ControlConfig::getCss($control->getClassName());
            $js[] = ControlConfig::getJs($control->getClassName());
            $config[] = $control->getConfigJs();
        }
        return "\r\n" .
        implode("\r\n", $css) .
        implode("\r\n", $js) .
        "<script>\r\n" .
        "$(function () {" .
        implode("\r\n", $config) .
        "});\r\n" .
        "</script>\r\n";
    }
}