<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RoomCategory extends Model
{
    use HasFactory;

    protected $fillable=['category_name', 'description', 'price'];

    public function serviceBills()
    {
        return $this->hasMany(ServiceBill::class);
    }
}
