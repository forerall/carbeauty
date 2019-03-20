<?php

namespace App\Http\Controllers;


use App\Jobs\ProcessTest;
use App\Services\Output;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redis;

class AppController extends Controller
{
    public function register(Request $request)
    {
//        var_dump($request->method());
        if($request->isMethod('post')){
            $this->validate($request, [
                'name' => 'required',
                'store_name' => 'required',
//            'idNumber' => 'required|size:18',
                'phone' => 'required|size:11',

            ], [
                'name.required' => '姓名不能为空',
                'store_name.required' => '店名不能为空',
//            'idNumber.required' => '身份证号码不能为空',
//            'idNumber.size' => '身份证号码为18位',
                'phone.required' => '手机号不能为空',
                'phone.required' => '手机号为11位',
            ]);
            $item = new \App\User();
            $data = $request->only('avatar', 'name','store_name','sex','address', 'phone');
//        if(array_key_exists('balance',$data)){
//            $data['balance'] = intval($data['balance']*100);
//        }
            $data = array_filter($data, function ($v) {
                return !empty($v);
            });
            $item->fill($data);
            $result = $item->save();


            return Output::Result($result,'注册成功','注册失败');
        }

        return view('app.register');
    }

    public function showlist(Request $request)
    {
        return view('app.list');

    }

    public function content(Request $request)
    {
        return view('app.content');

    }


    public function qrcode(Request $request)
    {
        return view('app.qrcode');

    }



    public function sign(Request $request)
    {
        return view('app.sign');

    }
}
