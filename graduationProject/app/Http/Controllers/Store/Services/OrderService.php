<?php
/**
 * Created by PhpStorm.
 * User: ygy
 * Date: 2017/6/16
 * Time: 14:18
 */
namespace App\Http\Controllers\Store\Services;


use App\Http\Controllers\Store\Models\FxChain;
use App\Http\Controllers\Store\Models\Goods;
use App\Http\Controllers\Store\Models\Order;
use App\Http\Controllers\Store\Models\OrderCommon;
use App\Http\Controllers\Store\Models\OrderProduct;
use App\Http\Controllers\Store\Models\Store;
use App\Http\Controllers\Store\Models\UserAddress;
use App\Jobs\ProcessOrderPaid;
use App\Jobs\ProcessUserChain;
use App\Models\Recharge;
use App\Models\Setting;
use App\Services\BalanceService;
use App\Services\CommonService;
use App\Services\Output;
use App\Services\SettingService;
use App\Tools\Pay\PayService;
use App\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Log;

class OrderService
{
    /**
     * 商品订单号
     * @return string
     */
    public static function orderNo()
    {
        return '10' . date('YmdHis') . str_pad(substr(explode('.', microtime(true))[1], 0, 3), 3, 0, STR_PAD_RIGHT) . mt_rand(100000, 999999);
    }

    public static function chargeScoreOrderNo()
    {
        return '20' . date('YmdHis') . str_pad(substr(explode('.', microtime(true))[1], 0, 3), 3, 0, STR_PAD_RIGHT) . mt_rand(100000, 999999);
    }

    /**
     * 计算购物车信息
     * @param $cart
     * @return $this|\App\Services\_Data
     */
    public static function getCartProductInfo($cart)
    {
        $recomGoods = Goods::where('state', 1)
            ->limit(10)
            ->get();
        if (!is_array($cart) || empty($cart)) {
            return Output::Success()
                ->with('recomGoods', $recomGoods);
        }
        //cart  ==  product_id,attribute_id,num
        $p2n = [];//商品=》数量
        $p2g = [];//商品,规格
        $store_ids = [];
        $product_ids = [];
        foreach ($cart as $item) {
            $p2n[$item['product_id'] . '_' . $item['attribute_id']] = $item['num'];
            $p2g[] = [$item['product_id'], $item['attribute_id']];
            $store_ids[] = isset($item['store_id']) ? $item['store_id'] : 1;
            $product_ids[] = $item['product_id'];
        }
        if (empty($store_ids) || empty($product_ids)) {
            return Output::Success('没有记录');
        }
        $stores = Store::whereIn('id', $store_ids)
            ->get();
        $products = Goods::whereIn('id', $product_ids)
            ->get()->keyBy('id');
        //组装商品
        $productList = [];
        $score = 0;//积分
        $productNum = 0;//商品种类
        $productTotal = 0;//商品数量
        foreach ($p2g as $item) {
            $pid = $item[0];
            $gid = $item[1];
            if (isset($products[$pid])) {
                $p = new Goods();
                $p->fill($products[$pid]->toArray());
                $p->price = $p->price / 10000;//恢复价格，上一步fill
                if ($p->attribute && isset($p->attribute[$gid])) {
                    $p->attribute_name = $p->attribute[$gid]['name'];
                    $p->attribute_price = $p->attribute[$gid]['price'];
                } else {
                    //没规格
                    $p->attribute_name = '';
                    $p->attribute_price = $p->price;
                }
                $p->num = isset($p2n[$pid . '_' . $gid]) ? $p2n[$pid . '_' . $gid] : 1;
                $p->gid = $gid;//规格id
                $p->total_price = $p->attribute_price * $p->num;
                $productList[] = $p;
                if ($p->type == 2) {
                    $score += $p->score * $p->num;
                }
            }
        }
        $productList = collect($productList)->groupBy('store_id');
        $cartList = [];

        foreach ($stores as $store) {
            if (isset($productList[$store->id]) && !empty($productList[$store->id])) {
                $store->products = $productList[$store->id];
                $total = 0;
                foreach ($store->products as $p) {
                    $productNum++;
                    $productTotal+= $p->num;
                    $total += $p->attribute_price * $p->num;
                }
                $store->product_amount = $total;
                $store->can_buy = 0;//起送价，是否可以购买
                //满包邮，起送价
                if ($total >= $store->delivery_fee_limit && $store->delivery_fee_limit > 0) {
                    $store->delivery_fee = 0;
                    $store->can_buy = 1;
                }
                //取消运费
                $store->delivery_fee = -1;

                $cartList[] = $store;
            }
        }



        return Output::Success()
            ->with('score_str', CommonService::intToDecimalMoney($score))
            ->with('score', $score)
            ->with('productNum', $productNum)
            ->with('productTotal', $productTotal)
            ->with('recomGoods', $recomGoods)
            ->with('cartList', $cartList);
    }


