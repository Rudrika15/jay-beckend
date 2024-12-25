@extends('visitor.layout.app')
@section('title', 'Jay infotech || Product')
@section('content')
    <!-- slider -->
    <div style="width: 100%;" class="bg-dark">

        <div class="container">
            <div class="row bg-dark py-3">

                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item2"><a href="#" class="text-white display-6 text-decoration-none">Home
                                /
                            </a>
                        </li>
                        <li class="breadcrumb-item"><a href="#"
                                class="text-white display-6 text-decoration-none">Product</a>

                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <!-- slider -->
    <div class="container">
        <div class="row pt-5">
            @foreach ($data as $data)
                <div class="col-md-4 py-5">
                    <div class="card">
                        <img src="{{ asset('images/' . $data->image) }}" class="card-img-top" loading="lazy" alt="img-1">
                        <div class="card-body">
                            <h5 class="card-title">
                                {{ $data->name }}
                            </h5>
                        </div>
                    </div>
                </div>
            @endforeach


        </div>
    </div>

@endsection
