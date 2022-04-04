<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDriverLeavesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('driver_leaves', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('paynumber',10);
            $table->string('type_of_leave');
            $table->string('days_taken',10);
            $table->date('date_from');
            $table->date('date_to');
            $table->string('applied_by');
            $table->text('address');
            $table->string('mobile');
            $table->string('status',4);
            $table->string('approved_by',10)->nullable();
            $table->timestamp('approved_when')->nullable();
            $table->string('approver_name')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('driver_leaves');
    }
}
