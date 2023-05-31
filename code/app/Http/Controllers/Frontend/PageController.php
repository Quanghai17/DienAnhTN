<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PageController extends Controller
{
  public function show(Request $request, $slug) {
    $banner = \App\Models\Banner::where('type', 'page')->where('status', 'ACTIVE')->first();
    $page = \App\Models\Page::where('slug', $slug)->where('status', 'ACTIVE')->first();

    if (!$page){
      return redirect('/');
    }

    $pageMeta = [
      'title' => $page->title ?? null,
      'image' => $banner->image ?? null,
      'meta_description' => $banner->description ?? null
    ];

    return view('frontend.pages.show', compact('pageMeta','banner', 'page'));
  }
}
