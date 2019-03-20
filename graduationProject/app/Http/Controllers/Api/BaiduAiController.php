<?php
namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Tasks\YunFile;
use App\Tools\Vendor\Curl;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redis;

class BaiduAiController extends Controller
{
    protected $apiList = [
        0 => [
            'client_id' => '6f1ImKpoN0pnuksahrfDaRW4',
            'client_secret' => 'Wgou1uSCfzG7G0MsZU9UT3wa20s57rft',
            'api' => 'https://aip.baidubce.com/rest/2.0/ocr/v1/general_basic?access_token=',
        ],
        1 => [
            'client_id' => '6f1ImKpoN0pnuksahrfDaRW4',
            'client_secret' => 'Wgou1uSCfzG7G0MsZU9UT3wa20s57rft',
            'api' => 'https://aip.baidubce.com/rest/2.0/ocr/v1/general?access_token=',
        ]
    ];

    protected function _requestPost($url = '', $param = '', $header = false)
    {
        if (empty($url) || empty($param)) {
            return false;
        }

        $postUrl = $url;
        $curlPost = $param;
        $curl = curl_init();//初始化curl
        if ($header)
            curl_setopt($curl, CURLOPT_HTTPHEADER, $header);
        curl_setopt($curl, CURLOPT_URL, $postUrl);//抓取指定网页
        curl_setopt($curl, CURLOPT_HEADER, 0);//设置header
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);//要求结果为字符串且输出到屏幕上
        curl_setopt($curl, CURLOPT_POST, 1);//post提交方式
        curl_setopt($curl, CURLOPT_POSTFIELDS, $curlPost);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);    // https请求 不验证证书和hosts
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
        $data = curl_exec($curl);//运行curl
        curl_close($curl);

        return $data;
    }

    protected function _checkCode($code)
    {
        if (strlen($code) != 4) {
            return false;
        }
        $trans = [
            'o' => 0,
            'O' => 0,
            'l' => 1,
            's' => 5,
            'S' => 5,
            'S' => 5,
            'q' => 9,
            'G' => 9,
            'g' => 9,
            'A' => 4,
        ];
        for ($i = 0; $i < 4; $i++) {
            $c = $code[$i];
            if (isset($trans[$c])) {
                $code[$i] = $trans[$c];
            }
            if (!in_array($c, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9])) {
                return false;
            }
        }
        return $code;
    }

    public function codeRead($image_data)
    {


        $key = 'charReadCount_' . date('Ymd',time());
        $count = Redis::get($key);
        if (is_null($count)) {
            Redis::setnx($key, 0);
            $count = 0;
        }
        $apiIndex = $count;

        $apiConfig = isset($this->apiList[$apiIndex]) ? $this->apiList[$apiIndex] : null;
        if (is_null($apiConfig)) {
            return -2;
        }

        $url = 'https://aip.baidubce.com/oauth/2.0/token';
        $post_data['grant_type'] = 'client_credentials';
        $post_data['client_id'] = $apiConfig['client_id'];//'你的 Api Key';
        $post_data['client_secret'] = $apiConfig['client_secret'];//'你的 Secret Key';
        $o = "";
        foreach ($post_data as $k => $v) {
            $o .= "$k=" . urlencode($v) . "&";
        }
        $post_data = substr($o, 0, -1);
        $res = $this->_requestPost($url, $post_data);
        $res = json_decode($res);

        $url = $apiConfig['url']. $res->access_token;
        $params = [
            'image' => $image_data,
            'language_type' => 'CHN_ENG',
        ];
        $params = http_build_query($params);
        $res = $this->_requestPost($url, $params, [
            'Content-Type: application/json;charset=UTF-8'
        ]);

        $codeResult = json_decode($res, true);
        $code = '';
        if (isset($codeResult['words_result']) && count($codeResult['words_result']) > 0) {
            $code = $codeResult['words_result'][0]['words'];
        }else{
            Redis::incr($key);
        }
        return $this->_checkCode($code);
    }

}
