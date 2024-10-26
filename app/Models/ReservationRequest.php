<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ReservationRequest extends Model
{
    use HasFactory;

    protected $fillable=['customer_name', 'room_list_id', 'contact_no', 'check_in_date', 'check_out_date', 'number_of_guest_adult', 'number_of_guest_child'];
}
