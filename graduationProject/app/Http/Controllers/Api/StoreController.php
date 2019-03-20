<?php
namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Store\Models\Banner;
use App\Http\Controllers\Store\Models\Brand;
use App\Http\Controllers\Store\Models\Category;
use App\Http\Controllers\Store\Models\Goods;
use App\Http\Controllers\Store\Models\GoodsCollect;
use App\Http\Controllers\Store\Models\Order;
use App\Http\Controllers\Store\Models\UserAddress;
use App\Http\Controllers\Store\Services\OrderService;
use App\Models\Recharge;
use App\Services\Output;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Log;

class StoreController extends Controller
{
    public function buyList(Request $request){
        $list = (new Goods())->newQuery();
        if ($request->get('cid')) {
            $category = Category::find($request->get('cid'));
            if ($category) {
                if ($category->level == 1) {
                    $list->where('category_id', $category->id);
                } else if ($category->level == 2) {
                    $list->where('category_id2', $category->id);
                }
            }
        }
        if ($request->get('brand_id') > 0) {
            $list->where('brand_id', $request->get('brand_id'));
        }
        if ($request->get('order') > 0) {
            switch ($request->get('order')) {
                case 1:
                    $list->orderBy('sale', 'desc');
                    break;
                case 2:
                    $list->orderBy('price', 'desc');
                    break;
                case 3:
                    $list->orderBy('price', 'asc');
                    break;
            }
        }

        $list = $list->get();
        return Output::Success('')
            ->with('productList', $list);
    }
    public function products(Request $request)
    {
        $list = $request->get('cart');
        $id2num = [];
        $productIds = [];
        if (is_array($list)) {
            foreach ($list as $item) {
                if (isset($item['product_id'])) {
                    $productIds[] = intval($item['product_id']);
                    if (isset($item['num']) && $item['num'] > 0) {
                        $id2num[intval($item['product_id'])] = $item['num'];
                    }
                }
            }
        }
        $productList = [];
        if ($productIds) {
            $productList = Goods::where('state', 1)->whereIn('id', $productIds)->get();
            foreach ($productList as $p) {
                if (isset($id2num[$p->id])) {
                    $p->cartNum = $id2num[$p->id];
                }
            }
        }
        return Output::Success()
            ->with('list', $productList);
    }

    public function collect(Request $request)
    {
        return GoodsCollect::doCollect(Auth::id(), $request->get('product_id'));
    }

    /**
     * 分类
     * @param Request $request
     * @return $this
     */
    public function category(Request $request)
    {
        $brands = Brand::all();
        return Output::Success()
            ->with('brands', $brands)
            ->with('category', Category::allCategory());
    }

    //
    public function productAll(Request $request)
    {

    }

    /**
     * 首页
     * @param Request $request
     * @return $this
     */
    public function indexPage(Request $request)
    {
        $banners = Banner::get()->toArray();
        $recomGoods = Goods::where('state', 1)
            ->limit(10)
            ->get();
        return Output::Success('')
            ->with('banners', $banners)
            ->with('recomGoods', $recomGoods)
            ->with('gonggao', [
                [
                    'id' => 1,
                    'name' => '渠道促销公告1',
                ],
                [
                    'id' => 2,
                    'name' => '渠道促销公告2',
                ],
                [
                    'id' => 3,
                    'name' => '渠道促销公告3',
                ],
            ]);
    }

    /**
     * 商品列表
     * @param Request $request
     * @return $this
     */
    public function productList(Request $request)
    {
        $list = (new Goods())->newQuery();

        if ($request->get('cid')) {
            $category = Category::find($request->get('cid'));
            if ($category) {
                if ($category->level == 1) {
                    $list->where('category_id', $category->id);
                } else if ($category->level == 2) {
                    $list->where('category_id2', $category->id);
                }
            }
        }
        if ($request->get('brand_id') > 0) {
            $list->where('brand_id', $request->get('brand_id'));
        }
        if ($request->get('order') > 0) {
            switch ($request->get('order')) {
                case 1:
                    $list->orderBy('sale', 'desc');
                    break;
                case 2:
                    $list->orderBy('price', 'desc');
                    break;
                case 3:
                    $list->orderBy('price', 'asc');
                    break;
            }
        }

        $list = $list->paginate(8);
        $list->appends($request->except('page', 'per_page'));
        return Output::Success('')
            ->with('productList', $list);

    }

