<?php

namespace App\Http\Controllers\Api;

use App\Models\UserBalanceLog;
use App\Models\Withdraw;
use App\Services\Output;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class BalanceController extends Controller
{
    public function index(Request $request)
    {
        $user_id = Auth::id();
        $list = UserBalanceLog::where('user_id', $user_id)
            ->orderBy('id', 'desc')
            ->paginate(15);
        foreach ($list as $item) {
            if ($item->type == 6 && $item->detail) {
                try {
                    $d = json_decode($item->detail, true);
                    dd($d);
                    $d['avatar'] = $d['avatar'] ? asset($d['avatar']) : asset('/images/avatar.png');
                    $item->detail = json_encode($d);
                } catch (\Exception $e) {
                    throw $e;
                }
            }
        }
        $list->appends($request->except('page', 'per_page'));
        return Output::Success()
            ->with('list', $list);
    }

    public function balanceLogDetail(Request $request)
    {
        $log_id = $request->get('log_id');
        $user_id = Auth::id();

        $log = UserBalanceLog::where('user_id', $user_id)->findOrFail($log_id);
        if ($log->type == 2) {
            $log->withdraw = Withdraw::where('user_balance_log_id', $log_id)->first();
        }
        return Output::Success()
            ->with('log', $log);
    }
}
