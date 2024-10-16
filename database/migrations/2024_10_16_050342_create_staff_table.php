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
        Schema::create('staff', function (Blueprint $table) {
            $table->id();
            $table->string('username')->unique(); // Ensure username is unique
            $table->string('password'); // Store hashed passwords
            $table->string('first_name');
            $table->string('last_name');
            $table->string('email')->unique(); // Ensure email is unique
            $table->string('phone_number')->nullable(); // Make phone number optional
            $table->enum('role', ['admin', 'manager', 'receptionist', 'cleaning'])->default('receptionist');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('staff');
    }
};
