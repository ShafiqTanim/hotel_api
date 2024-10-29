<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RosterSchedule extends Model
{
    use HasFactory;

    protected $fillable=['employee_id', 'shift_id', 'day_id'];

    // public function employee()
    // {
    //     return $this->belongsTo(Employee::class);
    // }

    // public function shift()
    // {
    //     return $this->belongsTo(Shift::class);
    // }

    // public function day()
    // {
    //     return $this->belongsTo(Day::class);
    // }
}
