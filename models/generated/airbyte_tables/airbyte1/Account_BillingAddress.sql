

  create or replace table `technology-dev-tab`.airbyte1.`Account_BillingAddress`
  partition by timestamp_trunc(_airbyte_emitted_at, day)
  cluster by _airbyte_emitted_at
  OPTIONS()
  as (
    
with __dbt__cte__Account_BillingAddress_ab1 as (

-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
-- depends_on: `technology-dev-tab`.airbyte1.`Account`
select
    _airbyte_Account_hashid,
    json_extract_scalar(BillingAddress, "$['city']") as city,
    json_extract_scalar(BillingAddress, "$['state']") as state,
    json_extract_scalar(BillingAddress, "$['street']") as street,
    json_extract_scalar(BillingAddress, "$['country']") as country,
    json_extract_scalar(BillingAddress, "$['latitude']") as latitude,
    json_extract_scalar(BillingAddress, "$['longitude']") as longitude,
    json_extract_scalar(BillingAddress, "$['postalCode']") as postalCode,
    json_extract_scalar(BillingAddress, "$['geocodeAccuracy']") as geocodeAccuracy,
    _airbyte_ab_id,
    _airbyte_emitted_at,
    CURRENT_TIMESTAMP() as _airbyte_normalized_at
from `technology-dev-tab`.airbyte1.`Account` as table_alias
-- BillingAddress at Account/BillingAddress
where 1 = 1
and BillingAddress is not null
),  __dbt__cte__Account_BillingAddress_ab2 as (

-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
-- depends_on: __dbt__cte__Account_BillingAddress_ab1
select
    _airbyte_Account_hashid,
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
from __dbt__cte__Account_BillingAddress_ab1
-- BillingAddress at Account/BillingAddress
where 1 = 1
),  __dbt__cte__Account_BillingAddress_ab3 as (

-- SQL model to build a hash column based on the values of this record
-- depends_on: __dbt__cte__Account_BillingAddress_ab2
select
    to_hex(md5(cast(concat(coalesce(cast(_airbyte_Account_hashid as 
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
))) as _airbyte_BillingAddress_hashid,
    tmp.*
from __dbt__cte__Account_BillingAddress_ab2 tmp
-- BillingAddress at Account/BillingAddress
where 1 = 1
)-- Final base SQL model
-- depends_on: __dbt__cte__Account_BillingAddress_ab3
select
    _airbyte_Account_hashid,
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
    _airbyte_BillingAddress_hashid
from __dbt__cte__Account_BillingAddress_ab3
-- BillingAddress at Account/BillingAddress from `technology-dev-tab`.airbyte1.`Account`
where 1 = 1
  );
  