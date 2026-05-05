with source as (

select *
    from {{ source('postgres', 'orders') }}
),


renamed as (
    select
        ORDER_ID,
        SHIPPING_SERVICE,
        SHIPPING_COST,
        ADDRESS_ID,
        CREATED_AT,
        PROMO_ID,
        ESTIMATED_DELIVERY_AT,
        ORDER_COST,
        USER_ID,
        ORDER_TOTAL,
        DELIVERED_AT,
        TRACKING_ID,
        STATUS,
        _FIVETRAN_DELETED,
        _FIVETRAN_SYNCED

    from source

)

select * from renamed