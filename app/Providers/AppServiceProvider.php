<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use  App\Models\Setting;
use  App\Models\Cart;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $setting=Setting::first();
        $count=Cart::count();
        view()->share('setting', $setting);
        view()->share('count', $count);
    }
}
