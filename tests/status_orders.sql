with rules as (
    select *
    from {{ ref('stg_postgres_orders') }}
)

select *
from rules
where not (
        (order_id = 5 and items_total = 5 and status = 'completed')
    or  (shipping_service = 2 and items_total = 5 and status = 'in_progress')
    or  (cancelled = true and status = 'cancelled')
);
