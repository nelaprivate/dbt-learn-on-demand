
with payments as(
    
    select 
        id as payment_id,
        orderId as order_id, 
        paymentMethod as payment_method,
        status,
        --amount stored as cents, convert to dollars
        {{ cents_to_dollars('amount',2) }} as amount,
        created as created_at
    from {{ source('stripe','payment') }}
)

select * from payments