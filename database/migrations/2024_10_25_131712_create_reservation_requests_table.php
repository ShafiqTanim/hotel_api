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
        Schema::create('reservation_requests', function (Blueprint $table) {
            $table->id();
            $table->string('customer_name'); // Change to string for name
            $table->foreignId('room_list_id')->nullable()->constrained();
            $table->string('contact_no');
            $table->date('check_in_date');
            $table->date('check_out_date');
            $table->string('number_of_guest_adult', 2);
            $table->string('number_of_guest_child', 2);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('reservation_requests');
    }
};
