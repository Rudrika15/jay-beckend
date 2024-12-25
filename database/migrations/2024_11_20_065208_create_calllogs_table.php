<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('calllogs', function (Blueprint $table) {
            $table->id();
            $table->date('date');
            $table->integer('userId');
            $table->text('photo');
            $table->text('description');
            $table->text('address');
            $table->text('part_name')->nullable();
            $table->enum('payment_method', ['cash', 'qr', 'debit'])->nullable();
            $table->integer('total_charge')->nullable();
            $table->integer('qr_id')->nullable();
            $table->enum('status', ['pending', 'cancelled', 'allocated', 'complated', 'waiting'])->default('pending');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('calllogs');
    }
};
