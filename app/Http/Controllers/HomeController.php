<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Department;
use App\Models\Setting;
use App\Models\CartOrder;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        if (Auth::user()->rule_id == 1) {
            $userDeps = Department::where('department_isactive', 'active')->get();
            return view('home', compact('userDeps'));
        }
        // return user pages
        else {
            $setting = Setting::find(1);

            if (Auth::user()) {
                $wordlist = CartOrder::where('user_id', '=', Auth::user()->id)->get();
                $count = $wordlist->count();
            } else {
                $count = 0;
            }


            return view('user.home', compact('setting','count'));

        }

        // return view('home');
    }
}
