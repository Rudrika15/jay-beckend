@extends('layouts.app')

@section('content')
    @if (auth()->user()->roles[0]->name == 'Admin')
        <form method="GET" action="{{ route('leave.report') }}">
            <div class="row">
                <div class="form-group col-md-3">
                    <label for="start_date">Start Date:</label>
                    <input type="date" id="start_date" name="start_date" class="form-control"
                        value="{{ request('start_date') }}">
                </div>
                <div class="form-group col-md-3">
                    <label for="end_date">End Date:</label>
                    <input type="date" id="end_date" name="end_date" class="form-control"
                        value="{{ request('end_date') }}">
                </div>
                <div class="form-group col-md-3">
                    <label for="search_user">Username:</label>
                    <input type="text" id="search_user" name="search_user" class="form-control"
                        value="{{ request('search_user') }}">
                </div>
                <div class="form-group col-md-3 d-flex align-items-end">
                    <button type="submit" class="btn btn-success mr-2">Find</button>
                    <a href="{{ route('leave.report') }}" class="btn btn-secondary" style="margin: 0px 0px 0px 20px;"><i
                            class="fas fa-sync-alt"></i></a>
                </div>

            </div>
        </form>
    @endif
    <div class="card">
        <div class="card-header py-2 d-flex justify-content-between h5">
            <div class=" pt-2">
                Leave report
            </div>
        </div>
        <div class="card-body">
            <div class="table table-responsive">
                <table class="table table-bordered mt-4">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Name</th>
                            <th>Phone</th>
                            <th>Email</th>
                            <th>Total Leave</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php $no = 1; @endphp
                        @foreach ($users as $user)
                            @if (auth()->user()->roles[0]->name == 'Admin' || auth()->user()->roles[0]->name == 'admin')
                                <tr>
                                    <td>{{ $no++ }}</td>
                                    <td>{{ $user->name }}</td>
                                    <td>{{ $user->phone }}</td>
                                    <td>{{ $user->email }}</td>
                                    <td>
                                        {{-- Display the total leave for the user --}}
                                        {{ $userLeaveCounts[$user->id] ?? 0 }}
                                    </td>
                                </tr>
                            @endif
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
