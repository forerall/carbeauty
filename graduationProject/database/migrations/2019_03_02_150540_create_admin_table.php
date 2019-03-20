<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAdminTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('g_admin', function (Blueprint $table) {
            $table->increments('id');
            $table->char('name', 20);
            $table->string('avatar', 255)->nullable();
            $table->string('email', 255)->nullable();
            $table->char('password', 255);
            $table->tinyInteger('type');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('g_admin');
    }
}