    /**
     * 商品详情
     * @param Request $request
     * @return $this
     */
    public function productDetail(Request $request)
    {
        $product_id = $request->get('product_id');
        $product = Goods::with('brand', 'category2')->findOrFail($product_id);
        $product->collect_state = GoodsCollect::collectState(Auth::id(), $product_id);
        $product->collect_str = $product->collect_state == 1 ? '已收藏' : '收藏';
        return Output::Success('')
            ->with('product', $product);
    }

    /**
     * 购物车
     * @param Request $request
     * @return $this
     */
    public function cartInfo(Request $request)
    {
        $cart = $request->get('cart');
        $cartList = OrderService::getCartProductInfo($cart);
        return $cartList;
    }

    /**
     * 下单页面
     * @param Request $request
     * @return \App\Services\_Data
     */
    public function preOrder(Request $request)
    {
        $cart = $request->get('cart');
        $cartList = OrderService::getCartProductInfo($cart);
        $user_id = Auth::id();
        $address = UserAddress::with('area')->where('user_id', $user_id)->where('default', 1)->first();
        if (is_null($address)) {
            $address = UserAddress::with('area')->where('user_id', $user_id)->first();
        }
        $cartList = $cartList->toArray();
        if ($cartList['errCode'] != 0) {
            return $cartList;
        }
        return Output::Success()
            ->with('address', $address)
            ->with('orders', $cartList['data']);

    }

    /**
     * 下单
     * @param Request $request
     * @return $this|\App\Services\_Data
     */
    public function saveOrder(Request $request)
    {
        $user_id = Auth::id();
        $user_address_id = $request->get('user_address_id');
        $cart = $request->get('cart');
        $cartList = OrderService::getCartProductInfo($cart);
        $cartList = $cartList->toArray();
        if ($cartList['errCode'] != 0) {
            return $cartList;
        }
        foreach ($cartList['data']['cartList'] as $store) {
            $store->order_bz = $request->get('s' . $store->id . 'bz', '');
        }
        $user = Auth::user();
        if ($user->score < $cartList['data']['score']) {
            return Output::Fail('积分不足');
        }
        if ($cartList['data']['score'] > 0) {
//            if ($user->pay_password != $request->get('pay_password') || empty($user->pay_password)) {
//                return Output::Fail('支付密码错误');
//            }
        }

        return OrderService::createOrder($cartList['data'], $user_id, $user_address_id);
    }

    /**
     * 订单详情
     * @param Request $request
     * @return $this
     */
    public function orderDetail(Request $request)
    {
        $order = Order::with(['user', 'seller', 'store', 'product', 'common.recArea'])->findOrFail($request->get('order_id'));
        $user_id = Auth::id();
        if ($order->seller_id == $user_id) {
            $order->buyer_tip = 0;
        } else {
            $order->seller_tip = 0;
        }
        $order->save();
        return Output::Success()
            ->with('order', $order);
    }

    /**
     * 我的订单列表
     * @param Request $request
     * @return \App\Services\_Data
     */
    public function orderList(Request $request)
    {
        $query = $request->get('query', '');
        $query = explode('-', $query);
        $type = isset($query[0]) ? $query[0] : 'user';
        $state = isset($query[1]) ? $query[1] : 'all';

        $types = [
            'user' => 1,
            'store' => 2,
        ];
        $states = [
            'all' => 0,
            'waitPay' => 1,
            'waitSend' => 2,
            'waitConfirm' => 3,
            'completed' => 4,
        ];
        $type = isset($types[$type]) ? $types[$type] : 1;
        $state = isset($states[$state]) ? $states[$state] : 0;
        $user_id = Auth::id();
        if ($type == 1) {
            //普通订单
            $list = Order::with('product', 'store')->where('user_id', $user_id);
        } else {
            //卖家订单
            $list = Order::with('product', 'user')->where('seller_id', $user_id);
        }
        if ($state > 0) {
            $list->where('state', $state);
        }
        $list->orderBy('id', 'desc');
        $list = $list->paginate(20);
        $list->appends($request->except('page', 'per_page'));
        //清除订单提醒标识
        $clearTipIds = [];
        $tipField = $type == 1 ? 'buyer_tip' : 'seller_tip';
        foreach ($list as $order) {
            if ($order->$tipField) {
                $clearTipIds[] = $order->id;
            }
        }
        if (count($clearTipIds) > 0) {
            Order::whereIn('id', $clearTipIds)->update([$tipField => 0]);
        }
        return Output::Success()
            ->with('list', $list);
    }

