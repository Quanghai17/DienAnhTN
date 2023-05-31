@extends('frontend.layouts.default')

@section('style')
@endsection

@section('content')
  <!-- page-title start -->
  {{-- <div class="page-title page-title-bg mg-bottom-120"
    style="background-image: url({{Voyager::image($banner->image)}})"
    >
    <div class="container">
      <h2>{{ $banner->title ?? '' }}</h2>
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="{{ route('index') }}">Trang chủ</a></li>
          <li class="breadcrumb-item active" aria-current="page">{{ $banner->title ?? '' }}</li>
        </ol>
      </nav>
    </div>
  </div> --}}
  <!-- page-title End -->
  <div class="pt-5"></div>
  <!-- About Section Start -->
  <div class="about-section about-section-2">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="section-title">
            <h2 style="font-size: 35px !important;">{{$about->title}}</h2>
          </div>
        </div>
        <div class="col-lg-12" style="margin-top: 20px">
          <div class="about-video-thumb">
            <img width="100%" src="{{Voyager::image($about->image)}}" alt="about">
          </div>
          {{-- <div class="pulse-video pulse-video-2">
            <a class="btn-video play-video" href="https://www.youtube.com/watch?v=XL_3eYx3OVE"><i class="fa fa-play" aria-hidden="true"></i></a>
          </div> --}}
        </div>
        
        <div class="col-lg-12">
          <div class="about-details about-details2">
            <h4 style="margin-top: 30px;font-family: 'Open Sans', sans-serif; font-size: 18px;
                      line-height: 26px;
                      color: #606060;
                      font-weight: bold;" 
            class="about-title">{{$about->description}}</h4>
            <div>
              {!! $about->body !!}
            </div>
            <a style="margin-top: 30px;"  class="btn btn-yellow" href="{{route('contact')}}">Liên hệ chúng tôi</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- About Section End -->

  <!-- service section start -->
  {{--<div class="service-section default-padding">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-12">
          <div class="section-title">
            <h2>Bài viết & Sự kiện</h2>
            <a href="{{ route('posts.index') }}">Xem thêm</a>
          </div>
        </div>
        @foreach ($related_post as $item)
          <div class="col-lg-4 col-md-6 col-12">
            <div class="single-service text-center">
              <div class="thumb">
                <img src="{{Voyager::image($item->image)}}" alt="{{ $item->title}}">
              </div>
              <h4>{{ $item->title}}</h4>
              <p>{{$item->description}} </p>
              <a href="{{ route('posts.show', $item->slug) }}">Xem thêm</a>
            </div>
          </div>
        @endforeach
        
       
      </div>
    </div>
  </div>--}}
  <!-- service section End -->

  
@endsection
