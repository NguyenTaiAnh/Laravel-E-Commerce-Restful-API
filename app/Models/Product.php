<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
//    protected $table='products';
    protected $fillable = [
        'name','detail','stock','price','discount'
    ];
    public function reviews(){
        return $this->hasMany(Review::class);
    }
    public function user(){
        return $this->belongsTo(User::class);
    }
}
