<?php
namespace App\Http\Controllers\Backstage;

use Illuminate\Support\Facades\Route;

/**
 * Created by PhpStorm.
 * User: ygy
 * Date: 2018/5/30
 * Time: 14:45
 */
class BackstageRoute
{
    public static function routes()
    {
        Route::get('/backstage/reset', 'Backstage\Controllers\AuthController@reset');
        Route::get('/backstage/login', 'Backstage\Controllers\AuthController@showLoginForm');
        Route::post('/backstage/login', 'Backstage\Controllers\AuthController@login');
        Route::post('/backstage/logout', 'Backstage\Controllers\AuthController@logout');

        Route::group([
            'prefix' => 'backstage',
            'namespace' => 'Backstage\Controllers',
            'middleware' => 'backstage_auth:admin',//后台使用admin验证
        ], function () {


            Route::resource('user', 'UserController');
            Route::resource('project', 'ProjectController');
            Route::resource('beautyorder', 'BeautyorderController');
            Route::post('checkOrder', 'BeautyorderController@checkOrder');
            Route::resource('example', 'ExampleController');


            Route::get('user/check/{id}/{state}', 'UserController@check');
            Route::resource('bill', 'BillController');
            Route::get('bill/check/{id}/{state}', 'BillController@check');



            Route::get('/', 'HomeController@dashboard');
            Route::get('dashboard', 'HomeController@dashboard');
            Route::resource('admin', 'AdminController');
            Route::resource('goods', 'GoodsController');
            Route::post('goodsState', 'GoodsController@goodsState');
            Route::post('goodsOrder', 'GoodsController@goodsOrder');
            Route::resource('feedback', 'FeedbackController');
            Route::resource('category', 'CategoryController');
            Route::resource('brand', 'BrandController');
            Route::get('ajaxBrands', 'BrandController@ajaxBrands');
            Route::resource('order', 'OrderController');

            Route::resource('coupon', 'CouponController');
            Route::resource('couponExchange', 'CouponExchangeController');

            Route::resource('withdraw', 'WithdrawController');
            Route::post('withdrawConfirm', 'WithdrawController@withdrawConfirm');
            Route::get('uplevel', 'UserController@uplevel');
            Route::post('upConfirm', 'UserController@upConfirm');

            Route::match(['get', 'post'], 'indexPageSetting', 'StoreController@indexPageSetting');

            //常规操作路由
            Route::match(['get', 'post'], 'setting', 'HomeController@setting');

        });
    }
}