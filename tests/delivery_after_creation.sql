--¿Hay pedidos entregados ANTES--de haber sido creados?--Si esta query devuelve filas--→ el test FALLA.
SELECT *
FROM {{ ref('stg_postgres_orders') }}
WHERE delivered_at < created_at