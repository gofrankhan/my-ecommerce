<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubCategory extends Model
{
    use HasFactory;

    protected $fillable = [
        'category_id',
        'category_name_en',
        'category_name_bn',
        'category_slug_en',
        'category_slug_bn',
    ];

    public function category(){
    	return $this->belongsTo(Category::class,'category_id','id');
    }
}
