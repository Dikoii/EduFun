<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\Writer;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class WriterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create('id_ID');

        for ($i = 1; $i <= 2; $i++) {
            Writer::create([
                'category_id' => 1,
                'name' => $faker->name(),
                'image' => 'Asset/writer/writer-'. $i .'.jpg',
            ]);
        }
        
        Writer::create([
            'category_id' => 2,
            'name' => $faker->name(),
            'image' => 'Asset/writer/writer-3.jpg',
        ]);
    }
}
