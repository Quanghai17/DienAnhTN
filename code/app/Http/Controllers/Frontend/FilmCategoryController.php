<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class FilmCategoryController extends Controller
{
  public function show(Request $request, $slug)
  {
    $banner = \App\Models\Banner::where('type', 'search')->where('status', 'ACTIVE')->first();

    $films = \App\Models\Film::with('types')->whereHas('categories', function($q) use ($slug) {
      $q->where('slug', $slug);
    })->latest()->paginate(8);
    


    // if ($upcoming_films) {
    //   $upcoming_films->films = \App\Models\Film::with('types')->whereHas('categories', function($q) use ($upcoming_films) {
    //     $q->where('slug', $upcoming_films->slug)->where('status', 'ACTIVE');
    //   })->latest()->limit(8)->get();
    // }

    return view('frontend.films.index', compact('banner'));
  }
}
