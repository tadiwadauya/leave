<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLeavesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('leaves', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('paynumber',15)->nullable();
            $table->string('type_of_leave')->nullable();
            $table->string('days_taken',10)->nullable();
            $table->date('date_from')->nullable();
            $table->date('date_to')->nullable();
            $table->string('applied_by')->nullable();
            $table->string('department')->nullable();
            $table->string('address',500)->nullable();
            $table->string('mobile',20)->nullable();
            $table->string('status',4)->nullable();
            $table->string('approved_by',15)->nullable();
            $table->timestamp('approved_when')->nullable();
            $table->string('applier_name')->nullable();
            $table->string('approver_name')->nullable();
            $table->softDeletes();
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
        Schema::dropIfExists('leaves');
    }
}
