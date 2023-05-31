@extends('frontend.layouts.default')

@section('style')
    <style>
        .footer-section{
            margin-top: 0px;
        }
    </style>
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
<!-- contact section Start -->
<div class="contact-section default-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-12">
                <div class="section-title">
                   <h2>Địa chỉ của chúng tôi</h2>
                </div> 
                <div class="contact-details-info">
                    <div class="contact-address">
                        <p><i class="fa fa-map-marker"></i>{{setting('site.address')}}</p>
                        <p><i class="fa fa-envelope-o"></i>{{setting('site.email')}}</p>
                        <p><i class="fa fa-phone"></i>{{setting('site.phone')}}</p>
                    </div>
                    <div class="social-icon-wrap-2">
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
            <div class="col-lg-8 col-12">
                <div class="section-title">
                   <h2>
                    Liên hệ</h2>
                </div>
                <form action="{{route('feedback')}}"  method="POST">
                    @csrf
                    <div class="contact-form">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-12">
                                <div class="form-group">
                                    <input class="form-control input-control" placeholder="Tên của bạn" type="text" name="name" value="{{request()->name ?? ''}}" required >
                                    @error('name')<p class="text_error">Tên không được để trống</p>@enderror
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-12">
                                <div class="form-group">
                                    <input class="form-control input-control"  placeholder="Email" type="email" name="email" value="{{request()->email ?? ''}}" required > 
                                    @error('email')<p class="text_error">Email không đúng định dạng</p>@enderror
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" name="content" placeholder="Lời nhắn" rows="6" required ></textarea>
                            <div class="help-block with-errors"></div>
                        </div>
                        <button type="submit"  class="btn btn-yellow">Gửi liên hệ</button>
                        <div id="msgSubmit" class="h3 text-center hidden"></div> 
                        <div class="clearfix"></div>
                    </div>
                </form> 
            </div>
        </div>
    </div>
</div>
<!-- contact section End -->

<!-- Map section Start -->
<div >
    {!!setting('site.googlemap')!!}
</div>
<!-- Map section End -->
@endsection
