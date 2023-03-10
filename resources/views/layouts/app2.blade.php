@extends('layouts.app')
@section('content')

    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    </head>
    <style>
        footer {
            margin-top: 55px !important;
        }
    </style>
    @if (App::getLocale() == 'ar')
        <style>
            .two {
                border: 1px solid black;
                margin: 27px;
                margin-top: 13%;
                height: fit-content;
                background: whitesmoke;
                padding: 44px 26px 44px 26px;
                border-radius: 16px;
            }

            #button {
                text-decoration: none;
                border-radius: 12px;
                width: 100%;
                margin-bottom: 5px;
                margin-top: 5px;
                font-size: medium
            }

            .one {
                /* width: 67%; */
                margin-top: 27px;
                /* margin-right: 28px; */
                border: 1px solid black;
                background: whitesmoke;
                border-radius: 13.5px;
                margin-top: 13%;

            }

            .three {
                /* width: 100%; */
                margin-top: 27px;
                margin-right: 12px;
                /* border-top: 1px solid; */
                margin-bottom: 25px;

            }

            .text_user {
                padding-top: 25px;
                padding-bottom: 25px;
                padding-right: 15px;
                color: black;
                text-align: start;
                /* border-bottom: 1px solid #4682B4; */
            }

            .span1 {
                color: #4682B4;
            }

            .span2 {
                margin-top: 29px;
                /* float: left; */
                color: #4682B4;
                /* margin-left: 11px; */
            }

            .span2 input:hover {
                /* background-color: #555; */
                background: #ffc107;
                border-color: #ffc107;
            }

            .span3 {
                margin-top: 29px;
                color: white;
                background: #5AAC4E;
                border-color: #5AAC4E;
                padding: 5px;
            }

            .span3:hover {
                opacity: 0.9;
            }

            .span4 {
                border-radius: 0px;
                margin-right: 8px;
                height: 35px;
                margin-top: 3px;
                background: #5AAC4E;
                border-color: #5AAC4E;
            }

            .span4:hover {
                opacity: 0.9;
            }
        </style>
    @else
        <style>
            #button {
                text-decoration: none;
                border-radius: 12px;
                width: 100%;
                margin-bottom: 5px;
                margin-top: 5px;
                font-size: medium
            }

            .two {
                border: 1px solid black;
                margin: 27px;
                height: fit-content;
                background: whitesmoke;
                padding: 44px 26px 44px 26px;
                border-radius: 16px;
                margin-top: 13%;

            }

            .one {
                /* width: 67%; */
                margin-top: 27px;
                /* margin-left: 28px; */
                /* margin-right: 86px; */
                border: 1px solid black;
                background: whitesmoke;
                border-radius: 13.5px;
                margin-top: 13%;
            }

            .three {
                /* width: 100%; */
                margin-top: 27px;
                margin-left: 12px;
                /* border-top: 1px solid #4682B4; */
                margin-bottom: 25px;
                /* margin-right: 86px; */
                /* border: 1px solid #4682B4; */
            }

            .dropdown-item {
                padding-top: 25px;
                /* color:#4682B4; */
                padding-bottom: 25px;
                border-bottom: 1px solid black;
            }

            .text_user {
                padding-top: 25px;
                padding-bottom: 25px;
                padding-left: 15px;
                color: black;
                /* border-bottom: 1px solid #4682B4; */
            }

            .span1 {
                color: #4682B4;
            }

            .span2 {
                margin-top: 29px;
                /* float: right; */
                color: #4682B4;
                /* margin-right: 11px; */
                text-align: center;
            }

            .span2 input:hover {
                /* background-color: #555; */
                background: #ffc107;
                border-color: #ffc107;
            }

            .span3 {
                margin-top: 29px;
                color: white;
                background: #5AAC4E;
                border-color: #5AAC4E;
                padding: 5px;
            }

            .span3:hover {
                opacity: 0.9;
            }

            .span4 {
                border-radius: 0px;
                margin-left: 8px;
                height: 35px;
                margin-top: 3px;
                background: #5AAC4E;
                border-color: #5AAC4E;
            }

            .span4:hover {
                opacity: 0.9;
            }
        </style>
    @endif
    @livewireStyles


    {{-- user panel  --}}


    <div class="container" style="{{ App::getLocale() == 'ar' ? 'direction: rtl' : '' }}">
        <div class="row">
            <div class="col-lg-3 col-md-3 mb-5 mb-md-5 two" style="">
                <div class="">
                    <a class="btn btn-dark" id="button" href="{{route('manageProductsOrders')}}"> @lang('auth.manage products') </a> <br>

                    <a class="btn btn-dark" id="button" href="{{ route('manageOrders') }}"> @lang('auth.manage orders') </a> <br>

                    <a class="btn btn-dark" id="button" href="{{ url('home') }}"> @lang('auth.personal profile') </a>
                </div>
            </div>

            @yield('content1')

        </div>
    </div>

    </div>
    </div>

    @livewireScripts
@endsection
