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
        Schema::create('room_lists', function (Blueprint $table) {
            $table->id();
            $table->string('room_number')->unique(); // Room number
            $table->enum('room_type', ['single', 'double', 'suite', 'deluxe']); // Room type
            $table->enum('status', ['available', 'booked', 'maintenance'])->default('available'); // Status (e.g., available, booked)
            $table->foreignId('pricing_id')->constrained();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('rooms');
    }
};
