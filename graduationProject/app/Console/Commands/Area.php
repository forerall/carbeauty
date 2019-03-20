<?php

namespace App\Console\Commands;

use Carbon\Carbon;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;

class Area extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'command:area';

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


        $areas = \App\Models\Area::get();
        foreach ($areas as $area) {

            $full_name = [$area->name];
            if ($area->level == 2) {
                $p = \App\Models\Area::where('code', $area->code1 . '0000')->first();
                if (is_null($p)) {
                    $this->info($area->code);
                }
                $full_name[] = $p->name;
            }else if ($area->level == 3) {
                $p = \App\Models\Area::where('code', $area->code1 . $area->code2 . '00')->first();
                if (is_null($p)) {
                    $this->info($area->code);
                }
                $full_name[] = $p->name;

                $p = \App\Models\Area::where('code', $area->code1 . '0000')->first();
                if (is_null($p)) {
                    $this->info($area->code);
                }
                $full_name[] = $p->name;
            }


            $area->full_name = implode(' ', array_reverse($full_name));
            $area->save();

//            $data[] = [
//                'name' => $area->name,
//                'full_name' => implode(' ', $full_name),
//                'parent_code' => $area->parent_code,
//                'code' => $area->code,
//                'code1' => $area->code1,
//                'code2' => $area->code2,
//                'code3' => $area->code3,
//                'level' => $area->level,
//                'created_at' => Carbon::now(),
//                'updated_at' => Carbon::now(),
//            ];
        }
    }
}
