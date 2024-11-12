<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MenuItemMenuCategory extends Model
{
    use HasFactory;

    protected $fillable=['menu_item_id', 'menu_category_id'];

    public function menuitem()
    {
        return $this->belongsTo(MenuItem::class,'menu_item_id');
    }

    public function menucategory()
    {
        return $this->belongsTo(MenuCategory::class,'menu_category_id');
    }
}
