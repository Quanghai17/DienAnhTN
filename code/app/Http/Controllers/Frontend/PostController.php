<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index(Request $request)
    {
        $search = $request->search;
        if($search){
            $banner = \App\Models\Banner::where('type', 'news')->where('status', 'ACTIVE')->first();
            $news = \App\Models\Post::with('category','authorId')
            ->where('title', 'like', '%'.$search.'%')
            ->where('status', 'PUBLISHED')
            ->orderBy('created_at','DESC')
            ->paginate(setting('site.paginate_news'));
            $pageMeta = [
                'title' => 'Tìm kiếm Bài viết - Sự kiện',
                'image' => $banner->image ?? '',
                'meta_description' => 'Tìm kiếm Bài viết - Sự kiện'
            ];
        }
        else{
            $banner = \App\Models\Banner::where('type', 'news')->where('status', 'ACTIVE')->first();
            $news = \App\Models\Post::with('category','authorId')->where('status', 'PUBLISHED')->orderBy('created_at','DESC')->paginate(setting('site.paginate_news'));
            $pageMeta = [
                'title' => $banner->title ?? 'Bài viết - Sự kiện',
                'image' => $banner->image ?? '',
                'meta_description' => $banner->description ?? ''
            ];
    
        }

        $related_post = \App\Models\Post::where('status', 'PUBLISHED')->orderBy('created_at','DESC')->limit(4)->get();
        $category_list = \TCG\Voyager\Models\Category::get();
        $check = 'news';
       
        return view('frontend.posts.index', compact('news','banner','pageMeta','check','related_post','category_list'));
    }
    public function show($id)
    {
        $banner = \App\Models\Banner::where('type', 'news')->where('status', 'ACTIVE')->first();
        $news_detail = \App\Models\Post::with('category','authorId')->where('slug',$id)->first();

        $related_post = \App\Models\Post::where('status', 'PUBLISHED')->orderBy('created_at','DESC')->limit(4)->get();
        $category_list = \TCG\Voyager\Models\Category::get();
        return view('frontend.posts.show')->with(compact('banner','news_detail','related_post','category_list'));
    }
    public function category_news(Request $request, $id)
    {
        $search = $request->search;

        if($search)
        {
            $banner = \App\Models\Banner::where('type', 'category_news')->where('status', 'ACTIVE')->first();
            $news = \App\Models\Post::with('category','authorId')
            ->where('category_id',$id)
            ->where('title', 'like', '%'.$search.'%')
            ->where('status', 'PUBLISHED')
            ->orderBy('created_at','DESC')
            ->paginate(setting('site.paginate_news'));
            $category = \TCG\Voyager\Models\Category::where('id', $id)->first();
          
            $pageMeta = [
                'title' =>'Tìm kiếm Danh mục Bài viết - Sự kiện',
                'image' => $banner->image ?? '',
                'meta_description' => $banner->description ?? ''
            ];
        }
        else{
            $banner = \App\Models\Banner::where('type', 'category_news')->where('status', 'ACTIVE')->first();
            $news = \App\Models\Post::with('category','authorId')
            ->where('category_id',$id)
            ->where('status', 'PUBLISHED')
            ->orderBy('created_at','DESC')
            ->paginate(setting('site.paginate_news'));
            $category = \TCG\Voyager\Models\Category::where('id', $id)->first();
          
            $pageMeta = [
                'title' => $banner->title ?? 'Danh mục Bài viết - Sự kiện',
                'image' => $banner->image ?? '',
                'meta_description' => $banner->description ?? ''
            ];
        }
        $check = 'category_news';
        $category_list = \TCG\Voyager\Models\Category::get();
        $related_post = \App\Models\Post::where('status', 'PUBLISHED')->orderBy('created_at','DESC')->limit(4)->get();
        
        return view('frontend.posts.index', compact('news','banner','pageMeta','category','check','related_post','category_list'));
    }

}
