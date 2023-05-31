<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="description" content="{{ $pageMeta['meta_description'] ?? setting('site.description') }}" />
  <meta name="content" content="{{ $pageMeta['meta_content'] ?? setting('site.content') }}" />

  <title>{{ $pageMeta['title'] ?? setting('site.title') }}</title>

  <link rel="shortcut icon" href="{{ \TCG\Voyager\Facades\Voyager::image(setting('site.favicon')) }}" type="image/png">

  <meta property="og:image"
    content="{{ \TCG\Voyager\Facades\Voyager::image($pageMeta['image'] ?? setting('site.logo')) }}" />
  <meta property="og:url" content="{{ \Request::fullUrl() }}" />
  <meta property="og:type" content="Website" />
  <meta property="og:title" content="{{ $pageMeta['title'] ?? setting('site.title') }}" />
  <meta property="og:description" content="{{ $pageMeta['meta_description'] ?? setting('site.description') }}" />
  <meta property="og:content" content="{{ $pageMeta['meta_content'] ?? setting('site.content') }}" />
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <!--Common Styles Plugins-->
  <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/bootstrap.min.css') }}">
  <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/font-awesome.min.css') }}">
  <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/animate.css') }}">
  <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/owl.carousel.css') }}">
  <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/owl.theme.default.min.css') }}">
  <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/magnific-popup.css') }}">
  <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/jquery.fancybox.min.css') }}">
  <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/flipclock.css') }}">
  <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/scroll.css') }}">
  <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/line-awesome.min.css') }}">
  <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/swiper.min.css') }}">
  <link rel="stylesheet" href="{{ asset('assets/css/megamenu/main.css') }}">
  <link rel="stylesheet" href="{{ asset('assets/css/mylist-player.css') }}" />
  <link rel="stylesheet" href="{{ asset('assets/css/home.css') }}" />

  <!--Google fonts-->
  <link href="https://fonts.googleapis.com/css?family=Ubuntu:300,300i,400,400i,500,500i,700,700i" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
    rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700"
    rel="stylesheet">

  <!--Custom Style-->
  <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/style.css') }}">
  <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/custom.css') }}">

  @yield('style')

  <!-- Global site tag (gtag.js) - Google Analytics -->
  {{-- <script async src="https://www.googletagmanager.com/gtag/js?id=G-6Y861CTZJ8"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'G-6Y861CTZJ8');
    </script> --}}

  <script type="application/ld+json">
    {
      "@context": "http://schema.org",
      "@type": "Website",
      "title": "{{ $pageMeta['title'] ?? setting('site.title') }}",
      "description": "{{ $pageMeta['meta_description'] ?? setting('site.description') }}",
      "address": {
          "@type": "PostalAddress",
          "addressLocality": "{{ setting('site.address') }}"
      },
      "telephone": "{{ setting('site.phone') }}",
      "email": "{{ setting('site.email') }}"
    }
  </script>

  <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
</head>

<body>
  <!--preloading-->
  <div id="preloader">
    <div id="status">
      <span></span>
      <span></span>
    </div>
  </div>
  <!--end of preloading-->

  @include('frontend.layouts.partials.header')

  @yield('content')

  @include('frontend.layouts.partials.footer')

  <!--Common JS Plugin-->
  <script type="text/javascript" src="{{ asset('assets/js/jquery-1.12.4.min.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/js/bootstrap.bundle.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/js/owl.carousel.min.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/js/jquery.counterup.min.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/js/flipclock.min.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/js/jquery.waypoints.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/js/jquery.magnific-popup.min.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/js/jquery.fancybox.min.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/js/scroll.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/js/wow.min.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/js/megamenu/mega.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/js/swiper.min.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/js/form-validator.min.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/js/contact-form-script.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/js/jquery.scrollUp.min.js') }}"></script>

  <!-- Custom JS -->
  <script type="text/javascript" src="{{ asset('assets/js/custom.js') }}"></script>

  @include('frontend.layouts.partials.alert')

  @yield('js')
</body>

</html>
