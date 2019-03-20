<?php

namespace App\Tools\Wechat\Event;


class WxSafe{
    //消息推送验证
    public static function checkSignature($params = array(),$signature,$token){
        if(is_array($params)&&!empty($params)&&$signature&&$token) {
            $params[] = $token;
            sort($params, SORT_STRING);
            $tmpStr = implode( $params );
            $tmpStr = sha1( $tmpStr );
            if($tmpStr == $signature){
                return true;
            }
        }
        return false;
    }
}