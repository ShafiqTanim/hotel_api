<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Booking extends Model
{
    use HasFactory;

    protected $fillable=['customer_id', 'room_list_id', 'contact_no', 'check_in_date', 'check_out_date', 'number_of_guest_adult', 'number_of_guest_child', 'total_amount', 'discount', 'vat', 'status', 'cancel_reason'];

    public function customerid()
    {
        return $this->belongsTo(Customer::class,'customer_id');
    }
    public function roomlistid()
    {
        return $this->belongsTo(RoomList::class,'room_list_id');
    }
}
