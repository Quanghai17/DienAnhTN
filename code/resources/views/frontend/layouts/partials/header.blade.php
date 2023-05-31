@php
  $menu = menu('header', '_json');
@endphp
<nav class="navbar sm-navbar navbar-expand-lg">
  <div class="container">
    <img src="{{ Voyager::image(setting('site.top-banner')) }}" alt="top-banner">
  </div>
</nav>
<!-- sm megamenu start here -->
<nav id="superMenu" class="navbar sm-navbar movie-navbar navbar-expand-lg">
  <div class="container">
    {{-- <a class="navbar-brand" href="{{ route('index') }}">
        <img class="logo" src="{{ Voyager::image(setting('site.logo')) }}" alt="logo">
    </a> --}}
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="line"></span>
      <span class="line"></span>
      <span class="line"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav 
      {{-- ml-auto --}}
      ">
        @foreach ($menu as $item)
          <li class="nav-item @if(count($item->children) > 0) has-menu-item-submenu @endif">
            <a href="{{url($item->url)}}">{{$item->title}}@if(count($item->children) > 0) <i class="fa fa-angle-down">@endif</i></a>
            @if(count($item->children) > 0)
              <ul class="sub-menu">
                @foreach ($item->children as $child)
                <li><a href="{{url($child->url)}}">{{$child->title}}</a></li>
                @endforeach
              </ul>
            @endif
          </li>
        @endforeach
        <!-- end Mega menu -->
      </ul>
      <ul class="navbar-nav ml-auto">
        <li>
          <form class="navbar-search-form" action="{{route('search')}}" method="post">
            @csrf
            <div class="custom-select-wrap">
              <select class="custom-select" name="search_type">
                {{-- <option value="all" selected="">Tất cả</option> --}}
                <option value="tv" @if(request('search_type') == 'tv') selected @endif>Phim</option>
                <option value="news" @if(request('search_type') == 'news') selected @endif>Tin tức - sự kiện</option>
              </select>
            </div>
            <input type="search" name="search" value="{{request('search')}}">
            <button type="submit" class="search-submit"><i class="fa fa-search"></i></button>
          </form>
        </li>
      </ul>
    </div>
  </div>
</nav>
