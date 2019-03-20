<?php

namespace App\Http\Controllers\Backstage\Controllers;

use App\Http\Controllers\Store\Models\LevelRequest;
use App\Http\Controllers\Store\Services\OrderService;
use App\Jobs\ProcessLevelReward;
use App\Services\Output;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use App\Jobs\ProcessUserChain;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class UserController extends Controller
{

    public function index(Request $request)
    {
        $keyword = $request->get('keyword');

        $list = (new User())->newQuery();
        $state = $request->get('state');
        if ($keyword) {
            $list->where('name', 'like', '%' . $keyword . '%');
        }

        if ($state) {
            $list->where('state', $state);
        }

        $list = $list->orderBy('id', 'asc')->paginate(10);
        $list->appends($request->except('page', 'per_page'));
        return view('backstage.user.list')
            ->with('list', $list);
    }


    public function show($id)
    {
        $item = User::findOrFail($id);
        return view('backstage.user.show')
            ->with('item', $item)
            ->with('mode', 'show');
    }

//    增加
    public function create()
    {
        $item = new User();
        return view('backstage.user.update')
            ->with('item', $item)
            ->with('mode', 'create');
    }

//新增保存
    public function store(Request $request)
    {

        $this->validate($request, [
            'name' => 'required',
            'idNumber' => 'required|size:18',
            'phone' => 'required|size:11',

        ], [
            'name.required' => '姓名不能为空',
            'idNumber.required' => '身份证号码不能为空',
            'idNumber.size' => '身份证号码为18位',
            'phone.required' => '手机号不能为空',
            'phone.size' => '手机号为11位',
        ]);
        $item = new User();
        $data = $request->only('name', 'sex', 'address', 'phone', 'idNumber','plate_number');
        $data = array_filter($data, function ($v) {
            return !empty($v);
        });
        $item->fill($data);

        $password = $request->get('password');

        if ($password) {
            $item->password = bcrypt($password);
        }

        $result = $item->save();

        return Output::Result($result, '添加成功', '添加失败');
    }

//    编辑
    public function edit($id)
    {
        $item = User::findOrFail($id);
        return view('backstage.user.update')
            ->with('item', $item)
            ->with('mode', 'edit');
    }


//编辑更改
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'required',
            'idNumber' => 'required|size:18',
            'phone' => 'required|size:11',

        ], [
            'name.required' => '姓名不能为空',
            'idNumber.required' => '身份证号码不能为空',
            'idNumber.size' => '身份证号码为18位',
            'phone.required' => '手机号不能为空',
            'phone.size' => '手机号为11位',
        ]);
        $item = User::findOrFail($id);
        $data = $request->only('name', 'sex', 'address', 'phone', 'idNumber','plate_number');
        $data = array_filter($data, function ($v) {
            return !empty($v);
        });
        $item->fill($data);
        $password = $request->get('password');

        if ($password) {
            $item->password = bcrypt($password);
        }
        $result = $item->save();
        return Output::Result($result, '保存成功', '保存失败');
    }

    public function destroy($id)
    {
        $item = User::findOrFail($id);
        $result = $item->delete();

        return Output::Result($result, '删除成功', '删除失败');
    }

}
