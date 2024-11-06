<?php

namespace Database\Seeders;

use App\Models\Course;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class CourseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create('id_ID');

        $name = [
            'Machine Learning',
            'Deep Learning',
            'Natural Language Processing',
            'Software Security',
            'Network Administration',
            'Popular Network Technology',
        ];

        for($i = 0; $i<6; $i++){
            Course::create([
                'category_id' => $i < 3 ? 1 : 2,
                'writer_id' => rand(1,3),
                'name' => $name[$i],
                'description' => $faker->text(1000),
                'image' => '1',
            ]);
        }

    }
}
