@extends('frontend.layouts.default')

@section('style')
@endsection

@section('content')
    <div class="about-section" style="padding: 25px 0 0px 0;">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <!-- main slider start -->
                    <div class="main-slider-section">
                        <div class="main-slider owl-carousel owl-theme">
                            @foreach ($banners as $banner)
                                <div class="item" style="background-image: url({{ Voyager::image($banner->image) }})">
                                    <div class="row justify-content-center">
                                        <div class="col-lg-6">
                                            <h2 class="slider-title">
                                                {{ $banner->title ?? '' }}
                                            </h2>
                                            <div class="slider-description">
                                                {{ $banner->description ?? '' }}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                    <!-- main slider End -->
                </div>
                <div class="col-md-4">
                    <div class="row">
                      @foreach ($banner2s as $banner2)
                        <div class="col-md-12 col-sm-4 mt-2">
                          <a target="_black" href="{{ $banner2->url }}">
                            <img src="{{ Voyager::image($banner2->image) }}" alt="{{ $banner2->title ?? '' }}">
                          </a>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- About Section Start -->
    <div class="about-section default-padding-3" style="padding: 45px 0 50px 0;">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12">
                    <div class="about-main-thumb wow animated fadeInRight" data-wow-duration="1s" data-wow-delay="0s">
                        <img width="100%" src="{{ Voyager::image($about->image) }}" alt="about"
                            style="aspect-ratio: 3/2;object-fit: cover" loading="lazy">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12"
                    style="display: flex;flex-direction: column;justify-content: center;">
                    <div class="about-details wow animated fadeInLeft" data-wow-duration="1s" data-wow-delay="0s">
                        <h3 class="about-title">{{ $about->title }}</h3>
                        <p>{{ $about->description }}</p>
                        <div class="section-title" style="margin-bottom: 0">
                            <a href="{{ route('about') }}" style="float: none">Xem thêm</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About Section End -->

    <!-- movie post Start -->
    @if ($upcoming_films)
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title">
                        <h2>Phim sắp chiếu</h2>
                        <a href="{{ route('films.index') }}?category={{ $upcoming_films->slug }}">Xem thêm</a>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="movie-post-slider owl-carousel">
                        @foreach ($upcoming_films->films as $key => $film)
                            <div class="item">
                                <div class="movie-post">
                                    <div class="entry-thumbnail">
                                        <img src="{{ Voyager::image($film->image) }}" alt="movie-post">
                                    </div>

                                    <div class="entry-content">
                                        <h5 class="entry-title"><a
                                                href="{{ route('films.show', $film->slug) }}">{{ $film->title }}</a></h5>
                                        <div class="entry-rating">
                                            <i class="fa fa-star" aria-hidden="true"></i>{{ $film->rate ?? 9 }}/10
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    @endif
    <!-- movie post End -->

    <!-- blog-section Start -->
    <div class="blog-section blog-style-2" style="margin: 45px 0;">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h2>Sự kiện nổi bật</h2>
                        <a href="{{ route('posts.category', $cate_sukien->id) }}">Xem thêm</a>
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    @foreach ($sukiens as $key => $sukien)
                        @if ($key == 0)
                            @continue
                        @endif
                        <div class="blog-details-wrap blog-right-content">
                            <div class="media">
                                <div class="media-left"><img src="{{ Voyager::image($sukien->image) }}"
                                        alt="{{ $sukien->title }}"></div>
                                <div class="media-body">
                                    <div class="blog-details">
                                        <h5 class="post-title-1"><a
                                                href="{{ route('posts.show', $sukien->slug) }}">{{ $sukien->title }}</a>
                                        </h5>
                                        <div class="blog-meta">
                                            <a href="{{ route('posts.show', $sukien->slug) }}"><i
                                                    class="fa fa-calendar"></i>{{ date_format($sukien->created_at, 'd/m/Y') }}
                                            </a>
                                        </div>
                                        <p class="post-description-1">{{ $sukien->description }}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
                <div class="col-12 col-lg-6">
                    @if (isset($sukiens[0]))
                        <div class="blog-details-wrap">
                            <div class="thumb"><img src="{{ Voyager::image($sukiens[0]->image) }}"
                                    alt="{{ $sukiens[0]->title }}">
                            </div>
                            <div class="">
                                <div class="blog-details">
                                    <h5><a
                                            href="{{ route('posts.show', $sukiens[0]->slug) }}">{{ $sukiens[0]->title }}</a>
                                    </h5>
                                    <div class="blog-meta">
                                        <a href="{{ route('posts.show', $sukiens[0]->slug) }}"><i
                                                class="fa fa-calendar"></i>{{ date_format($sukiens[0]->created_at, 'd/m/Y') }}
                                        </a>
                                    </div>
                                    <p>{{ $sukiens[0]->description }}</p>
                                </div>
                            </div>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
    <!-- blog-section End -->

    <!-- movie post Start -->
    @if ($playing_films)
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title">
                        <h2>Phim đang chiếu</h2>
                        <a href="{{ route('films.index') }}?category={{ $playing_films->slug }}">Xem thêm</a>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="movie-post-slider owl-carousel">
                        @foreach ($playing_films->films as $key => $film)
                            <div class="item">
                                <div class="movie-post">
                                    <div class="entry-thumbnail">
                                        <img src="{{ Voyager::image($film->image) }}" alt="movie-post">
                                    </div>

                                    <div class="entry-content">
                                        <h5 class="entry-title"><a
                                                href="{{ route('films.show', $film->slug) }}">{{ $film->title }}</a>
                                        </h5>
                                        <div class="entry-rating">
                                            <i class="fa fa-star" aria-hidden="true"></i>{{ $film->rate ?? 9 }}/10
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    @endif
    <!-- movie post End -->

    <!-- blog-section Start -->
    <div class="blog-section blog-style-2" style="padding-top: 45px">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h2>Tin tức</h2>
                        <a href="{{ route('posts.category', $cate_tintuc->id) }}">Xem thêm</a>
                    </div>
                </div>
                <div class="col-12 col-lg-6 col-sm-12">
                    @if (isset($tintucs[0]))
                        <div class="blog-details-wrap">
                            <div class="thumb"><img src="{{ Voyager::image($tintucs[0]->image) }}"
                                    alt="{{ $tintucs[0]->title }}" loading="lazy"></div>
                            <div class="">
                                <div class="blog-details">
                                    <h5><a
                                            href="{{ route('posts.show', $tintucs[0]->slug) }}">{{ $tintucs[0]->title }}</a>
                                    </h5>
                                    <div class="blog-meta">
                                        <a href="{{ route('posts.show', $tintucs[0]->slug) }}"><i
                                                class="fa fa-calendar"></i>{{ date_format($tintucs[0]->created_at, 'd/m/Y') }}
                                        </a>
                                    </div>
                                    <p>{{ $tintucs[0]->description }}</p>
                                </div>
                            </div>
                        </div>
                    @endif
                </div>
                <div class="col-12 col-lg-6 col-sm-12">
                    @foreach ($tintucs as $key => $tintuc)
                        @if ($key == 0)
                            @continue
                        @endif
                        <div class="blog-details-wrap blog-right-content">
                            <div class="media">
                                <div class="media-left"><img src="{{ Voyager::image($tintuc->image) }}"
                                        alt="{{ $tintuc->title }}" loading="lazy"></div>
                                <div class="media-body">
                                    <div class="blog-details">
                                        <h5 class="post-title-1"><a
                                                href="{{ route('posts.show', $tintuc->slug) }}">{{ $tintuc->title }}</a>
                                        </h5>
                                        <div class="blog-meta">
                                            <a href="{{ route('posts.show', $tintuc->slug) }}"><i
                                                    class="fa fa-calendar"></i>{{ date_format($tintuc->created_at, 'd/m/Y') }}
                                            </a>
                                        </div>
                                        <p class="post-description-1">{{ $tintuc->description }}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>

    @if(!is_null($gallery))
    <!-- Galery -->
    <div class="blog-section blog-style-2" style="padding-top: 45px">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h2>Danh mục ảnh</h2>
                    </div>
                </div>
                @php
                    $gallery_imgs = json_decode($gallery->images);
                @endphp
                @foreach ($gallery_imgs as $item)
                    <div class="col-12 col-md-6 col-lg-3 col-sm-12">
                        <div class="gallery-img"><img src="{{ Voyager::image($item) }}" alt="" loading="lazy">
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
    @endif

    <div style="margin-bottom: -50px"></div>
    <!-- blog-section End -->
@endsection