    /**
     * 创建订单
     * @param $cartList
     * @param $buyer_id
     * @param $buyer_address_id
     * @return $this|\App\Services\_Data
     */
    public static function createOrder($cartList, $buyer_id, $buyer_address_id)
    {
        $orderList = [];
        $orderProducts = [];
        $orderCommon = [];
        $order_nos = [];
        $delivery_fee = 0;
        try {
            $buyerAddress = UserAddress::where('user_id', $buyer_id)->find($buyer_address_id);
            if (is_null($buyerAddress)) {
                return Output::Fail('请填写收货地址');
            }
            foreach ($cartList['cartList'] as $store) {
                $delivery_fee = $store->delivery_fee;
                $datetime = date('Y-m-d H:i:s');
                $order_amount = 0;
                $order_no = self::orderNo();
                $order_nos[] = $order_no;

                foreach ($store->products as $p) {
                    $real_price = $p->attribute_price;
                    $product_num = $p->num;
                    $orderProducts[] = [
                        'order_no' => $order_no,
                        'product_id' => $p->id,
                        'product_name' => $p->name,
                        'price' => $real_price,
                        'score' => $p->type == 2 ? $p->score : 0,
                        'num' => $product_num,
                        'image' => $p->image,
                        'attribute_name' => $p->attribute_name,
                        'created_at' => $datetime,
                        'updated_at' => $datetime,
                    ];
                    $order_amount += $real_price * $product_num;
                }
                if ($store->delivery_fee_limit > 0 && $order_amount >= $store->delivery_fee_limit) {
                    $delivery_fee = 0;
                }

                $orderList[] = [
                    'order_no' => $order_no,
                    'user_id' => $buyer_id,
                    'seller_id' => $store->user_id,
                    'store_id' => $store->id,
                    'order_amount' => $order_amount + $delivery_fee,
                    'balance_amount' => 0,
                    'pay_amount' => $order_amount + $delivery_fee,
                    'state' => 1,
                    'out_trade_no' => '',
                    'pay_way' => 0,
                    'delivery_fee' => $delivery_fee,
                    'delivery_company' => '',
                    'delivery_no' => '',
                    'buyer_tip' => 1,
                    'seller_tip' => 1,
                    'beizhu' => $store->order_bz,
                    'score' => $cartList['score'],
                    'created_at' => $datetime,
                    'updated_at' => $datetime,
                ];
                $orderCommon[] = [
                    'order_no' => $order_no,
                    'rec_name' => $buyerAddress->name,
                    'rec_area_code' => $buyerAddress->area_code,
                    'rec_address' => $buyerAddress->address,
                    'rec_phone' => $buyerAddress->phone,
                    'created_at' => $datetime,
                    'updated_at' => $datetime,
                ];

            }
        } catch (\Exception $e) {
            Log::error($e);
            return Output::Fail($e->getMessage());
        }
        try {
            DB::beginTransaction();
            if ($cartList['score'] > 0) {
                $bs = new BalanceService();
                $bs->payScore($buyer_id, $cartList['score'], '购买积分商品');
            }
            if (!Order::insert($orderList)) {
                throw new \Exception('下单失败');
            }
            if (!OrderProduct::insert($orderProducts)) {
                throw new \Exception('下单失败');
            }
            if (!OrderCommon::insert($orderCommon)) {
                throw new \Exception('下单失败');
            }
            DB::commit();
            $orderIds = Order::whereIn('order_no', $order_nos)->pluck('id')->toArray();
            return Output::Success('下单成功')
                ->with('orderIds', $orderIds);
        } catch (\Exception $e) {
            DB::rollBack();
            Log::error($e);
            return Output::Fail('下单失败');
        }
    }


