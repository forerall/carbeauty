<?php
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//第三方回调
Route::any('/wxpayCallback', 'Api\PayCallbackController@wxpayCallback');//微信支付
Route::any('/alipayCallback', 'Api\PayCallbackController@alipayCallback');//支付宝支付
/**
 * 全局上传接口
 */
Route::post('/upload', 'CommonController@upload');
Route::get('/downloadQrcode', 'CommonController@downloadQrcode');

Route::any('/wxpayCallback', 'Api\PayCallbackController@wxpayCallback');//微信支付
Route::any('/alipayCallback', 'Api\PayCallbackController@alipayCallback');//支付宝支付

Auth::routes();

/**
 * 后台路由
 */
\App\Http\Controllers\Backstage\BackstageRoute::routes();
\App\Tools\Wechat\Weixin\WxShareLogin::routes();

//web前端路由
Route::group([
    'prefix' => '',
    'namespace'=>'Home'
], function () {
    Route::get('/index', 'IndexController@index');
    Route::get('/project', 'IndexController@project');
    Route::get('/example', 'IndexController@example');
    Route::get('/customer', 'IndexController@customer');
    Route::get('/about', 'IndexController@about');




    Route::get('/showlist', 'AppController@showlist');
    Route::get('/content', 'AppController@content');
    Route::get('/qrcode', 'AppController@qrcode');
});


Route::group([
    'prefix' => 'app',
], function () {
    Route::match(['get', 'post'],'/register', 'AppController@register');
    Route::get('/register', 'AppController@register');
    Route::get('/showlist', 'AppController@showlist');
    Route::get('/content', 'AppController@content');
    Route::get('/qrcode', 'AppController@qrcode');
});




Route::group([
    'prefix' => 'app',
], function () {
    Route::match(['get', 'post'],'/register', 'AppController@register');
    Route::get('/register', 'AppController@register');
    Route::get('/showlist', 'AppController@showlist');
    Route::get('/content', 'AppController@content');
    Route::get('/qrcode', 'AppController@qrcode');
});


Route::get('/', 'HomeController@index');


