@extends('frontend.layouts.default')

@section('style')
@endsection

@section('content')
  <!-- page-title start -->
  {{-- <div class="page-title page-title-bg mg-bottom-120" style="background-image: url({{ Voyager::image($banner->image) }})">
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
  <!-- Show time Start -->
  <div class="show-time-section mg-bottom-120">
    <div class="container">
      <div class="tab-content show-time-panel" id="nav-tabContent">
        <div class="tab-pane fade show active" id="date1" role="tabpanel">
          <table class="table">
            <tbody>
              @foreach ($showtimes as $showtime)
                <tr>
                  <td>
                    <h5>{{$showtime->title}}</h5>
                    <p>{{date('d/M/Y, H:i', strtotime($showtime->created_at))}}</p>
                  </td>
                  {{-- <td>
                    <span class="show-time">11:30 AM</span>
                    <span class="show-time">01:50 AM</span>
                    <span class="show-time">03:15 AM</span>
                    <span class="show-time">07:35 AM</span>
                  </td> --}}
                  <td class="ticket-btn"><a class="btn btn-yellow" href="{{route('showtimes.show', $showtime->slug)}}">Xem chi tiết</a></td>
                </tr>
              @endforeach
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
  <!-- Show time End -->
@endsection
