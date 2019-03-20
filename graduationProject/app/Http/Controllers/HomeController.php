<?php

namespace App\Http\Controllers;

use App\Jobs\ProcessTest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redis;

class HomeController extends Controller
{
    public function index()
    {
        $files = glob(public_path('img/*.png'));
        foreach ($files as $file) {
            $f = basename($file);
            $r = substr($f, 0, strpos($f, '.'));
            echo "'[$r]':'$f',";
            echo '<br>';
        }
        dd('');
        return view('home');
    }

    public function addToQueue()
    {
        dispatch(new ProcessTest());
    }
}
