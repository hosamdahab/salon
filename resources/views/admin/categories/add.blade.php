@extends('layouts.app1')
@section('content')
    <div id="layoutSidenav_content">

        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">اضافة تصنيف</h1>

                <div class="card mb-4">

                    <div class="card-body">


                        <form method="post" action="{{ route('department.store') }}" enctype="multipart/form-data">
                            @csrf

                            <input type="hidden" name="depatment_isactive" value="active">
                            <input type="hidden" name="categories" value="active">
                            <input type="hidden" name="redirect" value="Categories">

                            <div class="form-group">
                                <label for="exampleInputEmail1">الاسم بالعربية</label>
                                <input type="text" class="form-control" id="exampleInputEmail1"
                                    aria-describedby="emailHelp" name="department_title_ar" required>
                            </div>
                            <div class="form-group" style="margin-top: 10px">
                                <label for="exampleInputEmail1">الاسم بالانجليزية</label>
                                <input type="text" class="form-control" id="exampleInputEmail1"
                                    aria-describedby="emailHelp" name="department_title_en" required>
                            </div>



                            <button type="submit" class="btn btn-success" style="margin-top: 10px">اضافة</button>

                        </form>

                    </div>
                </div>
            </div>
        </main>

    </div>
@endsection






