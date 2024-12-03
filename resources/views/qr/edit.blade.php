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
                Edit Qr
            </div>
            <div>
                <a class="btn btn-secondary mb-2" href="{{ route('qr.index') }}">
                    Back
                </a>
            </div>
        </div>
        <div class="card-body">
            <form method="POST" action="{{ route('qr.update') }}" enctype="multipart/form-data">

                @csrf
                <input type="hidden" name="id" value="{{ $data->id }}">
                <div class="row">
                    <!-- Name Field -->
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Name:</strong>
                            <input type="text" name="name" value="{{ $data->name }}" placeholder="Name"
                                class="form-control">
                            @error('name')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>
                    </div>


                    <!-- Image Field -->
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Image:</strong>
                            <input type="file" name="image" class="form-control">
                            @error('image')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>
                        <img src="{{ asset('images/' . $data->image) }}" alt="Image" width="100" height="100">
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">

                            <strong>Status:</strong>
                            <select name="status" class="form-select">

                                <option value="Active" {{ $data->status == 'Active' ? 'selected' : '' }}>Active</option>
                                <option value="Inactive" {{ $data->status == 'Inactive' ? 'selected' : '' }}>Inactive
                                </option>
                            </select>
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