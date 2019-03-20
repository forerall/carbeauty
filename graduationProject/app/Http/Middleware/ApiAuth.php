<?php

namespace App\Http\Middleware;

use App\Services\Output;
use App\User;
use Closure;
use Illuminate\Support\Facades\Auth;

class ApiAuth
{
    public function __construct()
    {
    }


    public function handle($request, Closure $next, $guard = null)
    {
        $token = $request->get('token', false);
        $user_id = $request->get('user_id', false);

        if (empty($token) || empty($user_id)) {
            return response(Output::Unauthorized('token和user_id不能为空'));
        }
        $user = Auth::guard($guard)->getProvider()->retrieveById($user_id);
        if (empty($user->token) || $user->token != $token) {
            return response(Output::Unauthorized());
        }
        Auth::guard($guard)->login($user);
        return $next($request);
    }
}
