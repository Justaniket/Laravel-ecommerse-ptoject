@extends('layouts.frontLayout.front_design')
@section('content')

<div class="container">
   
    <h2>Your Cart</h2>

    @if($cartItems->isEmpty())
        <p>Your cart is empty.</p>
    @else
        <table class="table">
            <thead>
                <tr>
                    <th>Image</th>
                    <th>Product name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $total = 0;
                @endphp
                @foreach($cartItems as $cartItem)
                    <tr>
                        <td>
                            @if($cartItem->product)
                                <img src="{{ asset('adminImages/products_images/' . $cartItem->product->image) }}" alt="Product Image" height="50">
                            @endif
                        </td>
                        <td>
                            @if($cartItem->product)
                                {{ $cartItem->product->name }}
                            @endif
                        </td>
                        <td class="price-cell">
                            ${{ $cartItem->price }}
                        </td>
                        <td >
                            <div style="width: 135px;">
                            <form action="{{ url('update-cart-quantity') }}" method="post" class="update-cart-form">
                                @csrf
                                <input type="hidden" name="customerId" value="{{ $cartItem->customerId }}">
                                <input type="hidden" name="productId" value="{{ $cartItem->product->id }}">
                                <div class="input-group">
                                    <button class="btn btn-outline-secondary btn-minus" type="button">-</button>
                                    <input type="number" min="1" value="{{ $cartItem->quantity }}" class="form-control quantity-input width text-center"  name="quantity" data-cart-id="{{ $cartItem->id }}">
                                    <button class="btn btn-outline-secondary btn-plus" type="button">+</button>
                                </div>
                            </form>
                        </div>
                        </td>
                        <td class="total-price-cell">
                            ${{ $cartItem->price * $cartItem->quantity }}
                        </td>
                        <td>
                            <a href="{{ route('remove-from-cart', ['cartItemId' => $cartItem->id]) }}">Remove from Cart</a>
                        </td>
                    </tr>
                    @php
                        $total += ($cartItem->price * $cartItem->quantity);  
                    @endphp
                @endforeach
            </tbody>
        </table>
        <div class="d-flex justify-content-end">
            <h3>SubTotal: <span class="subtotal">${{ $total }}</span></h3>
        </div>
    @endif
   
</div>

<!-- Include jQuery -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<script>
    $(document).ready(function() {
        $('.btn-minus, .btn-plus').on('click', function() {
            var $input = $(this).parent().find('input.quantity-input');
            var customerId = $input.closest('form').find('input[name="customerId"]').val();
            var productId = $input.closest('form').find('input[name="productId"]').val();
            var oldValue = parseInt($input.val());

            if ($(this).hasClass('btn-minus') && oldValue > 1) {
                var quantity = oldValue - 1;
            } else if ($(this).hasClass('btn-plus')) {
                var quantity = oldValue + 1;
            } else {
                var quantity = oldValue;
            }

            $.ajax({
                url: '/update-cart-quantity',
                type: 'POST',
                data: {
                    customerId: customerId,
                    productId: productId,
                    quantity: quantity,
                    _token: '{{ csrf_token() }}'
                },
                success: function(response) {
                    if (response.status === 'success') {
                        // Update the quantity input value
                        $input.val(quantity);

                        // Update the total price cell value
                        var $totalPriceCell = $input.closest('tr').find('.total-price-cell');
                        $totalPriceCell.text('$' + response.updatedTotal.toFixed(2));

                        // Reload the page after a successful update
                        location.reload();
                        
                    } 
                    else {
                        alert('Error updating quantity. Please try again.');
                    }
                },
            });
        });
    });
</script>

@endsection
