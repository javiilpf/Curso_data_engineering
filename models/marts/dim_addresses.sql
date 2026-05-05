select 
    address_id,
    zipcode,
    country,
    address,
    state 
from {{ ref('stg_postgres_addresses') }}
