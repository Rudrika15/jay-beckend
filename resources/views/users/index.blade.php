@extends('layouts.app')
@section('title', 'Users')
@section('content')

    {{-- jquery cdn  --}}
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    @if (session('success'))
        <div class="alert alert-success" role="alert">
            {{ session('success') }}
        </div>
    @endif

    <div class="card">
        <div class="card-header py-3 d-flex justify-content-between h5">
            <div class="pt-3">
                Users
            </div>
            @if (auth()->user()->can('user-create'))
                <div class="">
                    <a class="btn btn-secondary mb-2" href="{{ route('users.create') }}"><i class="fa fa-plus"></i> Create
                        New
                        User</a>
                </div>
            @endif
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered">
                    <tr>
                        <th>No</th>
                        <th>Name</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Birthdate</th>
                        <th>Roles</th>
                        <th width="280px">Action</th>
                    </tr>
                    @php $no = 1; @endphp
                    @foreach ($data as $key => $user)
                        @if (auth()->user()->roles[0]->name == 'Admin' || auth()->user()->id == $user->id)
                            <tr>
                                <td>{{ $no++ }}</td>
                                <td>{{ $user->name }}</td>
                                <td>{{ $user->phone }}</td>
                                <td>{{ $user->email }}</td>
                                <td>{{ $user->birthdate }}</td>
                                <td>
                                    @if (!empty($user->getRoleNames()))
                                        @foreach ($user->getRoleNames() as $v)
                                            <label class="badge bg-success text-white">{{ $v }}</label>
                                        @endforeach
                                    @endif
                                </td>
                                <td>
                                    <a class="btn btn-info btn-sm" href="{{ route('users.show', $user->id) }}">
                                        {{-- <i class="fas fa-eye"></i>  --}}
                                        Show</a>
                                    @can('user-edit')
                                        <a class="btn btn-primary btn-sm" href="{{ route('users.edit', $user->id) }}">
                                            {{-- <i class="fas fa-edit"></i> --}}
                                            Edit</a>
                                    @endcan
                                    @can('user-delete')
                                        @if (!$user->hasRole('Admin'))
                                            <form method="POST" action="{{ route('users.destroy', $user->id) }}"
                                                style="display:inline">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-danger btn-sm">
                                                    {{-- <i class="fas fa-trash"></i> --}}
                                                    Delete</button>
                                            </form>
                                        @endif
                                    @endcan
                                </td>
                            </tr>
                        @endif
                    @endforeach
                </table>
            </div>
        </div>
    </div>
    {!! $data->links('pagination::bootstrap-5') !!}
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        $(document).ready(function() {
            $('.btn-danger').on('click', function(e) {
                e.preventDefault(); // Prevent form submission

                var form = $(this).closest('form'); // Get the form for deletion

                Swal.fire({
                    title: 'Are you sure?',
                    text: "You won't be able to revert this!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, delete it!',
                    cancelButtonText: 'Cancel'
                }).then((result) => {
                    if (result.isConfirmed) { // If confirmed, submit the form
                        form.submit();
                    }
                });
            });
        });
    </script>

@endsection
