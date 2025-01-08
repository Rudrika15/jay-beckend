@extends('layouts.app')
@section('title', 'Parts')
@section('content')

    @if (session('success'))
        <div class="alert alert-success" role="alert">
            {{ session('success') }}
        </div>
    @endif

    <div class="card">
        <div class="card-header py-3 d-flex justify-content-between h5">
            <div class="pt-3">
                Parts list
            </div>

            <div class="">
                <a class="btn btn-secondary mb-2" href="{{ route('parts.create') }}"><i class="fa fa-plus"></i> Create
                    New
                    parts</a>
            </div>

        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered">
                    <tr>
                        <th>No</th>
                        <th>Name</th>
                        <th>Detail</th>
                        <th>Image</th>
                        <th width="280px">Action</th>
                    </tr>
                    @php $no = 1; @endphp
                    @foreach ($data as $key => $product)
                        <tr>
                            <td>{{ $no++ }}</td>
                            <td>{{ $product->name }}</td>
                            <td>{{ $product->detail }}</td>
                            <td><img src="{{ asset('images/' . $product->image) }}" alt="" width="100px"></td>
                            <td>
                                <a href="{{ route('parts.edit', ['id' => $product->id, 'name' => 'parts']) }}"
                                    class="btn btn-info">
                                    {{-- <i class="fas fa-edit"></i> --}}
                                    Edit
                                </a>
                                <a href="{{ route('parts.delete', ['id' => $product->id, 'name' => 'parts']) }}"
                                    class="btn btn-danger delete-btn">
                                    {{-- <i class="fas fa-trash"></i> --}}
                                    Delete
                                </a>
                            </td>
                        </tr>
                    @endforeach

                </table>
            </div>
        </div>
    </div>
    {!! $data->links('pagination::bootstrap-5') !!}
@endsection
