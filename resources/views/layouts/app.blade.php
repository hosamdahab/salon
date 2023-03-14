<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <title>{{ app()->getLocale() == 'ar' ? $setting->setting_title_ar : $setting->setting_title_en }}</title>
    {{-- music autoplay --}}


    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet">


    @if (app()->getLocale() == 'ar')
        <link rel="stylesheet" href="{{ asset('css_ar/style.css') }}">
        <link rel="stylesheet" href="{{ asset('css_ar/open-iconic-bootstrap.min.css') }}">
        <link rel="stylesheet" href="{{ asset('css_ar/animate.css') }}">

        <link rel="stylesheet" href="{{ asset('css_ar/owl.carousel.min.css') }}">
        <link rel="stylesheet" href="{{ asset('css_ar/owl.theme.default.min.css') }}">
        <link rel="stylesheet" href="{{ asset('css_ar/magnific-popup.css') }}">

        <link rel="stylesheet" href="{{ asset('css_ar/aos.css') }}">

        <link rel="stylesheet" href="{{ asset('css_ar/ionicons.min.css') }}">

        <link rel="stylesheet" href="{{ asset('css_ar/bootstrap-datepicker.css') }}">
        <link rel="stylesheet" href="{{ asset('css_ar/jquery.timepicker.css') }}">


        <link rel="stylesheet" href="{{ asset('css_ar/flaticon.css') }}">
        <link rel="stylesheet" href="{{ asset('css_ar/icomoon.css') }}">
    @else
        <link rel="stylesheet" href="{{ asset('css/style.css') }}">
        <link rel="stylesheet" href="{{ asset('css/open-iconic-bootstrap.min.css') }}">
        <link rel="stylesheet" href="{{ asset('css/animate.css') }}">

        <link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
        <link rel="stylesheet" href="{{ asset('css/owl.theme.default.min.css') }}">
        <link rel="stylesheet" href="{{ asset('css/magnific-popup.css') }}">

        <link rel="stylesheet" href="{{ asset('css/aos.css') }}">

        <link rel="stylesheet" href="{{ asset('css/ionicons.min.css') }}">

        <link rel="stylesheet" href="{{ asset('css/bootstrap-datepicker.css') }}">
        <link rel="stylesheet" href="{{ asset('css/jquery.timepicker.css') }}">


        <link rel="stylesheet" href="{{ asset('css/flaticon.css') }}">
        <link rel="stylesheet" href="{{ asset('css/icomoon.css') }}">
    @endif



    {{-- pop up alert library --}}
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    @livewireStyles
</head>



