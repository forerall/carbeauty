<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Store\Models\FxChain;
use App\Models\Feedback;
use App\Services\BalanceService;
use App\Services\Output;
use App\Services\SmsService;
use App\Tool\Vendor\Validate;
use App\Tools\Vendor\Easemob;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Log;

class LoginController extends Controller
{
    protected $smsService;

    public function __construct(SmsService $smsService)
    {
        $this->smsService = $smsService;
    }

    public function sendRegisterCode(Request $request)
    {
        return $this->smsService->sendRegisterCode($request->get('phone'));
    }

    public function sendForgetPasswordCode(Request $request)
    {
        return $this->smsService->sendForgetPasswordCode($request->get('phone'));
    }

    public function sendForgetPayPasswordCode(Request $request)
    {
        return $this->smsService->sendForgetPayPasswordCode($request->get('phone'));
    }

    public function sendChangePhoneCode(Request $request)
    {
        return $this->smsService->sendChangePhoneCode($request->get('phone'));
    }

    //注册
    public function register(Request $request)
    {
        $this->validate($request, [
            'phone' => 'required|phone|unique:users',
            //'nickname' => 'required',
            'password' => 'required',
            'code' => 'required',
            //'sex' => 'required|in:0,1,2',
        ], [
            'phone.required' => '手机号不能为空',
            'phone.phone' => '手机号不正确',
            'phone.unique' => '手机号已注册',
            'nickname.required' => '昵称不能为空',
            'password.required' => '密码不能为空',
            'code.required' => '验证码不能为空',
            'sex.required' => '性别不能为空',
            'sex.in' => '性别不正确',
        ]);
//        $check = $this->smsService->checkRegisterCode($request->get('phone'), $request->get('code'));
//        if ($check['errCode'] > 0) {
//            return $check;
//        }
        $user = new User();
        $data = $request->only('phone', 'nickname');
        $user->fill($data);
        $user->password = bcrypt($request->get('password'));
        //分销关系
//        $recom_id = $request->get('recom_id') - 1000;
//        if ($recom_id > 0) {
//            $recom = User::find($recom_id);
//            if ($recom) {
//                $ids = explode(',', $recom->fx_chain);
//                $ids[] = $recom->id;
//                $user->fx_chain = ',' . implode(',', array_filter($ids)) . ',';
//            }
//        }


//        if ($recom_id > 0) {
//            $recom = User::find($recom_id);
//            if ($recom) {
//                $user->recom_id = $recom->id;
//                if (User::find($recom->recom_id)) {
//                    $user->recom_id2 = $recom->recom_id;
//                }
//                if (User::find($recom->recom_id2)) {
//                    $user->recom_id3 = $recom->recom_id2;
//                }
//            }
//        }

        $this->loginUser($user);
        return Output::Success('注册成功')
            ->with('user', $user);
    }

    //重置密码
    public function resetPassword(Request $request)
    {
        $phone = $request->get('phone');
        $code = $request->get('code');
        $password = $request->get('password');
        if (!Validate::password($password)) {
            return Output::Fail('密码不能为空');
        }
        $user = User::where('phone', $phone)->first();
        if (is_null($user)) {
            return Output::Fail('用户不存在');
        }
        $check = $this->smsService->checkForgetPasswordCode($phone, $code);
        if ($check['errCode'] > 0) {
            return $check;
        }
        $user->password = bcrypt($password);
        $result = $user->save();
        return Output::Result($result, '重置成功', '重置失败');

    }

    //修改密码
    public function modifyPassword(Request $request)
    {
        $password = $request->get('password');
        $passwordNew = $request->get('passwordNew');
        if (!Validate::password($passwordNew)) {
            return Output::Fail('密码不能为空');
        }
        $user = Auth::user();
        if (is_null($user)) {
            return Output::Fail('用户不存在');
        }
        if (!app('hash')->check($password, $user->password)) {
            //return Output::Fail('密码错误');
        }
        $user->password = bcrypt($passwordNew);
        $result = $user->save();
        return Output::Result($result, '修改成功', '修改失败');

    }

