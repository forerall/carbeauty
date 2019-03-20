<?php

use Faker\Generator as Faker;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(App\User::class, function () {

    $faker = \Faker\Factory::create('zh_CN');

    return [

        'name' => $faker->unique()->name,
        'store_name'=>$faker->company,
        'sex'=>mt_rand(0,2),
        'idNumber'=>$faker->numerify('640###############'),
        'phone'=>$faker->PhoneNumber,
        'address'=>$faker->address,
        'state'=>mt_rand(1,3),
        'remember_token' => str_random(10),
        //        'email' => $faker->unique()->email,
        //        'remark'=>$faker->text,
    ];
});
