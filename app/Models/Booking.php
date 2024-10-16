<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Booking extends Model
{
    use HasFactory;

    protected $fillable=['id', 'customer_id', 'room_id', 'check_in_date', 'check_out_date', 'status', 'staff_id'];
}
