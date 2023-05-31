@extends('frontend.layouts.default')

@section('style')
    <style>
        .custom-checkbox {
            display: flex;
            align-items: center;
        }

        .custom-checkbox label {
            flex-grow: 1;
            margin: 0 5px 0;
        }

        .custom-checkbox input {
            flex: none;
        }
    </style>
@endsection

@section('content')
    <!-- page-title start -->
    {{-- <div class="page-title page-title-bg mg-bottom-120" style="background-image: url({{ Voyager::image($banner->image) }})">
        <div class="container">
          @if(request('search'))
            <h2>{{ 'Tìm kiếm từ khoá: '. request('search') }}</h2>
          @else
            <h2>{{ $banner->title ?? '' }}</h2>
          @endif
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{ route('index') }}">Trang chủ</a></li>
                    <li class="breadcrumb-item active" aria-current="page">{{ $category->name ?? $banner->title }}</li>
                </ol>
            </nav>
        </div>
    </div> --}}
    {{-- @dd($news) --}}
    <div class="pt-5"></div>
    <!-- page-title End -->
    <div class="blog-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-12">
                    @foreach ($news as $item)
                      <div class="movie-blog-post">
                          <div class="thumb">
                              <a href="{{ route('posts.show', $item->slug) }}">
                                  <img src="{{ Voyager::image($item->image ?? '') }}" alt="{{ $item->title ?? '' }}">
                              </a>
                          </div>
                          <div class="movie-blog-post-details">
                              <h5><a href="{{ route('posts.show', $item->slug) }}">{{ $item->title ?? '' }}</a></h5>
                              <ul class="post-info">
                                  <li class="post-author"><i class="fa fa-user"></i>{{ $item->authorId->name ?? '' }}</li>
                                  <li class="post-date"><i
                                          class="fa fa-calendar"></i>{{ date('F d, Y', strtotime($item->created_at)) }}
                                  </li>
                                  <li class="post-tag">
                                      <i class="fa fa-tags"></i>
                                      <a href="{{ route('posts.category', $item->category_id) }}">{{ $item->category->name ?? '' }}</a>
                                  </li>
                              </ul>
                              <p>{{ $item->description ?? '' }}</p>
                              <a class="read-more-btn" href="{{ route('posts.show', $item->slug) }}">Xem thêm</a>
                          </div>
                      </div>
                    @endforeach
                    {!! $news->links('frontend.layouts.partials.paginate') !!}
                </div>

                <div class="col-lg-4 col-12">
                  <div class="widget widget_search">
                      <form class="form-inline" action="@if($check == "news") {{route('posts.index')}} @else {{route('posts.category', $category->id)}} @endif" method="GET">
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
    <!-- search page End -->
@endsection
