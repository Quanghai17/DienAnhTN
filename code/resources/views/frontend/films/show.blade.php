@extends('frontend.layouts.default')

@section('style')
@endsection

@section('content')
  <!-- page-title start -->
  {{-- <div class="page-title page-title-bg mg-bottom-120" style="background-image: url({{ Voyager::image($banner->image) }})">
    <div class="container">
      <h2>{{ $film->title ?? '' }}</h2>
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
  <!-- actor page Start -->
  <div class="actor-details-page mg-bottom-120">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-12">
          <div class="single-actor-details">
            <div class="media">
              <img src="{{Voyager::image($film->image)}}" alt="actor" loading="lazy">
              <div class="media-body">
                <h5>{{$film->title}} @if($film->year)({{$film->year}})@endif</h5>
                <div class="actor-designation">
                  <a class="rating" href="#"><i class="fa fa-star"></i>{{$film->rate ?? 9}}/10</a>
                  <!--<a class="rating" href="#"><i class="fa fa-eye"></i>215k View</a>-->
                </div>
                <div class="actor-biodata">
                  <p style="padding-bottom: 10px">{{$film->description}}</p>

                  @if(count($film->types) > 0)
                  <p><span class="title">Thể loại</span>: 
                    <span>
                      @foreach ($film->types as $key => $type)
                        @if ($key > 0),@endif {{$type->title}}
                      @endforeach
                    </span>
                  </p>
                  @endif

                  @if ($film->year)
                    <p><span class="title">Năm xuất bản</span>: <span>{{$film->year}}</span></p>                      
                  @endif
                  @if ($film->time)
                    <p><span class="title">Thời lượng</span>: <span>{{$film->time}}</span></p>
                  @endif
                  @if ($film->debut)
                    <p><span class="title">Công chiếu</span>: <span>{{date('d-N, Y'), strtotime($film->debut)}}</span></p>
                  @endif

                  @if(count($film->authors) > 0)
                  <p><span class="title">Tác giả</span>: 
                    <span>
                      @foreach ($film->authors as $key => $author)
                        @if ($key > 0),@endif {{$author->title}}
                      @endforeach
                    </span>
                  </p>
                  @endif

                  <p>
                    <span class="title">Chia sẻ:</span>:
                    <span class="social-icon">
                      <a href="https://www.facebook.com/sharer/sharer.php?u={{url()->current()}}"><i class="fa fa-facebook"></i></a>
                      <a href="https://twitter.com/share?url={{url()->current()}}"><i class="fa fa-twitter"></i></a>
                      <a href="https://www.linkedin.com/shareArticle?url={{url()->current()}}"><i class="fa fa-linkedin"></i></a>
                      <a href="https://plus.google.com/share?url={{url()->current()}}"><i class="fa fa-google-plus"></i></a>
                    </span>
                  </p>
                  <!--<a class="btn btn-yellow" href="#"><i class="fa fa-play"></i>Watch Now</a>
                  <a class="btn btn-white" href="#"><i class="fa fa-exclamation"></i>Watch Now</a>-->
                </div>
              </div>
            </div>
          </div>
          <div class="actor-biography">
            <h5 class="section-title-3">Nội dung</h5>
            <div>
              {!! $film->body !!}
            </div>
          </div>
          <!-- Movie Post Slider Start -->
          @if($film->trailer)
            <h5 class="section-title-3">Trailer</h5>
            <div class="">
              <div class="item">
                <div class="movie-post">
                  <div class="entry-thumbnail">
                    <img src="{{Voyager::image($film->image)}}" alt="movie-post" style="width: 100%" loading="lazy">
                    <div class="pulse-video pulse-video-3">
                      <a class="btn-video play-video" href="{{Voyager::image($film->trailer)}}"><i
                          class="fa fa-play" aria-hidden="true"></i></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          @endif
        </div>

        <div class="col-lg-4 col-12">
          @if(count($related_films) > 0)
            <div class="widget widget_filmography">
              <h5 class="widget_title">Phim liên quan</h5>
              @foreach ($related_films as $film)
              <a href="{{route('films.show', $film->slug)}}">
                <div class="media">
                  <img class="mr-3" src="{{Voyager::image($film->image)}}" alt="widget" loading="lazy">
                  <div class="media-body">
                    <h5 class="title">{{$film->title}}</h5>
                    <p><i class="fa fa-star"></i>{{$film->rate ?? 9}}/10</p>
                  </div>
                </div>
              </a>
              @endforeach
            </div>
          @endif

          @if(count($hot_films) > 0)
            <div class="widget widget_filmography">
              <h5 class="widget_title mg-bottom-30">Phim hot</h5>
              @foreach ($hot_films as $film)
              <a href="{{route('films.show', $film->slug)}}">
                <div class="media">
                  <img class="mr-3" src="{{Voyager::image($film->image)}}" alt="widget" loading="lazy">
                  <div class="media-body">
                    <h5 class="title">{{$film->title}}</h5>
                    <p><i class="fa fa-star"></i>{{$film->rate ?? 9}}/10</p>
                  </div>
                </div>
              </a>
               
              @endforeach
              <!--<a class="see-all-btn" href="#">See Full Celebrities</a>-->
            </div>
          @endif
          {{-- <div class="widget widget_tag mg-bottom-add mg-bottom-991">
            <h5 class="widget_title">Popular Tags</h5>
            <a href="#">Film Maker</a>
            <a href="#">Bioscope</a>
            <a href="#">Psd</a>
            <a href="#">Movie</a>
            <a href="#">Film Studio</a>
            <a href="#">Cinema</a>
            <a href="#">Trending</a>
          </div> --}}
        </div>
      </div>
    </div>
  </div>
  <!-- actor page End -->
@endsection
