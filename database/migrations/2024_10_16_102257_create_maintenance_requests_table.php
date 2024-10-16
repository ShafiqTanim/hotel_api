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
        Schema::create('maintenance_requests', function (Blueprint $table) {
            $table->id();
            $table->foreignId('room_id')->constrained()->onDelete('cascade'); // Foreign key for room_id
            $table->foreignId('staff_id')->constrained()->onDelete('cascade'); // Foreign key for staff_id
            $table->timestamp('request_date')->default(DB::raw('CURRENT_TIMESTAMP')); // Default current timestamp
            $table->enum('status', ['pending', 'in_progress', 'completed'])->default('pending'); // Status field
            $table->text('description')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('maintenance_requests');
    }
};
