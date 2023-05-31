@php
  $menu = menu('header', '_json');
  $footer = menu('footer', '_json');
@endphp

<!-- Footer-section Start -->
<div class="footer-section footer-bg">
  <div class="container">
    <div class="row">
      <div class="col-lg-4 col-12">
        <div class="widget_about mg-bt-small">
          <a href="{{ route('index') }}">
            <h5 style="">{{ setting('site.title') }}</h5>
{{--            <img src="{{ Voyager::image(setting('site.logo')) }}" alt="footer-logo">--}}
          </a>
          <p>{{ setting('site.description') }}</p>
          <div class="social-icon-wrap">
            @if (setting('social-network.facebook'))
              <a class="facebook" href="{{ setting('social-network.facebook') }}"><i class="fa fa-facebook"></i></a>
            @endif
            @if (setting('social-network.twitter'))
              <a class="twitter" href="{{ setting('social-network.twitter') }}"><i class="fa fa-twitter"></i></a>
            @endif
            @if (setting('social-network.pinterest'))
              <a class="pinterest" href="{{ setting('social-network.pinterest') }}"><i
                  class="fa fa-pinterest-p"></i></a>
            @endif
            @if (setting('social-network.linkedin'))
              <a class="linkedin" href="{{ setting('social-network.linkedin') }}"><i class="fa fa-linkedin"></i></a>
            @endif
          </div>
        </div>
      </div>
      <div class="col-12 col-lg-2 mg-bt-small">
        <h5>Menu</h5>
        <ul>
          @foreach ($menu as $item)
            <li><a target="{{ $item->target }}" href="{{url($item->url)}}">{{$item->title}}</a></li>
          @endforeach
        </ul>
      </div>
      <div class="col-12 col-lg-3 mg-bt-small">
        <h5>Liên kết</h5>
        <ul class="mr-5">
          @foreach ($footer as $item)
            <li><a target="{{ $item->target }}" href="{{url($item->url)}}">{{$item->title}}</a></li>
          @endforeach
        </ul>
      </div>
      <div class="col-12 col-lg-3">
        <h5>Liên hệ</h5>
        <p>Email: {{setting('site.email')}}</p>
        <p>Phone: {{setting('site.phone')}}</p>
        <p>Address: {{setting('site.address')}}</p>
        <div class="subscribe subscribtion newsletter-form">
          <div id="mc_embed_signup">
            <form action="{{route('feedback')}}" method="post" class="validate">
              @csrf
              <input type="hidden" name="quick" value="true">
              <div class="form-group">
                <div class="input-group">
                  <input type="email" value="" name="email" class="form-control email" id="mce-EMAIL"
                    placeholder="Email của bạn" required>
                  <div class="input-group-append">
                    <input type="submit" value="Gửi" name="subscribe" id="mc-embedded-subscribe"
                      class="input-group-text d-block mc-button btn">
                  </div>
                </div>
                <div id="subscribe-result"></div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Footer-bottom -->
  <div class="footer-bottom text-center">
    <p>© {{ date('Y') }} - {{setting('site.copyright')}}.</p>
  </div>
</div>
<!-- Footer-section End -->
