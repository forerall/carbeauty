<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Store\Models\UserAddress;
use App\Services\Output;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class AddressController extends Controller
{
    //地址列表
    public function index(Request $request)
    {
        $user_id = Auth::id();
        $list = UserAddress::with('area')
            ->where('user_id', $user_id)
            ->get();
        //$list->appends($request->except('page', 'per_page'));
        return Output::Success('')
            ->with('addressList', $list);
    }

    //删除
    public function destroy($id)
    {
        $user_id = Auth::id();
        $item = UserAddress::where('user_id', $user_id)->findOrFail($id);
        $result = $item->delete();

        return Output::Result($result, '删除成功', '删除失败');
    }

    public function show($id)
    {
        $user_id = Auth::id();
        $item = UserAddress::with('area')->where('user_id', $user_id)->findOrFail($id);
        return Output::Success('')
            ->with('address', $item);
    }

    //添加
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'phone' => 'required',
            'area_code' => 'required',
            'address' => 'required',
        ], [
            'name.required' => '姓名不能为空',
            'phone.required' => '手机号不能为空',
            'area_code.required' => '地区不能为空',
            'address.required' => '地址不能为空',
        ]);
        $user = Auth::user();
        $item = new UserAddress();
        $data = $request->only('name', 'phone', 'area_code', 'address', 'default');
        $data = array_filter($data, function ($v) {
            return !empty($v);
        });
        $item->fill($data);
        $item->user_id = $user->id;
        $result = $item->save();
        return Output::Result($result, '添加成功', '添加失败')
            ->with('address', $item);
    }

    //修改
    public function update(Request $request, $id)
    {
        //更新任意字段
        $user_id = Auth::id();
        $item = UserAddress::where('user_id', $user_id)->findOrFail($id);
        $data = $request->only('name', 'phone', 'area_code', 'address', 'default');
        $data = array_filter($data, function ($v) {
            return !empty($v);
        });
        $item->fill($data);
        //
        if ($request->get('default', 0) == 1) {
            UserAddress::where('user_id', $user_id)->update(['default' => 0]);
        }
        $result = $item->save();
        return Output::Result($result, '保存成功', '保存失败')
            ->with('address', $item);
    }

}
