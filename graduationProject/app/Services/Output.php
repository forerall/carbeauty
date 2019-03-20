<?php
/**
 * Created by PhpStorm.
 * User: arts-mgcx
 * Date: 2016/10/24
 * Time: 11:47
 */
namespace App\Services;

use Illuminate\Contracts\Support\Arrayable;
use Illuminate\Support\Facades\Lang;

class _Data implements Arrayable
{
    private $data;
    private $errCode;
    private $errMsg;

    public function hasError()
    {
        return $this->errCode != 0;
    }

    public function getData()
    {
        return $this->data;
    }

    public function __construct($code = 0, $msg = '', $data = [])
    {
        $this->errCode = $code;
        $this->errMsg = $msg;
        $this->data = $data;
    }

    /**
     * 添加接口返回数据，方便扩展新字段
     * @param $key
     * @param $value
     * @return $this
     */
    public function with($key, $value)
    {
        $this->data[$key] = $value;
        return $this;
    }

    public function toArray()
    {
        $result = [
            'errCode' => $this->errCode,
            'errMsg' => $this->errMsg,
            'data' => $this->data,
        ];
        if (request('debug') == 1) {
            dd(json_decode(json_encode($result), true));
        }
        return $result;
    }

}

class Output
{
    public static $SUCCESS = 0;
    public static $ERROR = 1;
    public static $ParameterError = 2;
    public static $Unauthorized = 3;

    public static function Success($msg = '操作成功')
    {
        return new _Data(self::$SUCCESS, $msg);
    }

    public static function Fail($msg = '操作失败')
    {
        return new _Data(self::$ERROR, $msg);
    }

    public static function ParameterError($msg = '参数验证失败')
    {
        return new _Data(self::$ParameterError, $msg);
    }

    public static function Unauthorized($msg = '身份验证失败')
    {
        return new _Data(self::$Unauthorized, $msg);
    }

    public static function Result($result, $successMsg = '操作成功', $errorMsg = '操作失败')
    {
        if ($result) {
            return self::Success($successMsg);
        }
        return self::Fail($errorMsg);
    }

    public static function View($tpl)
    {
        if (self::isMobile()) {
            $tplArr = explode('.', $tpl);
            $tplArr[count($tplArr) - 1] = 'wap_' . $tplArr[count($tplArr) - 1];
            $tpl = implode('.', $tplArr);
        }
        return view($tpl);
    }

    protected function isMobile()
    {
        $useragent = isset($_SERVER['HTTP_USER_AGENT']) ? $_SERVER['HTTP_USER_AGENT'] : '';
        $useragent_commentsblock = preg_match('|\(.*?\)|', $useragent, $matches) > 0 ? $matches[0] : '';
        function CheckSubstrs($substrs, $text)
        {
            foreach ($substrs as $substr) {
                if (false !== strpos($text, $substr)) {
                    return true;
                } else {
                    return false;
                }
            }
        }

        $mobile_os_list = array('Google Wireless Transcoder', 'Windows CE', 'WindowsCE', 'Symbian', 'Android', 'armv6l', 'armv5', 'Mobile', 'CentOS', 'mowser', 'AvantGo', 'Opera Mobi', 'J2ME/MIDP', 'Smartphone', 'Go.Web', 'Palm', 'iPAQ');
        $mobile_token_list = array('Profile/MIDP', 'Configuration/CLDC-', '160×160', '176×220', '240×240', '240×320', '320×240', 'UP.Browser', 'UP.Link', 'SymbianOS', 'PalmOS', 'PocketPC', 'SonyEricsson', 'Nokia', 'BlackBerry', 'Vodafone', 'BenQ', 'Novarra-Vision', 'Iris', 'NetFront', 'HTC_', 'Xda_', 'SAMSUNG-SGH', 'Wapaka', 'DoCoMo', 'iPhone', 'iPod');
        $found_mobile = CheckSubstrs($mobile_os_list, $useragent_commentsblock) || CheckSubstrs($mobile_token_list, $useragent);

        if ($found_mobile) {
            return true;
        } else {
            return false;
        }
    }
}

//$return = Output2::Success('保存成功')->with('list','123')->with('newList','1234');