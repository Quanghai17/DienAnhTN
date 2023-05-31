@extends('frontend.layouts.default')

@section('style')
  
@endsection

@section('content')
<!-- page-title start -->
{{-- <div class="page-title page-title-bg mg-bottom-120" style="background-image: url({{ Voyager::image($banner->image) }})">
    <div class="container">
     
        <h2>{{$news_detail->title}}</h2>
     
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('index') }}">Trang chủ</a></li>
                <li class="breadcrumb-item active" aria-current="page">Chi tiết bài viết</li>
            </ol>
        </nav>
    </div>
</div> --}}
<div class="pt-5"></div>
<div class="single-blog-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-12">
                <div class="movie-blog-post-single">
                    <div class="main-thumb">
                        <img class="card-img" src="{{Voyager::image($news_detail->image)}}" alt="{{$news_detail->title}}">
                    </div>
                    <div class="single-post-details">
                        <ul class="post-info">
                            <li class="post-author"><i class="fa fa-user"></i>{{$news_detail->authorId->name}}</li>
                            <li class="post-date"><i class="fa fa-calendar"></i>{{ date('F d, Y', strtotime($news_detail->created_at)) }}</li>
                            <li class="post-tag">
                                <i class="fa fa-tags"></i>
                                <a href="{{ route('posts.category', $news_detail->category_id) }}">{{$news_detail->category->name}} </a>
                            </li>
                        </ul>
                        <div class="entry-content">
                            <p> {!! $news_detail->body !!}</p>
                        </div>          
                        <div class="post-share-tag">
                            <span class="blog-post-share">
                                <span class="title">Chia sẻ:</span>
                                
                                <a href="https://www.facebook.com/sharer/sharer.php?u={{url()->current()}}"><i class="fa fa-facebook"></i></a>
                                <a href="https://twitter.com/share?url={{url()->current()}}"><i class="fa fa-twitter"></i></a>
                                <a href="https://www.linkedin.com/shareArticle?url={{url()->current()}}"><i class="fa fa-linkedin"></i></a>
                                <a href="https://plus.google.com/share?url={{url()->current()}}"><i class="fa fa-google-plus"></i></a>
                            </span>
                           
                        </div>
                       
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-12">
                <div class="widget widget_search">
                    <form class="form-inline" action="{{route('posts.index')}}" method="GET">
                        <div class="input-group">                             
                            <input type="text" class="form-control" name="search" placeholder="Từ khoá tìm kiếm...">
                            <div class="input-group-addon">
                              <button type="submit" style="padding: 5px !important;" class="btn btn-warning btn-sm"> <i style="padding-left: 10px !important;padding-right: 10px !important;" class="fa fa-search"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="widget widget_related_post">
                    <h5 class="widget_title">Bài viết liên quan</h5>
                    @foreach ($related_post as $item)
                      <div class="media">
                        <img class="mr-3" style="width: 100px;" src="{{ Voyager::image($item->image ?? '') }}" alt="{{$item->title ?? ''}}">
                        <div class="media-body">
                            <h5 style="font-size: 15px;" class="title"><a href="{{ route('posts.show', $item->slug) }}">{{$item->title ?? ''}}</a></h5>
                            <p class="date">{{ date('F d, Y', strtotime($item->created_at)) }}</p>
                        </div>
                    </div>
                    @endforeach
                   
                  
                </div>
                <div class="widget widget_category">
                    <h5 class="widget_title">Danh mục</h5>
                    <ul>
                      @foreach ($category_list as $item)
                      <li><a href="{{ route('posts.category', $item->id) }}"><i class="fa fa-angle-right"></i>{{$item->name}}</a></li>
                      @endforeach
                       
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection