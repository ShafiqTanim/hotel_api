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
        Schema::create('roles', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('role_identity');
            $table->timestamps();
        });

        DB::table('roles')->insert([
            ['name' => 'Admin',
            'role_identity' => 'admin',
            'created_at' => Carbon::now(),
        ],[
            'name' => 'Manager',
            'role_identity' => 'manager',
            'created_at' => Carbon::now(),
        ],[
            'name' => 'Receptionist',
            'role_identity' => 'receptionist',
            'created_at' => Carbon::now(),
        ],[
            'name' => 'House Keeping',
            'role_identity' => 'housekeeping',
            'created_at' => Carbon::now(),
        ]]);
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('roles');
    }
};
