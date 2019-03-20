<?php
/**
 * Created by PhpStorm.
 * User: ygy
 * Date: 2018/8/23
 * Time: 16:41
 */

namespace App\Services;


use App\Http\Controllers\Store\Models\Coupon;
use App\Http\Controllers\Store\Models\CouponConfig;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\ValidationException;

class TicketService
{
    public static function createTicket(Request $request)
    {
        $rules = [
            //'image' => 'required',
            'money' => 'required|numeric|min:0.01',
            //'money_text' => 'required',
            // 'color' => 'required',
            'expire' => 'required',

            'detail' => 'required',
            'total' => 'required|max:5000',
        ];
        if ($request->get('type') == 2) {
            $rules['score'] = 'required|min:1';
        }
        $validator = Validator::make($request->all(), $rules, [
            //'image.required' => '背景图不能为空',
            'money.required' => '金额不能为空',
            'money.numeric' => '金额格式不对',
            'money.min' => '金额不能小于:min元',
            'score.required' => '积分不能为空',
            'score.min' => '积分不能小于:min',
            'color.required' => '文字颜色不能为空',
            'expire.required' => '有效期不能为空',
            'detail.required' => '说明不能为空',
            'total.required' => '总数量不能为空',
            'total.max' => '总数量不能超过5000张',
        ]);
        $validator->after(function ($validator) use ($request) {
            if (false) {
                //$validator->errors()->add('field', 'Something is wrong with this field!');
            }
        });
        if ($validator->fails()) {
            throw new ValidationException($validator);
        }
        $store_id = 1;
        try {
            DB::beginTransaction();
            $data = $request->only(array_keys($rules));
            $ticketConfig = new CouponConfig($data);
            $ticketConfig->state = 1;
            $ticketConfig->used = 0;
            $ticketConfig->store_id = $store_id;
            $ticketConfig->max_num = 1;
            $ticketConfig->type = $request->get('type', 0);
            $ticketConfig->save();
            $tickets = [];
            for ($i = 0; $i < $ticketConfig->total; $i++) {
                $tickets[] = [
                    'code' => substr($ticketConfig->id . md5(uniqid(microtime(true), true)), 0, 16),
                    'created_at' => Carbon::now(),
                    'updated_at' => Carbon::now(),
                    'user_id' => 0,
                    'coupon_config_id' => $ticketConfig->id,
                    'store_id' => $store_id,
                    'from_user_id' => 0,
                    'state' => 1,
                ];
            }
            Coupon::insert($tickets);
            DB::commit();
            return Output::Success('创建成功');
        } catch (\Exception $e) {
            DB::rollBack();
            Log::error($e);
        }
        return Output::Fail('创建失败');

    }

    public static function updateTicket(Request $request, $id)
    {
        $rules = [
            //'image' => 'required',
            //'name' => 'required',
            'money' => 'required|numeric|min:0.01',
            'expire' => 'required',
            // 'color' => 'required',
            // 'address' => 'required',
            'detail' => 'required',
        ];
//        $validator = Validator::make($request->all(), $rules);
//        $validator->after(function ($validator) use ($request) {
//            if (false) {
//                //$validator->errors()->add('field', 'Something is wrong with this field!');
//            }
//        });
//        if ($validator->fails()) {
//            throw new ValidationException($validator);
//        }
        $data = $request->only(array_keys($rules));
        $data = array_filter($data, function ($val) {
            return !is_null($val);
        });
        $ticketConfig = CouponConfig::findOrFail($id);
        if ($ticketConfig->state != 1) {
            return Output::Fail('优惠券已关闭');
        }
        try {
            DB::beginTransaction();
            $ticketConfig->fill($data);
            if ($request->get('state') && $request->get('state') != 1) {
                if ($ticketConfig->state == 1) {
                    $ticketConfig->state = 2;
                    $ticketConfig->closed_at = Carbon::now();
                    Coupon::where('coupon_config_id', $ticketConfig->id)
                        ->where('state', 1)
                        ->update(['state' => 2]);
                }
            }
            $ticketConfig->save();
            DB::commit();
            return Output::Success('修改成功');
        } catch (\Exception $e) {
            DB::rollBack();
            if (config('app.debug')) {
                throw $e;
            }
            Log::error($e);

        }
        return Output::Fail('修改失败');
    }

    public static function getTickets($user_id)
    {
        $hexiaoTicket = TicketConfig::where('confirm_user_ids', 'like', '%,' . $user_id . ',%')
            ->where('state', 1)
            ->get();
        $ti = Ticket::where('user_id', $user_id)
            ->where('state', 1)
            ->select('coupon_config_id', DB::Raw('count(*) as ticket_num'))
            ->groupBy('coupon_config_id')
            ->pluck('ticket_num', 'coupon_config_id')
            ->toArray();
        $ids = Ticket::where('user_id', $user_id)
            ->where('tip', 1)
            ->pluck('id')
            ->toArray();
        if ($ids) {
            Ticket::whereIn('id', $ids)->update(['tip' => 0]);
        }
        $myTicket = TicketConfig::whereIn('id', array_keys($ti))
            ->get();
        foreach ($myTicket as $t) {
            $t->ticket_num = isset($ti[$t->id]) ? $ti[$t->id] : 0;
            $t->template = $t->getTemplate($t->ticket_num);
        }
        foreach ($hexiaoTicket as $t) {
            $t->template = $t->getTemplate(-1);
        }
        return Output::Success('', [
            'hexiaoTicket' => $hexiaoTicket->toArray(),
            'myTicket' => $myTicket->toArray(),
            'template' => Ticket::$template,
        ]);
    }
}