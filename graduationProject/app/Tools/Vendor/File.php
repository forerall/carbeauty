<?php
/**
 * Created by PhpStorm.
 * User: ygy
 * Date: 2018/4/19
 * Time: 14:41
 */

namespace App\Tools\Vendor;


class File
{
    public static function checkPathCharset($path)
    {
        /*
        简体中文windows 默认字符集是 gbk
        繁体中文windows 默认字符集是 big5
        简体中文linux 默认字符集是 utf-8
         */
        strpos(PHP_OS, 'WIN') !== false && $path = iconv('utf-8', 'gbk', $path);
        return $path;
    }

    public static function makeDir($path)
    {
        $path = self::checkPathCharset($path);
        if (is_dir($path)) {
            return true;
        }
        return mkdir($path, 0777, true);
    }

    public static function filePutContents($filename, $content)
    {
        $filename = self::checkPathCharset($filename);
        return file_put_contents($filename, $content);
    }
}