    /**
     * 订单发货
     * @param $order
     * @param $delivery_company
     * @param $delivery_no
     * @return mixed
     */
    public static function sendOrder($order, $delivery_company, $delivery_no)
    {
        //1待付款，2已付款，3已发货，4确认收货，7未付款取消订单
        $result = Order::where('id', $order->id)
            ->where('state', 2)
            ->update([
                'buyer_tip' => 3,
                'state' => 3,
                'delivery_company' => $delivery_company,
                'delivery_no' => $delivery_no,
                'send_at' => Carbon::now(),
            ]);
        if ($result) {
            // PushService::pushOrderTip(0, $order->user, 1, '您有一条订单已发货！');
        }
        return $result;
    }


    //获取支付参数
    public function getPayStr($order, $type)
    {
        return PayService::getAppPayStr($type, $order->order_amount, $order->order_no, '订单付款');
    }

    //完成订单支付
    public function payOrder($order_no, $order_amount, $transaction_id, $pay_type)
    {
        $order = Order::where('order_no', $order_no)->where('state', 1)->first();
        if (is_null($order)) {
            return false;
        }
        if (!config('app.testenv')) {
            if ($order->order_amount != intval($order_amount)) {
                Log::error("订单支付金额不正确:{$order_no} --{$order_amount}");
                return false;
            }
        }
        try {
            DB::beginTransaction();
            $update = [
                'state' => 2,
                'out_trade_no' => $transaction_id,
                'pay_way' => $pay_type,
                'pay_at' => Carbon::now(),
                'seller_tip' => 1,
            ];
            if ($pay_type == 'balancePay') {
                $balanceService = new BalanceService();
                $balanceService->pay($order->user_id, $order->order_amount, '订单支付');
                $update['pay_amount'] = 0;
                $update['balance_amount'] = $order_amount;
            }
            Order::where('order_no', $order_no)
                ->where('state', 1)
                ->update($update);
            dispatch(new ProcessOrderPaid($order));
            DB::commit();
            return true;
        } catch (\Exception $e) {
            DB::rollBack();
            Log::error($e);
        }
        return false;
    }

    //充值订单完成付款
    public function payRechargeOrder($order_no, $order_amount, $transaction_id, $pay_type)
    {
        $order = Recharge::where('order_no', $order_no)->where('state', 1)->first();
        if (is_null($order)) {
            return false;
        }
        if (!config('app.testenv')) {
            if ($order->money != intval($order_amount)) {
                Log::error("充值金额不正确:{$order_no} --{$order_amount}");
                return false;
            }
        }
        try {
            DB::beginTransaction();
            Recharge::where('order_no', $order_no)
                ->where('state', 1)
                ->update([
                    'state' => 2,
                    'out_trade_no' => $transaction_id,
                    'pay_way' => $pay_type,
                    'pay_at' => Carbon::now(),
                ]);
            $bs = new BalanceService();
            $bs->addScore($order->user_id, $order->money * 3, '充值积分');
            DB::commit();
            return true;
        } catch (\Exception $e) {
            DB::rollBack();
            Log::error($e);
        }
        return false;
    }

    //定时任务
    public function checkPay()
    {
        $orders = Order::where('state', 1)->where('created_at', '<', Carbon::now()->addDays(-1))->count();
        if ($orders > 0) {
            Order::where('state', 1)->where('created_at', '<', Carbon::now()->addDays(-1))->update(['state' => 7]);
        }
    }

    public function checkConfirm()
    {
        //1待付款，2带接单，3已接单，4未接单取消，5已确认，6已评价，7未付款取消订单
        $orders = Order::where('state', 3)->where('updated_at', '<', Carbon::now()->addDays(-15))->get();
        foreach ($orders as $order) {
            self::confirmOrder($order);
        }
    }


