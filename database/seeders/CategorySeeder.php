<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $name = [
            'Data Science',
            'Network Security'
        ];

        foreach ($name as $nama){
            Category::create([
                'name'  => $nama
            ]);
        }
    }
}