<body>

    <div id="app">
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar"
            dir="{{ app()->getLocale() == 'ar' ? 'rtl' : '' }}">
            <div class="container-fluid text-center">
                <div class="w-100 row justify-content-between align-items-center">
                    <div>
                        <a class="navbar-brand"
                            href="{{ url('/') }}">{{ app()->getLocale() == 'ar' ? $setting->setting_title_ar : $setting->setting_title_en }}
                        </a>
                    </div>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                        aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="oi oi-menu"></span> @lang('auth.Menu')
                    </button>
    
                    <div class="collapse navbar-collapse" id="ftco-nav">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item active"><a href="{{ LaravelLocalization::localizeUrl('/') }}"
                                    class="nav-link">@lang('auth.Home')</a></li>
                            <li class="nav-item"><a href="{{ route('offers') }}" class="nav-link">@lang('auth.offers')</a>
                            </li>
                            <li class="nav-item"><a href="{{ route('servicies') }}" class="nav-link">@lang('auth.Services')</a>
                            </li>
                            <li class="nav-item"><a href="{{ route('ourProducts') }}"
                                    class="nav-link">@lang('auth.Products')</a>
                            </li>
                            <li class="nav-item"><a href="{{ route('contactUs') }}" class="nav-link">@lang('auth.Contact')</a>
                            </li>
    
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="shop.html" id="dropdown04" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">@lang('auth.lang')</a>
                                <div class="dropdown-menu" aria-labelledby="dropdown04" style="margin-top: -30%">
                                    <a class="dropdown-item"
                                        href="{{ LaravelLocalization::getLocalizedURL('ar', null, [], true) }}">@lang('auth.arabic')</a>
                                    <a class="dropdown-item"
                                        href="{{ LaravelLocalization::getLocalizedURL('en', null, [], true) }}">@lang('auth.english')</a>
                                </div>
                            </li>
    
                            @guest
                                @if (Route::has('login'))
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{ route('login') }}">@lang('auth.login')</a>
                                    </li>
                                @endif
    
                                @if (Route::has('register'))
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{ route('register') }}">@lang('auth.register')</a>
                                    </li>
                                @endif
                            @else
                                <li class="nav-item dropdown">
                                    <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                                        data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                        {{ Auth::user()->name }}
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="dropdown04">
                                        <ul class="submenu" style="margin-top: -20%">
                                            @if (Auth::user()->rule_id == 1)
                                                <li>
                                                    <a class="dropdown-item"
                                                        href="{{ LaravelLocalization::localizeUrl('/home') }}">
                                                        @lang('auth.control panel')
                                                    </a>
                                                </li>
                                            @else
                                                <a href="{{ LaravelLocalization::localizeUrl('/home') }}"
                                                    class="dropdown-item">@lang('auth.control panel')</a>
                                            @endif
                                            <a class="dropdown-item" href="{{ route('logout') }}"
                                                onclick="event.preventDefault();
                                                document.getElementById('logout-form').submit();">
                                                @lang('auth.logout')
                                            </a>
    
                                            <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                                class="d-none">
                                                @csrf
                                            </form>
                                        </ul>
                                    </div>
                                </li>
                            @endguest
                            <li class="nav-item cart"><a href="{{route('cartPage')}}" class="nav-link"><span class="icon icon-shopping_cart"></span><span class="bag d-flex justify-content-center align-items-center">
    
                                <small> {{$count}} </small>
                               
                            </span></a>
                            </li>
    
    
                        </ul>
                    </div>
                </div>
            </div>
        </nav>



        @yield('content')


    </div>

    {{-- <audio autoplay  controls>
        <source src="{{ asset('relax.mp3') }}" type="audio/mpeg">
    </audio> --}}

</body>


{{-- footer --}}