    //密码登录
    public function loginByPassword(Request $request)
    {
        $this->validate($request, [
            'phone' => 'required',
            'password' => 'required'
        ], [
            'phone.required' => '手机号不能为空',
            'password.required' => '密码不能为空',
        ]);

        $phone = $request->get('phone');
        $password = $request->get('password');

        $user = User::firstOrNew(['phone' => $phone]);
        if (!app('hash')->check($password, $user->password)) {
            return Output::Fail('用户名或密码错误');
        }
        $this->loginUser($user);
        return Output::Success('登录成功')
            ->with('user', $user);
    }

    //验证码登录
    public function loginByCode(Request $request)
    {
        $this->validate($request, [
            'phone' => 'required',
            'code' => 'required'
        ], [
            'phone.required' => '手机号不能为空',
            'code.required' => '验证码不能为空',
        ]);

        $phone = $request->get('phone');
        $code = $request->get('code');

        if (!config('app.testenv')) {
            $check = $this->smsService->checkLoginCode($phone, $code);
            if ($check['errCode'] > 0) {
                return $check;
            }
        }
        $user = User::firstOrNew(['phone' => $phone]);
        if (!$user->exists) {
            $user->nickname = $phone;
        }
        //邀请人
        $recom_code = intval($request->get('code')) - 1000;
        if ($recom_code > 0) {
            $u = User::find($recom_code);
            if ($u) {
                $user->recom_id = $u->id;
                if ($u->recom_id) {
                    $user->recom_id2 = $u->recom_id;
                }
            }
        }
        $this->loginUser($user);
        return Output::Success('登录成功', $user);
    }

    //更换手机号
    public function changePhone(Request $request)
    {
        $phone = $request->get('phone');
        $code = $request->get('code');
        $password = $request->get('password');

        $exist = User::where('phone', $phone)->count();
        if ($exist > 0) {
            return Output::Fail('手机号已存在');
        }
        $user = Auth::user();
        if (is_null($user)) {
            return Output::Unauthorized();
        }
        $check = $this->smsService->checkChangePhoneCode($phone, $code);
        if ($check['errCode'] > 0) {
            return $check;
        }
        if (!app('hash')->check($password, $user->password)) {
            return Output::Fail('密码错误');
        }
        $user->phone = $phone;
        $result = $user->save();
        return Output::Result($result, '更换成功', '更换失败', $user);

    }


    //注册协议
    public function regProtocol()
    {
        return view('regProtocol');
    }

    //注册协议
    public function sjProtocol()
    {
        return view('sjProtocol');
    }

    //注册协议
    public function spProtocol()
    {
        return view('spProtocol');
    }

    //关于我们
    public function about()
    {
        return view('about');
    }

    //登陆用户
    protected function loginUser($user)
    {
        $token = md5($user->phone . date('YmdHis') . mt_rand(100000, 999999));
        $user->token = $token;
        $register = false;
        if (!$user->exists) {
            $register = true;
        }
        $user->save();
        if ($register) {

        }
//        $chain = FxChain::firstOrNew(['user_id' => $user->id]);
//        if ($user->recom_id > 0) {
//            $rec = FxChain::where('user_id', $user->recom_id)->first();
//            if ($rec) {
//                $chain->l3_id = $rec->l3_id;
//                $chain->l4_id = $rec->l4_id;
//                $chain->l5_id = $rec->l5_id;
//                $chain->l6_id = $rec->l6_id;
//            }
//        }
//        $chain->save();
        $user->makeVisible('balance');
    }

    public function versionCheck(Request $request)
    {
        $version = $request->get('version');
        $v = '130';
        $version = str_replace('.', '', $version);
        //Log::info($version);
        if ($version < $v) {
            return Output::Success('检测到有新版本，请到应用商店下载更新！');
        }
        return Output::Success('');

    }
}
