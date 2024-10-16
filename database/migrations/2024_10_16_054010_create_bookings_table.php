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
            $table->foreignId('customer_id')->constrained(); // Foreign key for customer
            $table->foreignId('room_id')->constrained(); // Foreign key for room
            $table->dateTime('check_in_date'); // Check-in date
            $table->dateTime('check_out_date'); // Check-out date
            $table->enum('status', ['confirmed', 'checked in', 'checked out', 'canceled'])->default('confirmed'); // Booking status
            $table->foreignId('staff_id')->nullable()->constrained()->onDelete('set null');
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
