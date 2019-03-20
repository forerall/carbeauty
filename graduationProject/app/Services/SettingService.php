<?php
/**
 * Created by PhpStorm.
 * User: ygy
 * Date: 2018/7/3
 * Time: 10:32
 */

namespace App\Services;

use App\Models\Setting;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Log;

/**
 * 后台配置
 * Class SettingService
 * @package App\Services
 */
class SettingService
{
    const MoneyType = 1;
    const StringType = 2;
    const IntType = 3;
    const FloatType = 4;
    const PercentageType = 5;//百分比，0-100

    protected static $setting = [
        [
            'group_name' => '常规设置',
            'group_key' => 'common',
            'items' => [
                [
                    'dataType' => self::IntType,
                    'defaultValue' => 10,
                    'name' => '签到积分',
                    'key' => 'signScore',
                ],
            ]
        ]

    ];

    protected static function dataValidate($value, $item)
    {
        switch ($item['dataType']) {
            case self::StringType:
                return strval($value);
            case self::IntType:
                return intval($value);
            case self::MoneyType:
                $value = max(0, $value);
                return number_format(intval(ceil($value * 100)) / 100, 2, '.', '');
            case self::PercentageType:
                $value = floatval($value);
                $value = max(0, $value);
                $value = min(100, $value);
                return $value;
        }
    }

    /**
     * 获取配置参数
     * @param bool $key
     * @param null $default
     * @param bool $fromCache
     * @return null
     */
    public static function get($key = false, $default = null, $fromCache = true)
    {
        if (!$fromCache) {
            Cache::forget('systemSetting');
        }
        $config = Cache::rememberForever('systemSetting', function () {
            return Setting::all()->keyBy('key');
        });
        if ($key) {
            $key = str_replace('.', '-', $key);
            return isset($config[$key]) ? $config[$key]->value : $default;
        }
        return $config;
    }

    /**
     * 获取配置页面数据，刷新缓存
     * @return array
     */
    public static function settingPage()
    {
        $kv = self::get(false, false, false);
        foreach (self::$setting as &$group) {
            foreach ($group['items'] as &$item) {
                $k = $group['group_key'] . '-' . $item['key'];
                $item['value'] = isset($kv[$k]) ? $kv[$k]->value : $item['defaultValue'];
            }
        }
        return self::$setting;
    }

    /**
     * 修改配置
     * @param $data
     * @return _Data
     */
    public static function save($data)
    {
        $insert = [];
        $time = Carbon::now();
        $update = false;
        $setting = self::settingPage();
        foreach ($setting as &$group) {
            foreach ($group['items'] as &$item) {
                $k = $group['group_key'] . '-' . $item['key'];
                if (isset($data[$k])) {
                    $v = self::dataValidate($data[$k], $item);
                    $update = true;
                } else {
                    $v = $item['value'];
                }
                $insert[] = [
                    'name' => $item['name'],
                    'key' => $k,
                    'value' => $v,
                    'created_at' => $time,
                    'updated_at' => $time,
                ];
            }
        }
        if ($update) {
            Setting::truncate();
            Setting::insert($insert);
            Cache::forget('systemSetting');
            return Output::Success('保存成功，已更新缓存');
        }
        return Output::Success('没有修改配置');
    }


}
