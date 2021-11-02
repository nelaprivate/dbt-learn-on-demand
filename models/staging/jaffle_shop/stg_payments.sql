
with payments as(
    
    select 
        id as payment_id,
        orderId as order_id, 
        paymentMethod as payment_method,
        status,

        --amount stored as cents, convert to dollars
        amount / 100 as amount,
        created as created_at
    from raw.stripe.payment
)

select * from payments