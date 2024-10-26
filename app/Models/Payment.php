<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    use HasFactory;

    protected $fillable=['booking_id', 'service_bill_id', 'amount', 'payment_date', 'payment_method', 'status'];
}
