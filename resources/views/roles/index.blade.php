@extends('layouts.app')
@section('title', 'Roles')

@section('content')
    {{-- jquery cdn  --}}
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>


    @session('success')
        <div class="alert alert-success" role="alert">
            {{ $value }}
        </div>
    @endsession


    <div class="card">
        <div class="card-header py-3 d-flex justify-content-between h5">
            <div class=" pt-3">
                Roles
            </div>
            @if (auth()->user()->can('user-create'))
                <div class="">
                    <a class="btn btn-secondary mb-2" href="{{ route('roles.create') }}"><i class="fa fa-plus"></i> Create New
                        Role</a>
                </div>
            @endif
        </div>
        <div class="card-body">
            <table class="table table-bordered">
                <tr>
                    <th width="100px">No</th>
                    <th>Name</th>
                    <th width="280px">Action</th>
                </tr>
                @foreach ($roles as $key => $role)
                    <tr>
                        <td>{{ ++$i }}</td>
                        <td>{{ $role->name }}</td>
                        <td>
                            <a class="btn btn-info btn-sm" href="{{ route('roles.show', $role->id) }}">
                                {{-- <i class="fas fa-list"></i>  --}}
                                Show</a>
                            @can('role-edit')
                                <a class="btn btn-primary btn-sm" href="{{ route('roles.edit', $role->id) }}">
                                    {{-- <i class="fas fa-pen-to-square"></i>  --}}
                                    Edit</a>
                            @endcan

                            @can('role-delete')
                                <form method="POST" action="{{ route('roles.destroy', $role->id) }}" style="display:inline">
                                    @csrf
                                    @method('DELETE')

                                    <button type="submit" class="btn btn-danger btn-sm">
                                        {{-- <i class="fas fa-trash"></i> --}}
                                        Delete</button>
                                </form>
                            @endcan
                        </td>
                    </tr>
                @endforeach
            </table>

            {!! $roles->links('pagination::bootstrap-5') !!}

            {{-- @role('user')
 <h1>you are user</h1>
 @endrole --}}
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

        </div>
    </div>

@endsection
