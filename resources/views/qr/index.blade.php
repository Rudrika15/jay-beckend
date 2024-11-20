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
                Qr code list
            </div>

            <div class="">

            </div>

        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered">
                    <tr>
                        <th>No</th>
                        <th>Name</th>
                        <th>Qr code</th>
                        <th>Status</th>
                        <th width="280px">Action</th>
                    </tr>
                    @php $no = 1; @endphp
                    @foreach ($data as $data)
                        <tr>
                            <td>{{ $no++ }}</td>
                            <td>{{ $data->name }}</td>
                            <td>
                                <img src="{{ asset('images/' . $data->image) }}" alt="" width="100px">
                            </td>
                            <td>{{ $data->status }}</td>

                        </tr>
                    @endforeach

                </table>
            </div>
        </div>
    </div>
    {{-- {!! $data->links('pagination::bootstrap-5') !!} --}}
@endsection
