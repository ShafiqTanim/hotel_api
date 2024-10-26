<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FoodBill extends Model
{
    use HasFactory;

    protected $fillable=['order_id', 'total_amount', 'issue_date'];
}
