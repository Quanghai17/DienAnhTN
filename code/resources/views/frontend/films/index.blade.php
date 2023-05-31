@extends('frontend.layouts.default')

@section('style')
  <style>
    .custom-checkbox {
      display: flex;
      align-items: center;
    }
    .custom-checkbox label {
      flex-grow: 1;
      margin: 0 5px 0 ;
    }
    .custom-checkbox input {
      flex: none;
    }
  </style>
@endsection

@section('content')
  <!-- page-title start -->
  {{-- <div class="page-title page-title-bg mg-bottom-120"
    style="background-image: url({{Voyager::image($banner->image ?? '')}})"
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
  <!-- search page start -->
  <div class="search-page" x-data="{order_by: '{{request('order_by') ?? 'desc'}}'}">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-12">
          <div class="widget widget-2 widget-movie-filter">
            <form action="{{route('films.index')}}">
              <input type="hidden" name="order_by" :value="order_by">
              <div class="filter-title">
                <h5>Lọc phim</h5>
                <!--<i class="fa fa-repeat"></i>-->
              </div>
              <div class="movie-keyword">
                <label class="field-title" for="keyword">Tìm kiếm</label>
                <input id="keyword" type="text" name="search" placeholder="Nhập tên phim" value="{{request('search')}}">
              </div>
              <div class="movie-quality">
                <h5 class="field-title">Danh mục phim</h5>
                <select name="category" class="form-control">
                  <option value="all">Tất cả</option>
                  @foreach ($film_categories as $film_category)
                    <option value="{{$film_category->slug}}" @if($film_category->slug == request('category')) selected @endif>
                      {{$film_category->title}}
                    </option>
                  @endforeach
                </select>
              </div>
              <div class="movie-quality">
                <h5 class="field-title">Thể loại</h5>
                <div class="row">
                  @foreach ($film_types as $index => $type)
                    <div class="col-6 custom-checkbox">
                      <label for="{{$index}}s">{{$type->title}}</label>
                      <input id="{{$index}}s" type="checkbox" name="types[]" value="{{$type->title}}" @if(in_array($type->title, request('types') ?? [])) checked @endif>
                    </div>
                  @endforeach
                </div>
                </ul>
              </div>
              <div class="btn-area">
                <button x-ref="btn_submit" class="btn btn-yellow" type="submit">Tìm kiếm theo bộ lọc</button>
              </div>
            </form>
          </div>
        </div>
        <div class="col-lg-8 col-12">
          <div class="show-time-tab">
            <div class="search-show">Hiển thị {{($films->currentPage() - 1) * $films->perPage() + 1}} - {{($films->currentPage() - 1) * $films->perPage() + count($films)}} trong {{$films->total()}}</div>
            <div class="price-select-btn">
              <select class="custom-select" id="inputGroupSelect01" name="order_by" @change="$nextTick(() => $refs.btn_submit.click())" x-model="order_by">
                <option value="desc">Sắp xếp theo : Mới nhất</option>
                <option value="asc">Sắp xếp theo : Cũ nhất</option>
              </select>
            </div>
          </div>
          <div class="row">
            @foreach ($films as $film)
              <div class="col-lg-3 col-sm-6 col-12">
                <div class="theater-details">
                  <div class="entry-thumb">
                    <div class="thumb"><a href="{{route('films.show', $film->slug)}}"><img src="{{Voyager::image($film->image)}}" alt="img" loading="lazy"></a></div>
                    <div class="entry-rating text-center">
                      <i class="fa fa-star" aria-hidden="true"></i>{{$film->rate ?? 9}}/10
                    </div>
                  </div>
                  @if ($film->hot == 1)
                    <div class="entry-ticket">Hot</div>
                  @endif
                  <div class="entry-content">
                    <h5 class="entry-title"><a href="{{route('films.show', $film->slug)}}">{{$film->title}}</a></h5>
                  </div>
                </div>
              </div>
            @endforeach
            <div class="col-12">
              {!! $films->links('frontend.layouts.partials.paginate') !!}
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- search page End -->
@endsection