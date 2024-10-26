<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RoomList extends Model
{
    use HasFactory;

    protected $fillable=['id', 'room_number', 'room_type', 'status', 'pricing_id'];
}
