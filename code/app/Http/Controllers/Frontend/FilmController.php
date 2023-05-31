<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class FilmController extends Controller
{
  public function index(Request $request)
  {
    $category = $request->input('category', null);
    $search = $request->input('search', '');
    $types = $request->input('types', []);
    $order_by = $request->input('order_by', 'desc');
    $banner = \App\Models\Banner::where('type', 'search')->where('status', 'ACTIVE')->first();

    $film_categories = \App\Models\FilmCategory::get();
    $film_types = \App\Models\FilmType::get();

    $films = \App\Models\Film::with('types')->where('status', 'ACTIVE')->latest()
      ->where('title', 'like', '%'.$search.'%')
      ->orderBy('created_at', $order_by);
    
    if ($category) {
      if ($this->checkInCategory($film_categories, $category)) {
        $films = $films->whereHas('categories', function($q) use ($category) {
          $q->where('slug', $category);
        });
      }
    }

    foreach($types as $type) {
      $films = $films->whereHas('types', function($q) use ($type) {
        $q->where('title', $type);
      });
    }

    $films = $films->paginate(8);
    $films->appends(request()->query());
    
    $pageMeta = [
      'title' => $banner->title ?? 'Danh sách phim',
      'image' => $banner->image ?? null,
      'meta_description' => $banner->description ?? null
    ];

    return view('frontend.films.index', compact('pageMeta','banner', 'film_categories', 'films', 'film_types'));
  }

  public function show(Request $request, $slug)
  {
    $banner = \App\Models\Banner::where('type', 'product')->where('status', 'ACTIVE')->first();

    $film = \App\Models\Film::with('types', 'authors')->where('slug', $slug)->where('status', 'ACTIVE')->first();

    if (!$film) {
      return redirect('/');
    }

    $type_ids = [];
    foreach($film->types as $type) {
      $type_ids[] = $type->id;
    }

    $related_films = \App\Models\Film::where('status', 'ACTIVE')->where('slug', '!=', $film->slug)
      ->whereHas('types', function($q) use ($type_ids) {
        $q->whereIn('film_types.id', $type_ids);
      })->limit(4)->get();

    $hot_films = \App\Models\Film::where('hot', 1)->where('status', 'ACTIVE')->where('slug', '!=', $film->slug)->limit(4)->get();

    $pageMeta = [
      'title' => $film->title ?? null,
      'image' => $film->image ?? null,
      'meta_description' => $film->description ?? null
    ];

    return view('frontend.films.show', compact('banner', 'film', 'related_films', 'hot_films'));
  }

  private function checkInCategory($categories, $slug) {
    foreach($categories as $category) {
      if ($category->slug == $slug) {
        return true;
      }
    }
    return false;
  }
}