    /**
     * 确认订单
     * @param $order
     * @return bool
     */
    public static function confirmOrder($order)
    {
        try {
            DB::beginTransaction();
            /*
            $balanceService = new BalanceService();
            //分销佣金
            $fxFee = 0;
            if ($order->user->recom_id) {
                $up = User::find($order->user->recom_id);
                if ($up) {
                    if ($order->store->self != 1) {
                        $rate = Setting::getRate('fxRate1');
                    } else {
                        $rate = Setting::getRate('zyfxRate1');
                    }
                    $fee = intval($order->order_amount * $rate / 100);
                    if ($fee) {
                        $fxFee += $fee;
                        $balanceService->orderMoney($order->user->recom_id, $fee);
                    }
                }
            }
            if ($order->user->recom_id2) {
                $upp = User::find($order->user->recom_id2);
                if ($upp) {
                    if ($order->store->self != 1) {
                        $rate = Setting::getRate('fxRate2');
                    } else {
                        $rate = Setting::getRate('zyfxRate2');
                    }
                    $fee = intval($order->order_amount * $rate / 100);
                    if ($fee) {
                        $fxFee += $fee;
                        $balanceService->orderMoney($order->user->recom_id2, $fee);
                    }
                }
            }

            if ($order->store->self != 1) {
                //普通商家，实际收入
                //扣除服务费
                $feeRate = Setting::getRate('feeRate');
                $detail = '订单收入';
                if ($feeRate > 0) {
                    $detail .= "(平台服务费{$feeRate}%)";
                }
                $feeAmount = intval($order->order_amount * $feeRate / 100);
                $money = $order->order_amount - $feeAmount;
            } else {
                //自营，实际收入
                $money = $order->order_amount - $fxFee;
            }
            //打给商家
            $balanceService->orderMoney($order->seller_id, $money, $detail);
            */
            $result = Order::where('id', $order->id)
                ->where('state', 3)
                ->update([
                    // 'fx_amount' => $fxFee,
                    'state' => 4,
                    'confirm_at' => Carbon::now(),
                ]);
            if (!$result) {
                throw new \Exception('订单确认失败');
            }
            DB::commit();
            //PushService::pushOrderTip(0, $order->seller, 1, '您有一条订单已确认完成！');
            return true;
        } catch (\Exception $e) {
            DB::rollBack();
            Log::error($e);
        }
        return false;
    }


