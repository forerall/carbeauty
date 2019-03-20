<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBillsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bills', function (Blueprint $table) {
            $table->increments('id');
            $table->char('title',20);
            $table->string('content',255);
            $table->string('qr_code')->nullable();
            $table->integer('user_id')->nullable();
            $table->timestamps();
            $table->timestamp('receive_at')->nullable();
            $table->tinyInteger('state')->default(1)->comments("1待确认 2已确认 3已拒绝");
            $table->string('remark',255)->nullable();
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('bills');
    }
}
