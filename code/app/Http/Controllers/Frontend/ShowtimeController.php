<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ShowtimeController extends Controller
{
  public function index(Request $request)
  {
    $banner = \App\Models\Banner::where('type', 'showtime')->where('status', 'ACTIVE')->first();
    $showtimes = \App\Models\Showtime::where('status','ACTIVE')->get();

    $pageMeta = [
      'title' => $banner->title ?? 'Lịch chiếu',
      'image' => $banner->image ?? null,
      'meta_description' => $banner->description ?? null
    ];

    return view('frontend.showtimes.index', compact('pageMeta','banner', 'showtimes'));
  }

  public function show(Request $request, $slug)
  {
    $banner = \App\Models\Banner::where('type', 'showtime')->where('status', 'ACTIVE')->first();
    $showtime = \App\Models\Showtime::where('status','ACTIVE')->where('slug', $slug)->first();

    if (!$showtime) {
      return redirect('/');
    }

    $pageMeta = [
      'title' => $showtime->title ?? null,
      'image' => $banner->image ?? null,
      'meta_description' => $banner->description ?? null
    ];

    return view('frontend.showtimes.show', compact('pageMeta','banner', 'showtime'));
  }
}
