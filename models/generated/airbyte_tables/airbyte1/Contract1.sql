

  create or replace table `technology-dev-tab`.airbyte1.`Contract1`

  as (

-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
-- depends_on: `technology-dev-tab`.airbyte1._airbyte_raw_Contract
select
    json_extract_scalar(_airbyte_data, "$['Id']") as ContId,
    json_extract_scalar(_airbyte_data, "$['Status']") as Status,
    json_extract_scalar(_airbyte_data, "$['EndDate']") as EndDate,
    json_extract_scalar(_airbyte_data, "$['OwnerId']") as OwnerId,
    json_extract_scalar(_airbyte_data, "$['AccountId']") as AccountId,
    json_extract_scalar(_airbyte_data, "$['IsDeleted']") as IsDeleted,
    json_extract_scalar(_airbyte_data, "$['StartDate']") as StartDate,
    json_extract_scalar(_airbyte_data, "$['Renewal__c']") as Renewal__c,
    json_extract_scalar(_airbyte_data, "$['StatusCode']") as StatusCode,
    json_extract_scalar(_airbyte_data, "$['BillingCity']") as BillingCity,
    json_extract_scalar(_airbyte_data, "$['CreatedById']") as CreatedById,
    json_extract_scalar(_airbyte_data, "$['CreatedDate']") as CreatedDate,
    json_extract_scalar(_airbyte_data, "$['Description']") as Description,
    json_extract_scalar(_airbyte_data, "$['BillingState']") as BillingState,
    json_extract_scalar(_airbyte_data, "$['ContractTerm']") as ContractTerm,
    json_extract_scalar(_airbyte_data, "$['Pricebook2Id']") as Pricebook2Id,
    json_extract_scalar(_airbyte_data, "$['RecordTypeId']") as RecordTypeId,
    json_extract_scalar(_airbyte_data, "$['ShippingCity']") as ShippingCity,
    json_extract_scalar(_airbyte_data, "$['SpecialTerms']") as SpecialTerms,
    json_extract_scalar(_airbyte_data, "$['ActivatedById']") as ActivatedById,
    json_extract_scalar(_airbyte_data, "$['ActivatedDate']") as ActivatedDate,
    json_extract_scalar(_airbyte_data, "$['BillingStreet']") as BillingStreet,
    json_extract_scalar(_airbyte_data, "$['ShippingState']") as ShippingState,
    _airbyte_ab_id,
    _airbyte_emitted_at,
    CURRENT_TIMESTAMP() as _airbyte_normalized_at
from `technology-dev-tab`.airbyte1._airbyte_raw_Contract as table_alias
)
