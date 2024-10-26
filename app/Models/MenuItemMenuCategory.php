<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MenuItemMenuCategory extends Model
{
    use HasFactory;

    protected $fillable=['menu_item_id', 'menu_category_id'];
}
