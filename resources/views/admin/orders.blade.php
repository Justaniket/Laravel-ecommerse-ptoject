



@extends('layouts.adminLayout.admin_design')

@section('content')
<div class="container">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>DataTables</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">DataTables</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="container-fluid">
            <div class="row justify-content-center"> 
                <div class="col-12" style="margin-left:160px">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Orders</h3>
                        </div>
                        <div class="card-body">
                            <table id="orders" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>Order ID</th>
                                        <th>User Name</th>
                                        <th>Order Status</th>
                                        <th>Payment</th>
                                        <th>Date & Time</th>
                                        <th>Order Details</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($orders as $order)
                                    <tr>
                                        <td>{{ $order->id }}</td>
                                        <td>{{ $order->user->name }}</td>
                                        <td>
                                            <input type="hidden" name="order_id" class="order_id" value="{{ $order->id }}">
                                            <select class="order_status" data-order-id="{{ $order->id }}">
                                                <option value="Pending" {{ $order->order_status == 'Pending' ? 'selected' : '' }}>Pending</option>
                                                <option value="Dispatch" {{ $order->order_status == 'Dispatch' ? 'selected' : '' }}>Dispatch</option>
                                                <option value="Delivered" {{ $order->order_status == 'Delivered' ? 'selected' : '' }}>Delivered</option>
                                                <option value="Cancelled" {{ $order->order_status == 'Cancelled' ? 'selected' : '' }}>Cancelled</option>
                                            </select>
                                        </td>
                                        <td>
                                            <input type="hidden" name="order_id" class="order_id" value="{{ $order->id }}">
                                            <select class="payment_status" data-order-id="{{ $order->id }}">
                                                <option value="Paid" {{ $order->payment_status == 'Paid' ? 'selected' : '' }}>Paid</option>
                                                <option value="Unpaid" {{ $order->payment_status == 'Unpaid' ? 'selected' : '' }}>Unpaid</option>
                                            </select>
                                        </td>
                                        <td>{{ $order->created_at }}</td> 
                                        <td>
                                            <a href="/admin/order_details/{{ $order->id }}">View</a> 
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <footer class="main-footer">
                        <div class="float-right d-none d-sm-block">
                            <b>Version</b> 3.2.0
                        </div>
                        <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.
                            All rights reserved.</strong>
                    </footer>
                    <aside class="control-sidebar control-sidebar-dark"></aside>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(document).ready(function() {
        $('.order_status, .payment_status').on('change', function() {
            var selectedStatus = $(this).closest('tr').find('.order_status').val(); 
            var selectedPaymentStatus = $(this).closest('tr').find('.payment_status').val(); 
            var orderId = $(this).closest('tr').find('.order_id').val(); 
            var csrfToken = $('meta[name="csrf-token"]').attr('content');
            $.ajax({
                url: '/update-order-status', 
                type: 'POST',
                data: {
                    _token: csrfToken, 
                    order_id: orderId, 
                    order_status: selectedStatus,  
                    payment_status: selectedPaymentStatus 
                },
                success: function(response) {
                    console.log(response);
                },
                error: function(xhr, status, error) {  
                    console.error(xhr.responseText);
                }
            });
        });
    });
</script>