<footer class="ftco-footer ftco-section img">
    <div class="overlay"></div>
    <div class="container">
        <div class="row mb-5">
            <div class="col-lg-4 col-md-6 mb-5 mb-md-5">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">
                        {{ app()->getLocale() == 'ar' ? $setting->setting_title_ar : $setting->setting_title_en }}</h2>
                    <ul class="list-unstyled">
                        <li>
                            <a href="{{ route('policies', 'terms') }}" class="py-2 d-block">@lang('auth.Terms and Conditions') </a>
                        </li>
                        <li><a href="{{ route('policies', 'privacy') }}" class="py-2 d-block">@lang('auth.privacy policy') </a>
                        </li>
                        <li><a href="{{ route('policies', 'payment') }}" class="py-2 d-block">@lang('auth.Payment Privacies')</a>
                        </li>
                    </ul>

                    <ul
                        class="{{ app()->getLocale() == 'ar' ? 'ftco-footer-social list-unstyled float-md-right float-rgt mt-5' : 'ftco-footer-social list-unstyled float-md-left float-lft mt-5' }}">
                        <li class="ftco-animate"><a href="{{ $setting->setting_twitterurl }}" target="_blank"><span
                                    class="icon-twitter"></span></a></li>
                        <li class="ftco-animate"><a href="{{ $setting->setting_facebookurl }}" target="_blank"><span
                                    class="icon-facebook"></span></a></li>
                        <li class="ftco-animate"><a href="{{ $setting->setting_instgramurl }}" target="_blank"><span
                                    class="icon-instagram"></span></a></li>
                    </ul>
                </div>
            </div>
            {{-- <div class="col-lg-4 col-md-6 mb-5 mb-md-5">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">Recent Blog</h2>
                    <div class="block-21 mb-4 d-flex">
                        <a class="blog-img mr-4" style="background-image: url(images/image_1.jpg);"></a>
                        <div class="text">
                            <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control
                                    about</a></h3>
                            <div class="meta">
                                <div><a href="#"><span class="icon-calendar"></span> Sept 15, 2018</a></div>
                                <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                                <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="block-21 mb-4 d-flex">
                        <a class="blog-img mr-4" style="background-image: url(images/image_2.jpg);"></a>
                        <div class="text">
                            <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control
                                    about</a></h3>
                            <div class="meta">
                                <div><a href="#"><span class="icon-calendar"></span> Sept 15, 2018</a></div>
                                <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                                <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> --}}
            <div class="col-lg-4 col-md-6 mb-5 mb-md-5">
                <div class="ftco-footer-widget mb-4 ml-md-4">
                    <h2 class="ftco-heading-2">@lang('auth.Work Time') </h2>
                    <ul class="list-unstyled">
                        @if (app()->getLocale() == 'ar')
                            <?php echo $setting->setting_worktime_ar; ?>
                        @else
                            <?php echo $setting->setting_worktime_en; ?>
                        @endif

                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-5 mb-md-5">
                <div class="ftco-footer-widget mb-4"
                    style="{{ app()->getLocale() == 'ar' ? 'direction: rtl;' : '' }}">
                    <h2 class="ftco-heading-2">@lang('auth.Contact information')</h2>
                    <div class="block-23 mb-3">
                        <ul>
                            <li><span class="icon icon-map-marker"></span><span class="text">
                                    {{ app()->getLocale() == 'ar' ? $setting->setting_site_address_ar : $setting->setting_site_address_en }}
                                </span></li>
                            <li><a href="tel:{{ $setting->setting_sitetell1 }}"><span
                                        class="icon icon-phone"></span><span class="text">
                                        {{ $setting->setting_sitetell1 }}
                                    </span></a></li>
                            <li><a href="mailto:{{ $setting->setting_site_email }}"><span
                                        class="icon icon-envelope"></span><span
                                        class="text">{{ $setting->setting_site_email }}</span></a></li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center">

                <p>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;
                    <script>
                        document.write(new Date().getFullYear());
                    </script> All rights reserved {{ $setting->setting_title_en }}
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                </p>
            </div>
        </div>
    </div>
</footer>



<!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
        <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4"
            stroke="#eeeeee" />
        <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4"
            stroke-miterlimit="10" stroke="#F96D00" />
    </svg></div>


<script src="{{ asset('js/jquery.min.js') }}"></script>
<script src="{{ asset('js/jquery-migrate-3.0.1.min.js') }}"></script>
<script src="{{ asset('js/popper.min.js') }}"></script>
<script src="{{ asset('js/bootstrap.min.js') }}"></script>
<script src="{{ asset('js/jquery.easing.1.3.js') }}"></script>
<script src="{{ asset('js/jquery.waypoints.min.js') }}"></script>
<script src="{{ asset('js/jquery.stellar.min.js') }}"></script>
<script src="{{ asset('js/owl.carousel.min.js') }}"></script>
<script src="{{ asset('js/jquery.magnific-popup.min.js') }}"></script>
<script src="{{ asset('js/aos.js') }}"></script>
<script src="{{ asset('js/jquery.animateNumber.min.js') }}"></script>
<script src="{{ asset('js/bootstrap-datepicker.js') }}"></script>
<script src="{{ asset('js/jquery.timepicker.min.js') }}"></script>
<script src="{{ asset('js/scrollax.min.js') }}"></script>

<script src="{{ asset('js/google-map.js') }}"></script>
<script src="{{ asset('js/main.js') }}"></script>

{{-- <script>
    window.addEventListener("DOMContentLoaded", event => {
        const audio = document.querySelector("audio");
        audio.volume = 0.2;
        audio.play();
    });
</script> --}}
@livewireScripts

</html>
