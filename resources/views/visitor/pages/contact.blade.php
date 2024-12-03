@extends('visitor.layout.app')
@section('title', 'Jay infotech || Contact')
@section('content')
    <div style="width: 100%;" class="bg-dark">

        <div class="container">
            <div class="row bg-dark py-3">

                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item2"><a href="#" class="text-white display-6 text-decoration-none">Home
                                /
                            </a>
                        </li>
                        <li class="breadcrumb-item"><a href="#" class="text-white display-6 text-decoration-none">
                                Contact </a>

                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <!-- slider -->
    <div class="container">
        <div class="row pt-5">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3680.0536842053907!2d71.62861197533566!3d22.72624592732139!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39594102d6f00001%3A0x1a1e608663d7bc0e!2sjayinfotech!5e0!3m2!1sen!2sin!4v1732106995788!5m2!1sen!2sin"
                width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        <div class="row pt-5">
            <div class="col-md-6">
                <h2>Contact Us</h2>
                <hr>
                <form>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Email address</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1">
                    </div>
                    <div class="mb-3 form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">Check me out</label>
                    </div>
                    <button type="submit" class="btn btn-info text-white fw-bold">Submit</button>
                </form>
            </div>
            <div class="col-md-6 px-5">
                <h2>Main Office Address contact detail</h2>
                <hr>
                <p>
                    Jay Infotech<br />
                    2<sup>nd </sup> Floor Ajay Arcade,<br />
                    Jawahar road, <br />
                    Surendranaga 363001
                    <br />
                    9874563210
                    <br />
                    info@jayinfotech.org
                </p>
            </div>

        </div>


    </div>

@endsection
