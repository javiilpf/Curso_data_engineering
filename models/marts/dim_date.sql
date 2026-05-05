{{ config(materialized='table') }}

with date_spine as (

    {{ dbt.date_spine(
        datepart="day",
        start_date="to_date('2020-01-01')",
        end_date="to_date('2030-12-31')"
    ) }}

)

select
    date_day as date,
    extract(year from date_day) as year,
    extract(month from date_day) as month,
    extract(day from date_day) as day,
    extract(dow from date_day) as day_of_week
from date_spine