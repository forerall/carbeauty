<?php

namespace App\Http\Controllers\Backstage\Controllers;

use App\Models\Example;
use App\Services\Output;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;


class ExampleController extends Controller
{
    public function index(Request $request)
    {
        $keyword = $request->get('keyword');

        $list = (new Example())->newQuery();

        if ($keyword) {
            $list->where('id', 'like', '%' . $keyword . '%');
        }

        $list = $list->orderBy('id', 'asc')->paginate(10);
        $list->appends($request->except('page', 'per_page'));
        return view('backstage.example.list')
            ->with('list', $list);
    }

    public function show($id)
    {
        $item = Example::findOrFail($id);
        return view('backstage.example.show')
            ->with('item', $item)
            ->with('mode', 'show');
    }

//    增加
    public function create()
    {
        $item = new Example();
        return view('backstage.example.update')
            ->with('item', $item)
            ->with('mode', 'create');
    }

//新增保存
    public function store(Request $request)
    {

        $item = new Example();
        $data = $request->only('user_id', 'project_id','picture','created_at');

        $data = array_filter($data, function ($v) {
            return !empty($v);
        });
        $item->fill($data);
        $result = $item->save();

        return Output::Result($result, '添加成功', '添加失败');
    }

//    编辑
    public function edit($id)
    {
        $item = Example::findOrFail($id);
        return view('backstage.example.update')
            ->with('item', $item)
            ->with('mode', 'edit');
    }


//编辑更改
    public function update(Request $request, $id)
    {
        $item = Example::findOrFail($id);
        $data = $request->only('user_id', 'project_id','picture');
        $data = array_filter($data, function ($v) {
            return !empty($v);
        });
        $item->fill($data);
        $result = $item->save();
        return Output::Result($result, '保存成功', '保存失败');
    }

    public function destroy($id)
    {
        $item = Example::findOrFail($id);
        $result = $item->delete();

        return Output::Result($result, '删除成功', '删除失败');
    }



}
