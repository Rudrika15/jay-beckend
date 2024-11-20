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
                Create Team Member
            </div>
            <div>
                <a class="btn btn-secondary mb-2" href="{{ route('team.index') }}">
                    Back
                </a>
            </div>
        </div>
        <div class="card-body">
            <form method="POST" action="{{ route('team.member.store') }}">
                @csrf
                <div class="row">
                    <!-- Name Field -->
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Name:</strong>
                            <input type="text" value="{{ $team->name }}" placeholder="Name" class="form-control">
                            @error('name')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>
                    </div>
                </div>
                <div class="row">
                    @foreach ($data as $user)
                        <div class="col">
                            <label for="{{ $user->id }}">
                                <input id="{{ $user->id }}" type="checkbox" name="userId[]" value="{{ $user->id }}"
                                    @if ($member->contains('userId', $user->id)) checked @endif>
                                {{ $user->name }}
                            </label>
                        </div>
                    @endforeach
                </div>

                <input type="hidden" name="teamId" value="{{ $team->id }}">
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
