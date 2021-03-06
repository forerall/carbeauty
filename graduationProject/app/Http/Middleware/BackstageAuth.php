<?php

namespace App\Http\Middleware;

use Closure;
use App\Service\MenuService;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Auth;

class BackstageAuth
{

    public function __construct(){
    }

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {
        if(!Auth::guard($guard)->check()){
            return redirect('/backstage/login');
        }
        View::share('admin', Auth::guard($guard)->user());
        return $next($request);
    }
}
