<?php

namespace App\Console\Commands;

use App\Http\Controllers\Store\Services\OrderService;
use App\Services\BalanceService;
use Carbon\Carbon;
use Illuminate\Console\Command;

class AutoOrder extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'AutoOrder';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $orderService = new OrderService();
        $orderService->checkPay();
        $orderService->checkConfirm();
    }
}
