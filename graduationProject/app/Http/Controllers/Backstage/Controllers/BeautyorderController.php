<?php

namespace App\Http\Controllers\Backstage\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Beautyorder;
use App\Services\Output;


class BeautyorderController extends Controller
{
    public function index(Request $request)
    {
        $keyword = $request->get('keyword');
        $state=$request->get('state');
        $list =Beautyorder::with(['user','project']);

        if($state){
            $list->where('state',$state);
        }

        if ($keyword) {
            $list->where('id', $keyword);
        }

        $list = $list->orderBy('id', 'asc')->paginate(10);
        $list->appends($request->except('page', 'per_page'));
        return view('backstage.beautyorder.list')
            ->with('list', $list);
    }

    public function show($id)
    {
        $item = Beautyorder::findOrFail($id);
        return view('backstage.beautyorder.show')
            ->with('item', $item)
            ->with('mode', 'show');
    }
    public function checkOrder(Request $request){
        $id=$request->get('id');
        $state=$request->get('state');
        $item = Beautyorder::findOrFail($id);
        $item->state = $state;
        if($state==2){
            $item->received_at=now();
        }

        $result = $item->save();
        return Output::Result($result, '确认成功', '确认失败');
    }
    
    public function destroy($id)
    {
        $item = Beautyorder::findOrFail($id);
        $result = $item->delete();

        return Output::Result($result, '删除成功', '删除失败');
    }


}
