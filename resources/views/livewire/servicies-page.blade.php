<div >

        <div class="row d-md-flex" >
            <div class="col-lg-12  p-md-5">
                <div class="row" >
              <div class="col-md-12 nav-link-wrap mb-5">
                <div class="nav  nav-pills justify-content-center" id="v-pills-tab" role="tablist" aria-orientation="vertical"  style="{{app()->getLocale() == 'ar' ? 'direction: rtl;' : '' }}">

                    @foreach ($categories as $key => $item )
                    <div wire:key="{{ $item['id'] }}" >
                    <a type="button"  wire:click.prevent="changeSelectedProducts({{$item['id']}})" class="nav-link {{$_id==$item['id'] ? 'active' : ''}} "
                         >
                        {{ app()->getLocale() == 'ar' ? $item['department_title_ar'] :$item['department_title_en']}}
                    </a>
                    </div>
                    @endforeach

              </div>
              <div class="col-md-12 d-flex align-items-center">

                <div class="tab-content " id="v-pills-tabContent" style="margin-top: 4%;width: 100%;">

                  <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-1-tab">
                      <div class="row" style="{{app()->getLocale() == 'ar' ? 'direction: rtl' : ''}}">
                        @foreach ($selected_products as  $key => $item)

                        <div class="col-md-4 text-center" >
                            <div class="menu-wrap">
                                <a href="#" class="menu-img img mb-4" style="background-image:url('{{ asset('articles/' . $item['articles_image']) }}')"></a>
                                <div class="text">
                                    <h3><a href="#">{{ app()->getLocale() == 'ar' ? $item['articles_title_ar'] :$item['articles_title_en']}}</a></h3>
                                    <p style="width: 100%">
                                        @if (app()->getLocale() == 'ar')
                                        <?php echo $item['articles_subject_ar'] ?>
                                        @else
                                        <?php echo $item['articles_subject_en'] ?>
                                        @endif

                                    </p>
                                    <p class="price"><span>${{$item['price']}}</span></p>
                                    <p><a href="{{route('bookServicePage',[$item['id'],'service'])}}" class="btn btn-primary btn-outline-primary"> @lang('auth.Get Service Now')</a></p>
                                </div>
                            </div>
                        </div>


                        @endforeach

                      </div>
                  </div>




                </div>
              </div>
            </div>
          </div>
        </div>


</div>
</div>
