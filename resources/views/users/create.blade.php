@extends('layouts.app')

@section('content')


    @if (count($errors) > 0)
        <div class="alert alert-danger">
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif


    <div class="card">
        <div class="card-header py-3 d-flex justify-content-between h5">
            <div class=" pt-3">
                Create Users
            </div>
            @if (auth()->user()->can('user-create'))
                <div class="">
                    <a class="btn btn-secondary mb-2" href="{{ route('users.index') }}">
                        Back</a>
                </div>
            @endif
        </div>
        <div class="card-body">


            <form method="POST" action="{{ route('users.store') }}">
                @csrf
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Name:</strong>
                            <input type="text" name="name" placeholder="Name" class="form-control">
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Phone:</strong>
                            <input type="text" name="phone" placeholder="phone" class="form-control">
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Email:</strong>
                            <input type="email" name="email" placeholder="Email" class="form-control">
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Birth Date:</strong>
                            <input type="date" max="{{ \Carbon\Carbon::now()->format('d-m-Y') }}"
                                pattern="\d{4}-\d{2}-\d{2}" id="birthdate" name="birthdate" class="form-control">
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Password:</strong>
                            <input type="password" name="password" placeholder="Password" class="form-control">
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Confirm Password:</strong>
                            <input type="password" name="confirm-password" placeholder="Confirm Password"
                                class="form-control">
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Role:</strong>
                            <select name="roles[]" class="form-control" multiple="multiple">
                                @foreach ($roles as $value => $label)
                                    <option value="{{ $value }}">
                                        {{ $label }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                        <button type="submit" class="btn btn-success btn-sm mt-2 mb-3"><i
                                class="fa-solid fa-floppy-disk"></i>
                            Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script>
        document.querySelector('#birthdate').addEventListener('input', function(e) {
            const dateParts = this.value.split('-'); // Split the value into [year, month, day]

            if (dateParts[0] && dateParts[0].length > 4) { // Check if year exceeds 4 digits
                this.value = ''; // Reset the input field if invalid
                alert('Year must be exactly 4 digits.');
            }
        });
    </script>
@endsection
