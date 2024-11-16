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
        Schema::create('bookings', function (Blueprint $table) {
            $table->id();
            $table->foreignId('customer_id')->constrained()->onDelete('cascade');
            $table->foreignId('room_list_id')->nullable()->constrained()->onDelete('set null');
            $table->string('contact_no');
            $table->date('check_in_date');
            $table->date('check_out_date')->nullable();
            $table->string('number_of_guest_adult', 2);
            $table->string('number_of_guest_child', 2);
            $table->decimal('total_amount', 10, 2)->nullable();
            $table->decimal('discount', 10, 2)->nullable();
            $table->decimal('vat', 10, 2)->nullable();
            $table->integer('status')->default(0)->comment('0 active, 1 cancelled')->nullable();
            $table->text('cancel_reason')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('bookings');
    }
};
