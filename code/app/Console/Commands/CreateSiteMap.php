<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use TCG\Voyager\Models\Page;
use TCG\Voyager\Models\Post;
use Carbon\Carbon;

class CreateSiteMap extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'sitemap:create';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
      // create new sitemap object
      $sitemap = \App::make("sitemap");

      // add items to the sitemap (url, date, priority, freq)
      $sitemap->add(\URL::to('/'), Carbon::now()->toDateTimeString() , '1.0', 'weekly');

      // page in home
      $sitemap->add(\URL::to('/gioi-thieu'), Carbon::now()->toDateTimeString() , '0.9', 'weekly');
      $sitemap->add(\URL::to('/lien-he'), Carbon::now()->toDateTimeString() , '0.9', 'weekly');
      $sitemap->add(\URL::to('/products'), Carbon::now()->toDateTimeString() , '0.9', 'weekly');

      // get all page from db
      $posts = \DB::table('posts')->where('status','published')->orderBy('created_at', 'desc')->get();
      $sitemap->add(\URL::to('/news'), Carbon::now()->toDateTimeString() , '0.8', 'weekly');

      foreach ($posts as $post)
      {
        $sitemap->add(\URL::to('/'). "/posts/{$post->slug}", $post->updated_at, '0.7', 'weekly');
      }

      // get all posts from db
      $works = \DB::table('works')->where('active',1)->orderBy('created_at', 'desc')->get();
      $sitemap->add(\URL::to('/works'), Carbon::now()->toDateTimeString() , '0.8', 'weekly');

      foreach ($works as $work)
      {
        $sitemap->add(\URL::to('/'). "/works/{$work->slug}", $work->updated_at, '0.7', 'weekly');
      }

      // generate your sitemap (format, filename)
      $sitemap->store('xml', 'sitemap');
    }
}
