@extends('layouts.app')
@section('title', 'Qr Code')
@section('content')

    @if (session('success'))
        <div class="alert alert-success" role="alert">
            {{ session('success') }}
        </div>
    @endif

    <div class="card">
        <div class="card-header py-3 d-flex justify-content-between h5">
            <div class="pt-3">
                Teams
            </div>

            <div class="">
                <a class="btn btn-secondary mb-2" href="{{ route('team.create') }}"><i class="fa fa-plus"></i> Create
                    New
                    Team</a>
            </div>

        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered">
                    <tr>
                        <th>No</th>
                        <th>Name</th>
                        <th width="280px">Action</th>
                    </tr>
                    @php $no = 1; @endphp
                    @foreach ($data as $data)
                        <tr>
                            <td>{{ $no++ }}</td>
                            <td>{{ $data->name }}</td>
                            <td>

                                <a class="btn btn-danger delete-btn" href="{{ route('team.delete', $data->id) }}">
                                    {{-- <i class="fa fa-trash "></i>  --}}
                                    Delete</a>
                                <a class="btn btn-info" href="{{ route('team.member', $data->id) }}">
                                    {{-- <i class="fa fa-user"></i> --}}
                                    Add Member</a>
                            </td>
                        </tr>
                    @endforeach

                </table>
            </div>
        </div>
    </div>
    {{-- {!! $data->links('pagination::bootstrap-5') !!} --}}
@endsection
