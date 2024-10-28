<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use HasFactory;

    protected $fillable=['name', 'role_id', 'contact', 'email', 'address', 'nationality', 'hire_date'];

    public function role()
    {
        return $this->belongsTo(Role::class);
    }

    public function rosterSchedules()
    {
        return $this->hasMany(RosterSchedule::class);
    }
}
