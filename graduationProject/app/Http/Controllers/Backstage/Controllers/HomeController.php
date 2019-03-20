<?php

namespace App\Http\Controllers\Backstage\Controllers;

use App\Http\Controllers\Store\Models\Goods;
use App\Services\SettingService;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class HomeController extends Controller
{
    public function dashboard(Request $request)
    {
        return view('backstage.home.dashboard');
    }

    public function setting(Request $request)
    {
        if ($request->isMethod('POST')) {
            $data = $request->all();
            return SettingService::save($data);
        } else {
            return view('backstage.home.setting')
                ->with('settingGroups', SettingService::settingPage());
        }
    }
}
