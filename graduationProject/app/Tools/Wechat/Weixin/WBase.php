<?php
/**
 * Created by PhpStorm.
 * User: arts-mgcx
 * Date: 2016/12/26
 * Time: 17:05
 */

namespace App\Tools\Wechat\Weixin;

use Illuminate\Support\Facades\Cache;

class WBase
{
    protected $appId;
    protected $appSecret;
    protected $access_token;
    protected $js_api_info;

    protected $WxAccessTokenCacheKey;
    protected $WxJsApiTokenCacheKey;

    protected $expireSub = 300;//缓存时间缩短5分钟

    public function __construct($appId = null, $appSecret = null)
    {
        if ($appId) {
            $this->appId = $appId;
        }
        if ($appSecret) {
            $this->appSecret = $appSecret;
        }
        //缓存键添加appid
        $this->WxAccessTokenCacheKey = 'WxAccessToken_' . $this->appId;
        $this->WxJsApiTokenCacheKey = 'WxJsApiToken_' . $this->appId;
        //读取缓存
        $this->access_token = Cache::get($this->WxAccessTokenCacheKey);
        $this->js_api_info = Cache::get($this->WxJsApiTokenCacheKey);
    }

    protected function getToken()
    {
        if (empty($this->access_token) || $this->access_token['expire'] <= time()) {
            $url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid={$this->appId}&secret={$this->appSecret}";
            $tokenResult = $this->curlGet($url);
            if (isset($tokenResult['errcode'])) {
                throw new \Exception($tokenResult['errmsg']);
            }
            $this->access_token['access_token'] = $tokenResult['access_token'];
            $this->access_token['expire'] = time() + $tokenResult['expires_in'] - $this->expireSub;
            //缓存
            Cache::forever($this->WxAccessTokenCacheKey, $this->access_token);
        }
        return $this->access_token['access_token'];
    }

    protected function getJsToken()
    {
        if (empty($this->js_api_info) || $this->js_api_info['expire'] <= time()) {
            $access_token = $this->getToken();
            $url = "https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token={$access_token}&type=jsapi";
            $tokenResult = $this->curlGet($url);
            if (isset($tokenResult['errcode'])) {
                throw new \Exception($tokenResult['errmsg']);
            }
            $this->js_api_info['ticket'] = $tokenResult['ticket'];
            $this->js_api_info['expire'] = time() + $tokenResult['expires_in'] - $this->expireSub;
            //缓存
            Cache::forever($this->WxJsApiTokenCacheKey, $this->js_api_info);
        }
        return $this->js_api_info['ticket'];
    }

    /**
     * 获取自定义菜单Json
     * @return mixed
     * @throws \Exception
     */
    protected function getMenu()
    {
        $url = "https://api.weixin.qq.com/cgi-bin/menu/get?access_token={$this->getToken()}";
        return $this->curlGet($url);
    }

    protected function getRandChar($length)
    {
        $str = '';
        $strPol = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz";
        $max = strlen($strPol) - 1;
        for ($i = 0; $i < $length; $i++) {
            $str .= $strPol[rand(0, $max)];//rand($min,$max)生成介于min和max两个数之间的一个随机整数
        }
        return $str;
    }

    protected function curlGet($url)
    {
        //echo 'curl:'.$url.'<br>';
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);    // 要求结果为字符串且输出到屏幕上
        curl_setopt($ch, CURLOPT_HEADER, 0); // 不要http header 加快效率
        //curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)');
        curl_setopt($ch, CURLOPT_TIMEOUT, 15);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);    // https请求 不验证证书和hosts
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
        $output = curl_exec($ch);
        curl_close($ch);
        return json_decode($output, true);
    }

    protected function curlPost($url, $params = '')
    {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);    // 要求结果为字符串且输出到屏幕上
        curl_setopt($ch, CURLOPT_HEADER, 0); // 不要http header 加快效率
        //curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)');
        curl_setopt($ch, CURLOPT_TIMEOUT, 15);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
        curl_setopt($ch, CURLOPT_POST, 1);    // post 提交方式
        curl_setopt($ch, CURLOPT_POSTFIELDS, $params);
        $output = curl_exec($ch);
        curl_close($ch);
        return json_decode($output, true);
    }
}