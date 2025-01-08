@extends('layouts.app')

@section('content')
    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    @if (session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif

    @if (session('error'))
        <div class="alert alert-danger">
            {{ session('error') }}
        </div>
    @endif

    <div class="card">
        <div class="card-header py-3 d-flex justify-content-between h5">
            <div class="pt-3">
                @if (request('name') == 'product')
                    Edit Products
                @else
                    Edit Parts
                @endif
            </div>
            <div>
                @if (request('name') == 'product')
                    <a class="btn btn-secondary mb-2" href="{{ route('product.index') }}">
                        Back
                    </a>
                @else
                    <a class="btn btn-secondary mb-2" href="{{ route('parts.index') }}">
                        Back
                    </a>
                @endif
            </div>
        </div>
        <div class="card-body">

            <form method="POST" action="{{ route('parts.update') }}" enctype="multipart/form-data">
                @csrf

                <input type="hidden" name="id" value="{{ $data->id }}">

                <div class="row">
                    <!-- Name Field -->
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Name:</strong>
                            <input type="text" name="name" value="{{ old('name') }} {{ $data->name }}"
                                placeholder="Name" class="form-control">
                            @error('name')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>
                    </div>

                    <!-- detail Field -->
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Detail:</strong>
                            <textarea name="detail" placeholder="Detail" class="form-control"> {{ $data->detail }}</textarea>
                            @error('detail')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>
                    </div>

                    <!-- Image Field -->
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Image:</strong>
                            <input type="file" name="image" class="form-control">
                            <img src="{{ asset('images/' . $data->image) }}" style="width: 100px; margin: 10px"
                                alt="">
                            @error('image')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>
                    </div>

                    <!-- Submit Button -->
                    <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                        <button type="submit" class="btn btn-success btn-sm mt-2 mb-3">
                            <i class="fa-solid fa-floppy-disk"></i> Submit
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection
