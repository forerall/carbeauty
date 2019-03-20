<?php
namespace App\Tools\Wechat\XCX;

class Wxxcx
{

    private $appId = 'wx62ad74973e73197e';
    private $secret = '882ad7ab81f5719ab1055112dc4f20a1';
    private $codeLoginUrl = 'https://api.weixin.qq.com/sns/jscode2session?appid=%s&secret=%s&js_code=%s&grant_type=authorization_code';

    function __construct()
    {
    }


    public function getLoginInfo($code)
    {
        $codeLoginUrl = sprintf($this->codeLoginUrl, $this->appId, $this->secret, $code);
        $userInfo = $this->httpRequest($codeLoginUrl);
        if (isset($userInfo['errcode'])) {
            throw new \Exception($userInfo['errcode'] . '.' . $userInfo['errmsg']);
        }
        //正常返回的JSON数据包
//        {
//            "openid": "OPENID",
//        "session_key": "SESSIONKEY",
//        }
//
//        //满足UnionID返回条件时，返回的JSON数据包
//        {
//            "openid": "OPENID",
//        "session_key": "SESSIONKEY",
//        "unionid": "UNIONID"
//        }
        return $userInfo;
    }

    public function getUserInfo($encryptedData, $iv, $sessionKey = null)
    {
        $pc = new WXBizDataCrypt($this->appId, $sessionKey);
        $decodeData = "";
        $errCode = $pc->decryptData($encryptedData, $iv, $decodeData);
        if ($errCode != 0) {
            throw new \Exception('encryptedData 解密失败');
        }
        return $decodeData;
    }

    private function httpRequest($url, $data = null)
    {
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
        if (!empty($data)) {
            curl_setopt($curl, CURLOPT_POST, 1);
            curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
        }
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        $output = curl_exec($curl);
        if ($output === FALSE) {
            return false;
        }
        curl_close($curl);
        return json_decode($output, JSON_UNESCAPED_UNICODE);
    }

}
