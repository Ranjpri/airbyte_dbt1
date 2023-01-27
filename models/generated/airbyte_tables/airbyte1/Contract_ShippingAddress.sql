

  create or replace table `technology-dev-tab`.airbyte1.`Contract_ShippingAddress`
  partition by timestamp_trunc(_airbyte_emitted_at, day)
  cluster by _airbyte_emitted_at
  OPTIONS()
  as (
    
with __dbt__cte__Contract_ShippingAddress_ab1 as (

-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
-- depends_on: `technology-dev-tab`.airbyte1.`Contract`
select
    _airbyte_Contract_hashid,
    json_extract_scalar(ShippingAddress, "$['city']") as city,
    json_extract_scalar(ShippingAddress, "$['state']") as state,
    json_extract_scalar(ShippingAddress, "$['street']") as street,
    json_extract_scalar(ShippingAddress, "$['country']") as country,
    json_extract_scalar(ShippingAddress, "$['latitude']") as latitude,
    json_extract_scalar(ShippingAddress, "$['longitude']") as longitude,
    json_extract_scalar(ShippingAddress, "$['postalCode']") as postalCode,
    json_extract_scalar(ShippingAddress, "$['geocodeAccuracy']") as geocodeAccuracy,
    _airbyte_ab_id,
    _airbyte_emitted_at,
    CURRENT_TIMESTAMP() as _airbyte_normalized_at
from `technology-dev-tab`.airbyte1.`Contract` as table_alias
-- ShippingAddress at Contract/ShippingAddress
where 1 = 1
and ShippingAddress is not null
),  __dbt__cte__Contract_ShippingAddress_ab2 as (

-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
-- depends_on: __dbt__cte__Contract_ShippingAddress_ab1
select
    _airbyte_Contract_hashid,
    cast(city as 
    string
) as city,
    cast(state as 
    string
) as state,
    cast(street as 
    string
) as street,
    cast(country as 
    string
) as country,
    cast(latitude as 
    float64
) as latitude,
    cast(longitude as 
    float64
) as longitude,
    cast(postalCode as 
    string
) as postalCode,
    cast(geocodeAccuracy as 
    string
) as geocodeAccuracy,
    _airbyte_ab_id,
    _airbyte_emitted_at,
    CURRENT_TIMESTAMP() as _airbyte_normalized_at
from __dbt__cte__Contract_ShippingAddress_ab1
-- ShippingAddress at Contract/ShippingAddress
where 1 = 1
),  __dbt__cte__Contract_ShippingAddress_ab3 as (

-- SQL model to build a hash column based on the values of this record
-- depends_on: __dbt__cte__Contract_ShippingAddress_ab2
select
    to_hex(md5(cast(concat(coalesce(cast(_airbyte_Contract_hashid as 
    string
), ''), '-', coalesce(cast(city as 
    string
), ''), '-', coalesce(cast(state as 
    string
), ''), '-', coalesce(cast(street as 
    string
), ''), '-', coalesce(cast(country as 
    string
), ''), '-', coalesce(cast(latitude as 
    string
), ''), '-', coalesce(cast(longitude as 
    string
), ''), '-', coalesce(cast(postalCode as 
    string
), ''), '-', coalesce(cast(geocodeAccuracy as 
    string
), '')) as 
    string
))) as _airbyte_ShippingAddress_hashid,
    tmp.*
from __dbt__cte__Contract_ShippingAddress_ab2 tmp
-- ShippingAddress at Contract/ShippingAddress
where 1 = 1
)-- Final base SQL model
-- depends_on: __dbt__cte__Contract_ShippingAddress_ab3
select
    _airbyte_Contract_hashid,
    city,
    state,
    street,
    country,
    latitude,
    longitude,
    postalCode,
    geocodeAccuracy,
    _airbyte_ab_id,
    _airbyte_emitted_at,
    CURRENT_TIMESTAMP() as _airbyte_normalized_at,
    _airbyte_ShippingAddress_hashid
from __dbt__cte__Contract_ShippingAddress_ab3
-- ShippingAddress at Contract/ShippingAddress from `technology-dev-tab`.airbyte1.`Contract`
where 1 = 1
  );
  