    /**
     * 取消订单
     * @param Request $request
     * @return \App\Services\_Data
     */
    public function orderCancel(Request $request)
    {
        //未付款订单取消
        $id = $request->get('id');
        $user_id = Auth::id();
        $order = Order::where('user_id', $user_id)->findOrFail($id);
        if ($order->state != 1) {
            return Output::Fail('订单无法取消');
        }
        $result = Order::where('user_id', $user_id)
            ->where('id', $id)
            ->where('state', 1)
            ->update(['state' => 7]);
        return Output::Result($result, '已取消', '取消失败');
    }

    /**
     * 订单发货
     * @param Request $request
     * @return \App\Services\_Data
     */
    public function orderSend(Request $request)
    {
        $id = $request->get('id');
        $delivery_company = $request->get('delivery_company');
        $delivery_no = $request->get('delivery_no');
        $user_id = Auth::id();
        $order = Order::where('seller_id', $user_id)->findOrFail($id);
        if ($order->state != 2) {
            return Output::Fail('订单状态错误');
        }
        $result = OrderService::sendOrder($order, $delivery_company, $delivery_no);
        return Output::Result($result, '发货成功', '发货失败');
    }

    /**
     * 订单确认完成
     * @param Request $request
     * @return \App\Services\_Data
     */
    public function orderConfirm(Request $request)
    {
        //客户确认订单
        $id = $request->get('order_id');
        $user_id = Auth::id();
        $order = Order::where('user_id', $user_id)->findOrFail($id);
        if ($order->state != 3) {
            return Output::Fail('订单状态错误');
        }
        $result = OrderService::confirmOrder($order);

        return Output::Result($result, '确认收货成功', '确认失败');
    }

    /**
     * 测试支付
     * @param Request $request
     * @return \App\Services\_Data
     */
    public function testPay(Request $request)
    {
        $id = $request->get('order_id');
        $user_id = Auth::id();
        $type = $request->get('type');
        if (empty($type)) {
            $type = 'order';
        }
        if (!config('app.testenv')) {
            return Output::Fail('');
        }
        $orderService = new OrderService();
        switch ($type) {
            case 'order':
                $order = Order::where('user_id', $user_id)->findOrFail($id);
                if ($orderService->payOrder($order->order_no, $order->order_amount, '', 'testPay')) {
                    try {
                        //$push = new Push();
                        //$push->pushMessageToSingle($order->serviceUser, '订单提醒', '您有一条新订单，请尽快接单');
                    } catch (\Exception $e) {
                        Log::error($e);
                    }
                    return Output::Success('支付成功');
                }
                break;
            case 'recharge':
                $order = Recharge::where('user_id', $user_id)->findOrFail($id);
                $orderService->payRechargeOrder($order->order_no, $order->money, '', 'testPay');
                return Output::Success('充值成功');
                break;
        }

        return Output::Fail('测试支付失败');
    }

    /**
     * 支付
     * @param Request $request
     * @return $this|\App\Services\_Data
     */
    public function getPayStr(Request $request)
    {
        $user_id = Auth::id();
        $type = $request->get('type');
        $order_id = $request->get('order_id');
        $order = Order::where('user_id', $user_id)->where('state', 1)->findOrFail($order_id);
        $orderService = new OrderService();
        try {
            $payStr = $orderService->getPayStr($order, $type);
            return Output::Success('')
                ->with('payStr', $payStr);
        } catch (\Exception $e) {
            Log::info($e);
            return Output::Fail($e->getMessage());
        }

    }

}
