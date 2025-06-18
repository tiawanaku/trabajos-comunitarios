<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class ComunitarioSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        \App\Models\Comunitario::factory(10)->create();
    }
}
