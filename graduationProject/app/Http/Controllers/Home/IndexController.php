<?php

namespace App\Http\Controllers\Home;

use App\Models\Example;
use App\Models\Project;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class IndexController extends Controller
{
    //

    public function index()
    {

//        $ex = M('Example');
//        $example = $ex->order('date desc')->limit(2)->select();
//        $this->assign('example', $example);
//        $pro = M('Project');
//        $project = $pro->order('price asc')->limit(2)->select();
//        $this->assign('project', $project);
//        $this->display();
//        Example::

        $example = Example::with(['user','project']);
        $example = $example->orderBy('id', 'desc')
            ->take(3)->get();

        $project = new Project();
        $project = $project->orderBy('id', 'desc')
            ->take(2)->get();


        return view('Home.index')
            ->with('example', $example)
            ->with('project', $project);
    }

    public function project(Request $request)
    {

        $projectList = (new Project())->newQuery();
        $projectList = $projectList->orderBy('id', 'asc')->paginate(8);
        $projectList->appends($request->except('page', 'per_page'));
        return view('home.project')
            ->with('projectList', $projectList);
    }
    public function example(Request $request)
    {
        $exampleList = (new Example())->newQuery();
        $exampleList = $exampleList->orderBy('id', 'asc')->paginate(4);
        $exampleList->appends($request->except('page', 'per_page'));
        return view('home.example')
            ->with('exampleList', $exampleList);
    }
    public function customer()
    {
        return view('Home.customer');
    }
    public function about()
    {

        return view('home.about');
    }


}
