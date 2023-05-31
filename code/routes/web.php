<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('clear-cache', function () {
  Artisan::call('config:clear');
  Artisan::call('cache:clear');
//  Artisan::call('view:clear');
//  Artisan::call('router:clear');
//    Artisan::call('storage:link');
  return 'xong';
});

Route::group([], function (){
  Route::get('/',[\App\Http\Controllers\Frontend\HomeController::class, 'index'])->name('index');
  Route::get('/lien-he',[\App\Http\Controllers\Frontend\ContactController::class, 'index'])->name('contact');
  Route::get('/gioi-thieu',[\App\Http\Controllers\Frontend\AboutController::class, 'index'])->name('about');
  Route::get('/phim', [\App\Http\Controllers\Frontend\FilmController::class, 'index'])->name('films.index');
  Route::get('/phim/{slug}', [\App\Http\Controllers\Frontend\FilmController::class, 'show'])->name('films.show');
  Route::get('/news', [\App\Http\Controllers\Frontend\PostController::class, 'index'])->name('posts.index');
  Route::get('/posts/{slug}', [\App\Http\Controllers\Frontend\PostController::class, 'show'])->name('posts.show');
  Route::get('/category/{slug}', [\App\Http\Controllers\Frontend\PostController::class, 'category_news'])->name('posts.category');
  Route::get('/pages/{slug}', [\App\Http\Controllers\Frontend\PageController::class, 'show'])->name('pages.show');
  Route::get('/lich-chieu', [\App\Http\Controllers\Frontend\ShowtimeController::class, 'index'])->name('showtimes.index');
  Route::get('/lich-chieu/{slug}', [\App\Http\Controllers\Frontend\ShowtimeController::class, 'show'])->name('showtimes.show');
  Route::post('/feedback',[\App\Http\Controllers\Frontend\FeedbackController::class,'store'])->name('feedback');
  Route::post('/search',[\App\Http\Controllers\Frontend\HomeController::class,'search'])->name('search');
});

Route::get('sitemap-create', function () {
  Artisan::call('sitemap:create');

  return 'xong';
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
