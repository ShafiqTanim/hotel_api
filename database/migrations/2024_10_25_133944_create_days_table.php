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
        Schema::create('days', function (Blueprint $table) {
            $table->id();
            $table->string('name')->unique(); // Day name (unique)
            $table->timestamps();
        });

        // Insert day names
        DB::table('days')->insert([
            ['name' => 'sat'],
            ['name' => 'sun'],
            ['name' => 'mon'],
            ['name' => 'tue'],
            ['name' => 'wed'],
            ['name' => 'thu'],
            ['name' => 'fri'],
        ]);
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('days');
    }
};
