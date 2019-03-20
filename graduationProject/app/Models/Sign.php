<?php

namespace App\Models;

use App\Services\BalanceService;
use App\Services\Output;
use App\Services\SettingService;
use App\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

/**
 * App\Model\Article
 *
 * @mixin \Eloquent
 */
class Sign extends Model
{

    protected $table = 'z_sign';
    protected $guarded = [];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public static function addSign($user_id)
    {
        $day = intval(date('Ymd'));
        $sign = self::where('day', $day)
            ->where('user_id', $user_id)
            ->count();
        if ($sign > 0) {
            return Output::Fail('今日已签到');
        }
        $record = new self();
        $record->user_id = $user_id;
        $record->day = $day;
        $record->score = SettingService::get('signScore', 0);
        if (!$record->save()) {
            return Output::Fail('签到失败');
        }
        $sign = self::where('day', $day)
            ->where('user_id', $user_id)
            ->count();
        if ($sign > 0) {
            return Output::Fail('今日已签到');
        }
        try {
            DB::beginTransaction();
            $bs = new BalanceService();
            $bs->addScore($user_id, $record->score, BalanceService::SignScore, '签到获得积分');
            DB::commit();
            return Output::Success('签到成功')
                ->with('score', $record->score);
        } catch (\Exception $e) {
            DB::rollBack();
            Log::error($e);
            $record->delete();
        }
        return Output::Fail('签到失败');
    }

    public static function record($user_id, $count)
    {
        return self::where('user_id', $user_id)
            ->limit($count)
            ->orderBy('id', 'desc')
            ->get();
    }
}
