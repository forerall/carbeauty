<?php

namespace App\Http\Middleware;

use App\Services\Output;
use App\User;
use Closure;
use Illuminate\Support\Facades\Auth;

class ApiAuthSometime
{
    public function __construct()
    {
    }


    public function handle($request, Closure $next, $guard = null)
    {
        $token = $request->get('token', false);
        $user_id = $request->get('user_id', false);
        if ($token && $user_id) {
            $user = Auth::guard($guard)->getProvider()->retrieveById($user_id);
            if (empty($user->token) || $user->token != $token) {
                return response(Output::Unauthorized());
            }
            Auth::guard($guard)->login($user);
        }
        return $next($request);
    }
}
