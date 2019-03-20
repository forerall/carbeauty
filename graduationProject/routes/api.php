<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::get('/about', 'Api\\LoginController@about');
Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('/upload', 'CommonController@upload');
Route::group([
    'namespace' => 'Api',
], function () {
    Route::post('/register', 'LoginController@register');
    Route::post('/sendRegisterCode', 'LoginController@sendRegisterCode');
    Route::post('/login', 'LoginController@loginByPassword');
    Route::post('/resetPassword', 'LoginController@resetPassword');


    Route::group([
        'middleware' => 'api_auth_sometime'
    ], function () {
        Route::get('productList', 'StoreController@productList');
        Route::get('productDetail', 'StoreController@productDetail');
        Route::get('cartInfo', 'StoreController@cartInfo');
        Route::get('products', 'StoreController@products');
        Route::get('buyList', 'StoreController@buyList');



        Route::get('indexPage', 'StoreController@indexPage');//首页
        Route::get('category', 'StoreController@category');//分类


    });

    Route::group([
        'middleware' => 'api_auth'
    ], function () {
        Route::post('collect', 'StoreController@collect');


        //用户中心
        Route::resource('address', 'AddressController');
        Route::get('userLevelEdit', 'UserController@userLevelEdit');
        Route::post('saveLevel', 'UserController@saveLevel');
        Route::post('chargeScore', 'UserController@chargeScore');
        Route::get('inviteList', 'UserController@inviteList');
        Route::get('balance', 'UserController@balance');
        Route::get('userInfo', 'UserController@userInfo');
        Route::post('withdraw', 'UserController@withdraw');
        Route::post('feedback', 'UserController@feedback');
        Route::post('saveUserInfo', 'UserController@saveUserInfo');
        Route::post('modifyPayPassword', 'UserController@modifyPayPassword');
        Route::post('modifyPassword', 'UserController@modifyPassword');
        Route::get('inviteTj', 'UserController@inviteTj');


        Route::get('orderDetail', 'StoreController@orderDetail');
        Route::get('orderList', 'StoreController@orderList');
        Route::post('saveOrder', 'StoreController@saveOrder');
        Route::get('preOrder', 'StoreController@preOrder');
        Route::post('orderCancel', 'StoreController@orderCancel');
        Route::post('orderSend', 'StoreController@orderSend');
        Route::post('orderConfirm', 'StoreController@orderConfirm');
        Route::get('testPay', 'StoreController@testPay');
        Route::get('getPayStr', 'StoreController@getPayStr');

    });
});
