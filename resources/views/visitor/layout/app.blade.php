<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <title>@yield('title')</title>
    <style>
        .client-logo {
            padding-top: 10px;
            width: 250px;
            height: auto;
            object-fit: contain;
            filter: grayscale(100%);
            transition: filter 0.3s ease;
            padding-left: 100px;
        }

        .client-logo:hover {
            filter: grayscale(0);
        }

        .carousel-inner {
            padding: 20px 0;
        }
    </style>
</head>

<body>
    <div class="" style="width: 100%;background-color: #0dcaf0;">

        <div class="container">
            <div class="row">

                <div class="d-flex justify-content-between ">
                    <div class="p-2 text-white "><i class="bi bi-envelope"></i> <b> info@jayinfotech.org</b></div>

                    <div class="p-2 text-white"><i class="bi bi-telephone"></i> <b>+91 123456789</b></div>
                </div>
            </div>
        </div>

    </div>
    <nav class="navbar navbar-expand-lg navbar-light ">
        <div class="container">
            <a class="navbar-brand" href="#">Jay Infotech</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="{{ route('visitor.home') }}">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " aria-current="page" href="{{ route('visitor.about') }}">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " aria-current="page" href="{{ route('visitor.product') }}">Product</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " aria-current="page" href="{{ route('visitor.contact') }}">Contact</a>
                    </li>

                    {{-- <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            Dropdown
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Action</a></li>
                            <li><a class="dropdown-item" href="#">Another action</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li> --}}
                </ul>

            </div>
        </div>
    </nav>
    @yield('content')


    <!-- Footer -->
    <div class="py-5"></div>
    <footer class="text-center text-lg-start bg-dark text-muted py-5">

        <!-- Section: Social media -->

        <!-- Section: Links  -->
        <section class="">
            <div class="container text-center text-md-start mt-5">
                <!-- Grid row -->
                <div class="row mt-3">
                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                        <!-- Content -->
                        <h6 class="text-uppercase fw-bold mb-4">
                            <i class="fas fa-gem me-3"></i>Jay Infotech
                        </h6>
                        <p>
                            Here you can use rows and columns to organize your footer content. Lorem ipsum
                            dolor sit amet, consectetur adipisicing elit.
                        </p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold mb-4">
                            Use full links
                        </h6>
                        <p>
                            <a href="{{ route('visitor.home') }}" class="text-reset">Home</a>
                        </p>
                        <p>
                            <a href="{{ route('visitor.about') }}" class="text-reset">About</a>
                        </p>
                        <p>
                            <a href="{{ route('visitor.product') }}" class="text-reset">Product</a>
                        </p>
                        <p>
                            <a href="{{ route('visitor.contact') }}" class="text-reset">Contact</a>
                        </p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold mb-4">
                            Social media
                        </h6>
                        <span>
                            <i class="bi bi-facebook"></i>
                        </span>
                        <span class="mx-3">
                            <i class="bi bi-instagram"></i>
                        </span>
                        <span class="">
                            <i class="bi bi-twitter"></i>
                        </span>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
                        <p>
                            Jay Infotech<br>
                            2<sup>nd </sup> Floor Ajay Arcade,<br>
                            Jawahar road, <br>
                            Surendranaga 363001
                            <br>
                            9874563210
                            <br>
                            info@jayinfotech.org
                        </p>
                    </div>
                    <!-- Grid column -->
                </div>
                <!-- Grid row -->
            </div>
        </section>
        <!-- Section: Links  -->

        <!-- Copyright -->
        @php
            $year = date('Y');
        @endphp
        <div class=" " style="background-color: rgba(0, 0, 0, 0.05);">
            <div class="d-flex justify-content-between container">


                <div class="text-center p-4">
                    © {{ $year }} Copyright:
                    <a class="text-reset fw-bold" href="#">Jay Infotech </a>
                </div>
                <div class="text-center p-4">

                    Developed By <a class="text-reset fw-bold" href="https://www.flipcodesolutions.com" target="_blank"
                        class="text-reset fw-bold">Flipcode Solutions private limited</a>
                    </a>
                </div>
            </div>
        </div>
        <!-- Copyright -->
    </footer>
    <!-- Footer -->
    <script src="{{ asset('js/bootstrap.bundle.min.js') }}"></script>
</body>

</html>