    /**
     * 发放奖励
     * @param $user
     * @throws \Exception
     */
//    public static function checkUserUpdateLevel($user)
//    {
//        $up1 = $user->recom_id > 0 ? User::where('id', $user->recom_id)->first() : null;
//        $up2 = $user->recom_id2 > 0 ? User::where('id', $user->recom_id2)->first() : null;
//        $up3 = $user->recom_id3 > 0 ? User::where('id', $user->recom_id3)->first() : null;
//
//        $config_one = [
//            '1-1' => 2,
//            '2-1' => 6,
//            '3-1' => 7,
//            '4-1' => 7,
//            '5-1' => 7,
//            '6-1' => 7,
//
//            '2-2' => 200,
//            '3-2' => 200,
//            '4-2' => 200,
//            '5-2' => 200,
//            '6-2' => 200,
//
//            '3-3' => 20000,
//            '4-3' => 20000,
//            '5-3' => 20000,
//            '6-3' => 20000,
//
//            '3-4' => 15000,
//            '4-4' => 30000,
//            '5-4' => 30000,
//            '6-4' => 30000,
//
//            '3-5' => 100000,
//            '4-5' => 100000,
//            '5-5' => 200000,
//            '6-5' => 200000,
//
//            '3-6' => 450000,
//            '4-6' => 450000,
//            '5-6' => 450000,
//            '6-6' => 900000,
//        ];
//
//        $config_two = [
//            '1-1-1' => 2,
//            '2-1-1' => 6,
//            '2-2-1' => 6,
//            '3-1-1' => 7,
//            '3-2-1' => 3,
//            '3-3-1' => 2,
//            '4-1-1' => 7,
//            '4-2-1' => 3,
//            '4-3-1' => 2,
//            '4-4-1' => 2,
//            '5-1-1' => 7,
//            '5-2-1' => 3,
//            '5-3-1' => 2,
//            '5-4-1' => 2,
//            '5-5-1' => 2,
//            '6-1-1' => 7,
//            '6-2-1' => 3,
//            '6-3-1' => 2,
//            '6-4-1' => 2,
//            '6-5-1' => 2,
//            '6-6-1' => 2,
//
//            '2-1-2' => 0,
//            '2-2-2' => 200,
//            '3-1-2' => 00,
//            '3-2-2' => 200,
//            '3-3-2' => 2,
//            '4-1-2' => 0,
//            '4-2-2' => 200,
//            '4-3-2' => 200,
//            '4-4-2' => 200,
//            '5-1-2' => 200,
//            '5-2-2' => 200,
//            '5-3-2' => 200,
//            '5-4-2' => 200,
//            '5-5-2' => 200,
//            '6-1-2' => 200,
//            '6-2-2' => 200,
//            '6-3-2' => 200,
//            '6-4-2' => 200,
//            '6-5-2' => 200,
//            '6-6-2' => 200,
//
//            '3-3-3' => 3000,
//            '4-3-3' => 3000,
//            '4-4-3' => 3000,
//            '5-3-3' => 3000,
//            '5-4-3' => 3000,
//            '5-5-3' => 3000,
//            '6-3-3' => 3000,
//            '6-4-3' => 3000,
//            '6-5-3' => 3000,
//            '6-6-3' => 3000,
//
//            '3-3-4' => 2500,
//            '4-3-4' => 2500,
//            '4-4-4' => 5000,
//            '5-3-4' => 2500,
//            '5-4-4' => 5000,
//            '5-5-4' => 5000,
//            '6-3-4' => 2500,
//            '6-4-4' => 5000,
//            '6-5-4' => 5000,
//            '6-6-4' => 5000,
//
//            '3-3-5' => 15000,
//            '4-3-5' => 15000,
//            '4-4-5' => 15000,
//            '5-3-5' => 30000,
//            '5-4-5' => 30000,
//            '5-5-5' => 30000,
//            '6-3-5' => 30000,
//            '6-4-5' => 30000,
//            '6-5-5' => 30000,
//            '6-6-5' => 30000,
//
//            '3-3-6' => 75000,
//            '4-3-6' => 75000,
//            '4-4-6' => 75000,
//            '5-3-6' => 75000,
//            '5-4-6' => 75000,
//            '5-5-6' => 75000,
//            '6-3-6' => 150000,
//            '6-4-6' => 150000,
//            '6-5-6' => 150000,
//            '6-6-6' => 150000,
//        ];
//
//        $config_three = [
//            '1-1-1-1' => 2,
//            '2-1-1-1' => 6,
//            '2-1-2-1' => 6,
//            '2-2-1-1' => 6,
//            '2-2-2-1' => 6,
//            '3-1-1-1' => 7,
//            '3-1-2-1' => 7,
//            '3-1-3-1' => 7,
//            '3-2-1-1' => 3,
//            '3-2-2-1' => 3,
//            '3-2-3-1' => 3,
//            '3-3-1-1' => 2,
//            '3-3-2-1' => 2,
//            '3-3-3-1' => 2,
//            '4-1-1-1' => 7,
//            '4-1-2-1' => 7,
//            '4-1-3-1' => 7,
//            '4-1-4-1' => 7,
//            '4-2-1-1' => 3,
//            '4-2-2-1' => 3,
//            '4-2-3-1' => 3,
//            '4-2-4-1' => 3,
//            '4-3-1-1' => 2,
//            '4-3-2-1' => 2,
//            '4-3-3-1' => 2,
//            '4-3-4-1' => 2,
//            '4-4-1-1' => 2,
//            '4-4-2-1' => 2,
//            '4-4-3-1' => 2,
//            '4-4-4-1' => 2,
//
//            '5-1-*-1' => 7,
//            '5-2-*-1' => 3,
//            '5-3-*-1' => 2,
//            '5-4-*-1' => 2,
//            '5-5-*-1' => 2,
//            '6-1-*-1' => 7,
//            '6-2-*-1' => 3,
//            '6-3-*-1' => 2,
//            '6-4-*-1' => 2,
//            '6-5-*-1' => 2,
//
//            '2-*-*-2' => 200,
//            '3-*-*-2' => 200,
//            '4-*-*-2' => 200,
//            '5-*-*-2' => 200,
//            '6-*-*-2' => 200,
//
//            '3-*-*-3' => 2000,
//            '4-*-*-3' => 2000,
//            '5-*-*-3' => 2000,
//            '6-*-*-3' => 2000,
//
//            '3-*-*-4' => 1500,
//            '4-*-*-4' => 3000,
//            '5-*-*-4' => 3000,
//            '6-*-*-4' => 3000,
//
//            '3-*-*-5' => 10000,
//            '4-*-*-5' => 10000,
//            '5-*-*-5' => 20000,
//            '6-*-*-5' => 20000,
//
//            '3-*-*-6' => 45000,
//            '4-*-*-6' => 45000,
//            '5-*-*-6' => 45000,
//            '6-*-*-6' => 90000,
//        ];
//
//        $level_str = $user->level_str;
//        $balanceService = new BalanceService();
//        if ($up1) {
//            $money = 0;
//            $key = $up1->level . '-' . $user->level;
//            if (isset($config_one[$key])) {
//                $money = $config_one[$key];
//            } else {
//                foreach ($config_one as $k => $item) {
//                    if (self::compareKey($k, $key)) {
//                        $money = $item;
//                    }
//                }
//            }
//            if ($money > 0) {
//                $balanceService->reward($up1->id, CommonService::decimalToIntMoney($money), "推荐{$level_str}奖励");
//            }
//
//            if ($up2) {
//                $money = 0;
//                $key = $up2->level . '-' . $up1->level . '-' . $user->level;
//                if (isset($config_two[$key])) {
//                    $money = $config_two[$key];
//                } else {
//                    foreach ($config_two as $k => $item) {
//                        if (self::compareKey($k, $key)) {
//                            $money = $item;
//                        }
//                    }
//                }
//                if ($money > 0) {
//                    $balanceService->reward($up2->id, CommonService::decimalToIntMoney($money), "推荐{$level_str}奖励");
//                }
//                if ($up3) {
//                    $money = 0;
//                    $key = $up3->level . '-' . $up2->level . '-' . $up1->level . '-' . $user->level;
//                    if (isset($config_three[$key])) {
//                        $money = $config_three[$key];
//                    } else {
//                        foreach ($config_three as $k => $item) {
//                            if (self::compareKey($k, $key)) {
//                                $money = $item;
//                            }
//                        }
//                    }
//                    if ($money > 0) {
//                        $balanceService->reward($up3->id, CommonService::decimalToIntMoney($money), "推荐{$level_str}奖励");
//                    }
//                }
//            }
//        }
//        $hasLevel_3 = false;
//        $hasLevel_4 = false;
//        $hasLevel_5 = false;
//        $hasLevel_6 = false;
//
//        if ($up1 && $up1->level == 3 || $up2 && $up2->level == 3 || $up3 && $up3->level == 3) {
//            $hasLevel_3 = true;
//        }
//        if ($up1 && $up1->level == 4 || $up2 && $up2->level == 4 || $up3 && $up3->level == 4) {
//            $hasLevel_4 = true;
//        }
//        if ($up1 && $up1->level == 5 || $up2 && $up2->level == 5 || $up3 && $up3->level == 5) {
//            $hasLevel_5 = true;
//        }
//        if ($up1 && $up1->level == 6 || $up2 && $up2->level == 6 || $up3 && $up3->level == 6) {
//            $hasLevel_6 = true;
//        }
//
//        $chain = FxChain::where('user_id', $user->id)->first();
//        if (is_null($chain)) {
//            return;
//        }
//        if (!$hasLevel_3) {
//            if ($user->level == 1 && $chain->l3_id) {
//                $balanceService->reward($chain->l3_id, CommonService::decimalToIntMoney(5), '推荐普通会员奖励');
//            }
//            if ($user->level == 2 && $chain->l3_id) {
//                //代理商出现高级会员加200
//                $balanceService->reward($chain->l3_id, CommonService::decimalToIntMoney(200), '推荐高级会员奖励');
//            }
//        }
//        if (!$hasLevel_4) {
//            if ($user->level == 1 && $chain->l4_id) {
//                //区县出现高级会员加1.19
//                $balanceService->reward($chain->l4_id, CommonService::decimalToIntMoney(1.19), '推荐普通会员奖励');
//            }
//            if ($user->level == 2 && $chain->l4_id) {
//                //区县出现高级会员加60
//                $balanceService->reward($chain->l4_id, CommonService::decimalToIntMoney(60), '推荐高级会员奖励');
//            }
//            if ($user->level == 3 && $chain->l4_id) {
//                //区县出现高级会员加1500
//                $balanceService->reward($chain->l4_id, CommonService::decimalToIntMoney(1500), '推荐代理商奖励');
//            }
//        }
//        if (!$hasLevel_5) {
//            if ($user->level == 1 && $chain->l5_id) {
//                //区县出现高级会员加1.19
//                $balanceService->reward($chain->l5_id, CommonService::decimalToIntMoney(1.19), '推荐普通会员奖励');
//            }
//            if ($user->level == 2 && $chain->l5_id) {
//                //区县出现高级会员加60
//                $balanceService->reward($chain->l5_id, CommonService::decimalToIntMoney(60), '推荐高级会员奖励');
//            }
//            if ($user->level == 3 && $chain->l5_id) {
//                //区县出现高级会员加1500
//                $balanceService->reward($chain->l4_id, CommonService::decimalToIntMoney(1500), '推荐代理商奖励');
//            }
//            if ($user->level == 4 && $chain->l5_id) {
//                //区县出现高级会员加1500
//                $balanceService->reward($chain->l5_id, CommonService::decimalToIntMoney(3000), '推荐区县代理奖励');
//            }
//        }
//
//        if (!$hasLevel_6) {
//            if ($user->level == 1 && $chain->l6_id) {
//                //区县出现高级会员加1.19
//                $balanceService->reward($chain->l6_id, CommonService::decimalToIntMoney(1.19), '推荐普通会员奖励');
//            }
//            if ($user->level == 2 && $chain->l6_id) {
//                //区县出现高级会员加60
//                $balanceService->reward($chain->l6_id, CommonService::decimalToIntMoney(60), '推荐高级会员奖励');
//            }
//            if ($user->level == 3 && $chain->l6_id) {
//                //区县出现高级会员加1500
//                $balanceService->reward($chain->l6_id, CommonService::decimalToIntMoney(1500), '推荐代理商奖励');
//            }
//            if ($user->level == 4 && $chain->l6_id) {
//                //区县出现高级会员加1500
//                $balanceService->reward($chain->l6_id, CommonService::decimalToIntMoney(3000), '推荐区县代理奖励');
//            }
//            if ($user->level == 5 && $chain->l6_id) {
//                //区县出现高级会员加15000
//                $balanceService->reward($chain->l6_id, CommonService::decimalToIntMoney(15000), '推荐市级代理奖励');
//            }
//        }
//    }

    protected static function compareKey($configKey, $key)
    {
        $arr = explode('-', $configKey);
        $arr2 = explode('-', $key);
        $same = true;
        foreach ($arr as $k => $v) {
            if ($v != $arr2[$k] && $v != '*') {
                $same = false;
                break;
            }
        }
        return $same;
    }

    /**
     * 更新关系
     * @param $user
     */
//    public static function checkChain($user)
//    {
//        if ($user->level < 3) {
//            return;
//        }
//        $uids = [];
//        $next_ids = User::where('recom_id', $user->id)
//            ->where('level', '<', $user->level)
//            ->pluck('id')->toArray();//查询他下线
//        $count = count($next_ids);
//        $uids = array_merge($uids, $next_ids);
//        while ($count > 0) {
//            $next_ids = User::whereIn('recom_id', $next_ids)
//                ->where('level', '<', $user->level)
//                ->pluck('id')->toArray();
//            $count = count($next_ids);
//            $uids = array_merge($uids, $next_ids);
//        }
//        FxChain::whereIn('user_id', $uids)->update(['l' . $user->level . '_id' => $user->id]);
//    }
}