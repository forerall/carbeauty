<?php
namespace App\Tools\Vendor;

class Curl
{
    protected $header = [];
    protected $cookie = null;
    //protected $userAgent = 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1';
    protected $userAgent = 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36';
    protected $cookieFile = null;

    public static function instance()
    {
        $instance = new self();
        $instance->cookieFile = public_path('cookie.txt');
        file_put_contents($instance->cookieFile, '');
        return $instance;
    }

    public function setHeader($header)
    {
        $this->header = $header;
        return $this;
    }

    public function get($url,$header = [])
    {
        $this->header = $header;
        $ch = curl_init();
        $this->commonOpt($ch);
        curl_setopt($ch, CURLOPT_URL, $url);
        $output = curl_exec($ch);
        curl_close($ch);
        return $this->output($output);
    }

    public function post($url, $params, $header = [])
    {
        $this->header = $header;
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_HTTPHEADER, $this->header);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);    // 要求结果为字符串且输出到屏幕上
        curl_setopt($ch, CURLOPT_HEADER, 0); // 不要http header 加快效率
        //设置请求头
        if (count($this->header) > 0) {
            curl_setopt($ch, CURLOPT_HTTPHEADER, $this->header);
        }
        if ($this->userAgent) {
            curl_setopt($ch, CURLOPT_USERAGENT, $this->userAgent);
        }
        curl_setopt($ch, CURLOPT_COOKIEFILE, $this->cookieFile);
        curl_setopt($ch, CURLOPT_COOKIEJAR, $this->cookieFile);
        curl_setopt($ch, CURLOPT_TIMEOUT, 15);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);    // https请求 不验证证书和hosts
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
        curl_setopt($ch, CURLOPT_URL, $url);

        curl_setopt($ch, CURLOPT_POST, 1);    // post 提交方式
        curl_setopt($ch, CURLOPT_POSTFIELDS, $params);
        $output = curl_exec($ch);
        return $output;
        curl_close($ch);
        return $this->output($output);
    }

    public function delete($url)
    {
        $ch = curl_init();
        $this->commonOpt($ch);
        curl_setopt($ch, CURLOPT_URL, $url);

        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "DELETE");
        $output = curl_exec($ch);
        curl_close($ch);
        return $this->output($output);
    }

    protected function output($output)
    {
        return [
            'header' => '',
            'body' => $output,
        ];
        list($header, $body) = explode("\r\n\r\n", $output, 2);
        return [
            'header' => $header,
            'body' => $body,
        ];
    }
    protected function commonOpt($ch)
    {
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);    // 要求结果为字符串且输出到屏幕上
        curl_setopt($ch, CURLOPT_HEADER, 0); // 不要http header 加快效率
        //设置请求头
        if (count($this->header) > 0) {
            curl_setopt($ch, CURLOPT_HTTPHEADER, $this->header);
        }
        if ($this->userAgent) {
            curl_setopt($ch, CURLOPT_USERAGENT, $this->userAgent);
        }
        curl_setopt($ch, CURLOPT_COOKIEFILE, $this->cookieFile);
        curl_setopt($ch, CURLOPT_COOKIEJAR, $this->cookieFile);
        curl_setopt($ch, CURLOPT_TIMEOUT, 15);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);    // https请求 不验证证书和hosts
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
    }
}