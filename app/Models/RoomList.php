<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RoomList extends Model
{
    use HasFactory;

    protected $fillable=['room_number', 'room_category_id', 'description', 'status'];

    /**
     * Get the user that owns the RoomList
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function roomcategory()
    {
        return $this->belongsTo(RoomCategory::class);
    }
}
