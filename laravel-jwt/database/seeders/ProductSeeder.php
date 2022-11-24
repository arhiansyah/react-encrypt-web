<?php

namespace Database\Seeders;

use App\Models\Product;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        collect([
            [
                'name' => 'TV LG 15`inch',
                'image' => 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQwAoZLDkDcVEJ0-kyT_a7rO1eP2DUvsZLpizo5nPUrDzvFV7Oql6BGvtotNNqNYMeTyttFeSFs3G1hDY5m6gb8x8yUzB022bLgOfhOpig&usqp=CAE'
            ],

        ])->each(function ($data) {
            Product::create($data);
        });
    }
}
