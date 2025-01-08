@extends('layouts.app')
@section('title', 'callReport')
@section('content')

    @if (session()->has('success'))
        <div class="alert alert-success">
            {{ session()->get('success') }}
        </div>
    @endif
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <form action="{{ route('call.report') }}" method="GET" class="mb-2">
                    @csrf
                    <div class="input-group">
                        <input type="date" value="{{ request()->query('start_date') }}" class="form-control"
                            name="start_date" id="">
                        <input type="date" value="{{ request()->query('end_date') }}" class="form-control"
                            name="end_date" id="">
                        <select name="status" class="form-select" id="">
                            <option value="" selected disabled>Select Status</option>
                            <option value="allocated" {{ request()->query('status') == 'allocated' ? 'selected' : '' }}>
                                Allocated</option>
                            <option value="cancelled" {{ request()->query('status') == 'cancelled' ? 'selected' : '' }}>
                                Cancelled</option>
                            <option value="waiting" {{ request()->query('status') == 'waiting' ? 'selected' : '' }}>Waiting
                            </option>
                            <option value="completed" {{ request()->query('status') == 'completed' ? 'selected' : '' }}>
                                Completed</option>
                        </select>
                        <select name="staff_id" class="form-select " id="">
                            <option value="" selected disabled>Select Staff</option>
                            @foreach ($staffs as $staff)
                                <option value="{{ $staff->id }}"
                                    {{ request()->query('staff_id') == $staff->id ? 'selected' : '' }}>{{ $staff->name }}
                                </option>
                            @endforeach
                        </select>
                        {{-- <select name="client_id" class="form-select" id="">
                            <option value="" selected disabled>Select Client</option>
                            @foreach ($clients as $client)
                                <option value="{{ $client->id }}"
                                    {{ request()->query('client_id') == $client->id ? 'selected' : '' }}>
                                    {{ $client->name }}</option>
                            @endforeach
                        </select> --}}
                        <button type="submit" class="btn btn-secondary">Find</button>
                        <a href="{{ route('call.report') }}" class="btn btn-primary"> Reset</a>
                    </div>
                </form>
                <div class="card">

                    <div class="card-header d-flex justify-content-between">
                        Call Report

                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Client Name <br>
                                            Phone <br>
                                            Email</th>
                                        <th>Staff Name</th>
                                        <th>Description</th>
                                        <th>Part Name</th>
                                        <th>Payment Method</th>
                                        <th>Total Charge</th>
                                        <th>Date</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($calls as $item)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>{{ $item->user->name }} <br>
                                                {{ $item->user->phone }} <br>
                                                {{ $item->user->email }}</td>
                                            {{-- <td> {{ $item->assign->user }} </td> --}}
                                            <td>
                                                @foreach ($item->assign as $assign)
                                                    {{ $assign->user->name ?? '' }} <br>
                                                @endforeach
                                            </td>
                                            <td>{{ $item->description }}</td>
                                            <td>{{ $item->name }}</td>
                                            <td>{{ $item->payment_method }}
                                                @if ($item->payment_method == 'qr')
                                                    <br> {{ $item->qr->name ?? '' }}
                                                @endif
                                                @if ($item->payment_method == 'debit')
                                                    <br> <a href="#" class="btn btn-primary" data-toggle="modal"
                                                        data-target="#payModal{{ $item->id }}">Pay </a>
                                                    <div class="modal fade" id="payModal{{ $item->id }}" tabindex="-1"
                                                        role="dialog" aria-labelledby="payModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog" role="document">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="payModalLabel">Pay
                                                                        {{ $item->name }}</h5>
                                                                    <button type="button" class="close"
                                                                        data-dismiss="modal" aria-label="Close">
                                                                        <span aria-hidden="true">&times;</span>
                                                                    </button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <form action="{{ route('payment.update', $item->id) }}"
                                                                        method="post">
                                                                        @csrf
                                                                        <select name="method" class="form-select"
                                                                            id="">
                                                                            <option value="cash">Cash</option>
                                                                            @foreach ($qrs as $qr)
                                                                                <option value="{{ $qr->id }}">
                                                                                    {{ $qr->name }} (QR)
                                                                                </option>
                                                                            @endforeach
                                                                        </select>
                                                                        <div class="form-group">
                                                                            <label for="amount">Amount</label>
                                                                            <input type="number" class="form-control"
                                                                                id="amount" name="amount"
                                                                                value="{{ $item->total_charge }}">
                                                                        </div>
                                                                        <button type="submit"
                                                                            class="btn btn-primary">Pay</button>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @endif
                                            </td>
                                            <td>{{ $item->total_charge }}</td>
                                            <td>{{ $item->date }}</td>
                                            <td>{{ $item->status }}</td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @push('js')
        <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
        <script>
            $(document).ready(function() {
                $('select').select2();
            });
        </script>
    @endpush
@endsection
