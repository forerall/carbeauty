<?php

namespace App\Jobs;

use App\Http\Controllers\Store\Services\OrderService;
use App\User;
use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;

class ProcessUserChain implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $user;

    public function __construct(User $user)
    {
        $this->user = $user;
    }


    public function handle(OrderService $orderService)
    {
        //更新关系
        //$orderService->checkChain($this->user);
        //发放奖励
        $orderService->checkUserUpdateLevel($this->user);
    }
}
