{{ config(materialized='view') }}


select

    -- timestamps
    dispatching_base_num,
    cast(pickup_datetime as timestamp) as pickup_datetime,
    cast(dropOff_datetime as timestamp) as dropoff_datetime,
    cast(PUlocationID as integer) as  pickup_locationid,
    cast(DOlocationID as integer) as dropoff_locationid,
    SR_Flag,
    Affiliated_base_number

from {{ source('staging','fhv_tripdata') }}
limit 100