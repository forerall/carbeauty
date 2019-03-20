<?php

use Faker\Generator as Faker;

$factory->define(App\Models\Bill::class, function () {

    $faker = \Faker\Factory::create('zh_CN');
    return [
        'title' =>$faker->text(5),
        'content' =>$faker->text(20), // secret
        'qr_code'=>str_random(15),
        'user_id'=>mt_rand(1,10),

        'state'=>mt_rand(1,3),


//        'receive_at'=>now(),
    ];
});