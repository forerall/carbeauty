<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name',20)->unique();
            $table->string('store_name',40);
            $table->tinyInteger('sex')->default(0)->comment('性别：0保密 1男 2女');
            $table->string('avatar',100)->default("");
            $table->char('idNumber',18);
            $table->char('phone',11)->nullable();
            $table->string('address',100)->nullable();
            $table->tinyInteger('state')->default(1)->comment('审核：1待审核 2已通过 3已拒绝');
            //            $table->string('email',64)->nullable();
            //            $table->text('remark')->nullable();

            $table->timestamps();
            $table->softDeletes();
            $table->rememberToken();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
