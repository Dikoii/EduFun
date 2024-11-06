<?php

namespace Database\Seeders;

use App\Models\Writer;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class WriterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $name = [
            'Raka Putra Wicaksono',
            'Bia Mecca Annisa',
            'Abi Firmansyah'
        ];

        foreach ($name as $nama){
            Writer::create([
                'name'  => $nama
            ]);
        }
    }
}
