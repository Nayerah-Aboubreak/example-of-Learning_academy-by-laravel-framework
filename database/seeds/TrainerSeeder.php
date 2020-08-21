<?php

use Illuminate\Database\Seeder;
use App\Trainer;

class TrainerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Trainer::create([
            'name' => 'kareem fouad',
            'spec' => 'web development',
            'img' => '1.png'
        ]);

        Trainer::create([
            'name' => 'mostafa mahfoz',
            'spec' => 'web development',
            'img' => '2.png'
        ]);

        Trainer::create([
            'name' => 'ahmed hussein',
            'spec' => 'dentist',
            'img' => '3.png'
        ]);

        Trainer::create([
            'name' => 'hazem mohammed',
            'spec' => 'doctor',
            'img' => '4.png'
        ]);

        Trainer::create([
            'name' => 'magdy mahmoud',
            'spec' => 'english teacher',
            'img' => '5.png'
        ]);
    }
}
