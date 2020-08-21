<?php

use App\SiteContent;
use Illuminate\Database\Seeder;

class SiteContentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        /*SiteContent::create([
            'name' => 'banner',
            'content' => json_encode([
                'title' =>'EVERY STUDENT YEARNS TO LEARN',
                'subtitle' => 'Making Your Students World Better',
                'desc' => "Replenish seasons may male hath fruit beast were seas saw you arrie said man beast whales his void unto last session for bite. Set have great you'll male grass yielding yielding man",
            ]),
        ]);*/

        SiteContent::create([
            'name' => 'feature',
            'content' => json_encode([
                'maintitle' =>'Awesome Feature',
                'maindesc' => "Set have great you male grass yielding an yielding first their you're have called the abundantly fruit were man",

                'title1' =>'Better Future',
                'desc1' => "Set have great you male grasses yielding yielding first their to called deep abundantly Set have great you male",

                'title2' =>'Qualified Trainers',
                'desc2' => "Set have great you male grasses yielding yielding first their to called deep abundantly Set have great you male",

                'title3' =>'Job Oppurtunity',
                'desc3' => "Set have great you male grasses yielding yielding first their to called deep abundantly Set have great you male",

            ]),
        ]);
        
        
        SiteContent::create([
            'name' => 'courses',
            'content' => json_encode([
                'title' =>'OUR COURSES',
                'subtitle' => 'Different Categories',
            ]),
        ]);
        
    }
}
