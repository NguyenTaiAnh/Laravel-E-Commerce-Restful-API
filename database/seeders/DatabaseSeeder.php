<?php

namespace Database\Seeders;

use App\Models\Product;
use App\Models\Review;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
//        Product::factory()->count(50)->create();
        Product::factory()->count(50)->make()->each(function ($product){
            $product->user()->associate(User::inRandomOrder()->first());
            $product->save();
        });
        Review::factory()->count(100)->create();
        User::factory()->count(5)->create();
    }
}
