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
        Schema::create('payments', function (Blueprint $table) {
            $table->id();
            $table->foreignId('booking_id')->constrained(); // Foreign key for booking
            $table->dateTime('payment_date'); // Payment date
            $table->decimal('amount', 10, 2); // Amount of the payment
            $table->string('payment_method'); // Method of payment (e.g., credit card, cash)
            $table->enum('status', ['paid', 'pending', 'refunded'])->default('paid');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('payments');
    }
};
