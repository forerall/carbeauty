<?php

namespace App\Http\Middleware;

use App\Tools\Wechat\Weixin\WTool;
use App\User;
use Closure;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Auth;

class WechatLogin
{

    public function __construct()
    {
    }

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \Closure $next
     * @param  string|null $guard
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {
        if (!Auth::guard($guard)->check()) {
            //微信端,微信端app模式，不是测试模式下
            if (strpos(Input::server('HTTP_USER_AGENT'), 'MicroMessenger') !== false || (config('app.appmode') == 'wechat' && !config('app.testenv'))) {
                $wx = new WTool();
                $user = $wx->getUserInfo(2);
                if ($user && isset($user['openid'])) {
                    $u = User::where('openid', $user['openid'])->first();
                    if (is_null($u)) {
                        $recommend_user_id = $request->get('uid', 0);
                        $u = User::create([
                            'nickname' => $user['nickname'],
                            'avatar' => $user['headimgurl'],
                            'openid' => $user['openid'],
                            'source' => 4,//微信
                            //'phone' => '',
                            //'email' => '',
                            'name' => $user['nickname'],
                            'password' => '',
                            'recommend_user_id' => $recommend_user_id,
                        ]);
                    }else{
                        $u->nickname = $user['nickname'];
                        $u->avatar = $user['headimgurl'];
                        $u->save();
                    }
                    if ($u && $u->id) {

                        Auth::guard($guard)->loginUsingId($u->id);
                    }
                }
            } else {
                if (config('app.testenv')) {
                    $u = User::first();
                    Auth::guard($guard)->loginUsingId($u->id);
                }else{
                    return "登录失败";
                }
            }
        }
        if(Auth::user()->state==1){
            exit('已禁用！');
        }
        //所有登陆页面共享$user
        if (Auth::guard($guard)->check()) {
            View::share('user', Auth::user());
        }
        return $next($request);
    }
}
