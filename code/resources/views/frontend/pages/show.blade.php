@extends('frontend.layouts.default')

@section('style')
@endsection

@section('content')
  <!-- page-title start -->
  {{-- <div class="page-title page-title-bg mg-bottom-120" style="background-image: url({{ Voyager::image($banner->image) }})">
    <div class="container">
      <h2>{{ $page->title ?? '' }}</h2>
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="{{ route('index') }}">Trang chủ</a></li>
          <li class="breadcrumb-item active" aria-current="page">{{ $page->title ?? '' }}</li>
        </ol>
      </nav>
    </div>
  </div> --}}
  <!-- page-title End -->
  <div class="pt-5"></div>
  <!-- actor page Start -->
  <div class="actor-details-page mg-bottom-120">
    <div class="container">
      {!! $page->body!!}
    </div>
  </div>
  <!-- actor page End -->
@endsection
