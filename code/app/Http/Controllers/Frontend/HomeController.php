<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use TCG\Voyager\Models\Page;
use TCG\Voyager\Models\Post;
use TCG\Voyager\Models\Category;

class HomeController extends Controller
{
  /**
   * Display a listing of the resource.
   *
   * @return Application|Factory|View|Response
   */
  public function index()
  {
    $home_films = \App\Models\Film::with('types')->whereHas('categories', function($q) {
      $q->where('slug', 'phim-de-xuat')->where('status', 'ACTIVE');
    })->latest()->limit(6)->get();

    $banners = \App\Models\Banner::where('type', 'home')->where('status', 'ACTIVE')->get();
    $banner2s = \App\Models\Banner::where('type', 'home2')->where('status', 'ACTIVE')->get();
    $about = \App\Models\Page::where('slug', 'about')->where('status', 'ACTIVE')->first();
    $cate_sukien = Category::where('slug', 'su-kien')->first();
    $cate_tintuc = Category::where('slug', 'tin-tuc')->first();
    $sukiens = Post::where('category_id', $cate_sukien->id)->where('status', 'PUBLISHED')->limit(4)->get();
    $tintucs = Post::where('category_id', $cate_tintuc->id)->where('status', 'PUBLISHED')->limit(4)->get();

    $gallery = \App\Models\Banner::where('type', 'gallery')->where('status', 'ACTIVE')->first();

    $upcoming_films = \App\Models\FilmCategory::where('slug', 'phim-sap-chieu')->with('films')->first();
    if ($upcoming_films) {
      $upcoming_films->films = \App\Models\Film::with('types')->whereHas('categories', function($q) use ($upcoming_films) {
        $q->where('slug', $upcoming_films->slug);
      })->where('status', 'ACTIVE')->latest()->limit(8)->get();
    }

    $playing_films = \App\Models\FilmCategory::where('slug', 'phim-dang-chieu')->with('films')->first();
    if ($playing_films) {
      $playing_films->films = \App\Models\Film::with('types')->whereHas('categories', function($q) use ($playing_films) {
        $q->where('slug', $playing_films->slug);
      })->where('status', 'ACTIVE')->latest()->limit(8)->get();
    }

    return view('frontend.home.index', compact('banners', 'banner2s','about','upcoming_films', 'sukiens', 'tintucs', 'cate_sukien', 'cate_tintuc', 'gallery', 'playing_films'));
  }

  public function search(Request $request)
  {
    $search_type = $request->input('search_type', 'news');
    $search = $request->input('search', '');

    if ($search_type == 'tv') {
      return redirect((route('films.index').'?search_type='.$search_type.'&search='.$search));
    }
    else {
      return redirect((route('posts.index').'?search_type='.$search_type.'&search='.$search));
    }
  }
}
