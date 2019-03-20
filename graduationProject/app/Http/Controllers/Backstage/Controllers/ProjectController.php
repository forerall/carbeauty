<?php

namespace App\Http\Controllers\Backstage\Controllers;

use App\Models\Project;
use App\Services\Output;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ProjectController extends Controller
{
    public function index(Request $request)
    {
        $keyword = $request->get('keyword');

        $list = (new Project())->newQuery();

        if ($keyword) {
            $list->where('name', 'like', '%' . $keyword . '%');
        }

        $list = $list->orderBy('id', 'asc')->paginate(10);
        $list->appends($request->except('page', 'per_page'));
        return view('backstage.project.list')
            ->with('list', $list);
    }

    public function show($id)
    {
        $item = Project::findOrFail($id);
        return view('backstage.project.show')
            ->with('item', $item)
            ->with('mode', 'show');
    }

//    增加
    public function create()
    {
        $item = new Project();
        return view('backstage.project.update')
            ->with('item', $item)
            ->with('mode', 'create');
    }

//新增保存
    public function store(Request $request)
    {

        $item = new Project();
        $data = $request->only('name', 'price','picture','remark');
//        if(array_key_exists('balance',$data)){
//            $data['balance'] = intval($data['balance']*100);
//        }
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
        $item = Project::findOrFail($id);
        return view('backstage.project.update')
            ->with('item', $item)
            ->with('mode', 'edit');
    }


//编辑更改
    public function update(Request $request, $id)
    {
        $item = Project::findOrFail($id);
        $data = $request->only( 'name','price','picture','remark');
        $data = array_filter($data, function ($v) {
            return !empty($v);
        });
        $item->fill($data);
        $result = $item->save();
        return Output::Result($result, '保存成功', '保存失败');
    }

    public function destroy($id)
    {
        $item = Project::findOrFail($id);
        $result = $item->delete();

        return Output::Result($result, '删除成功', '删除失败');
    }



}
