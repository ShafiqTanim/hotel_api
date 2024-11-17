<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ServiceBill extends Model
{
    use HasFactory;

    protected $fillable=['booking_id', 'service_list_id', 'quantity', 'discount', 'vat', 'total_price'];

    public function servicelist()
    {
        return $this->belongsTo(ServiceList::class,'service_list_id');
    }
}
