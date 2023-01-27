

  create or replace table `technology-dev-tab`.airbyte1.`Account`
  partition by timestamp_trunc(_airbyte_emitted_at, day)
  cluster by _airbyte_emitted_at
  OPTIONS()
  as (
    
with __dbt__cte__Account_ab1 as (

-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
-- depends_on: `technology-dev-tab`.airbyte1._airbyte_raw_Account
select
    json_extract_scalar(_airbyte_data, "$['Id']") as Id,
    json_extract_scalar(_airbyte_data, "$['Sic']") as Sic,
    json_extract_scalar(_airbyte_data, "$['Name']") as Name,
    json_extract_scalar(_airbyte_data, "$['Type']") as Type,
    json_extract_scalar(_airbyte_data, "$['Phone']") as Phone,
    json_extract_scalar(_airbyte_data, "$['CSM__c']") as CSM__c,
    json_extract_scalar(_airbyte_data, "$['Jigsaw']") as Jigsaw,
    json_extract_scalar(_airbyte_data, "$['Rating']") as Rating,
    json_extract_scalar(_airbyte_data, "$['SLA__c']") as SLA__c,
    json_extract_scalar(_airbyte_data, "$['OwnerId']") as OwnerId,
    json_extract_scalar(_airbyte_data, "$['SicDesc']") as SicDesc,
    json_extract_scalar(_airbyte_data, "$['Website']") as Website,
    json_extract_scalar(_airbyte_data, "$['Cloud__c']") as Cloud__c,
    json_extract_scalar(_airbyte_data, "$['Email__c']") as Email__c,
    json_extract_scalar(_airbyte_data, "$['Industry']") as Industry,
    json_extract_scalar(_airbyte_data, "$['ParentId']") as ParentId,
    json_extract_scalar(_airbyte_data, "$['PhotoUrl']") as PhotoUrl,
    json_extract_scalar(_airbyte_data, "$['IsDeleted']") as IsDeleted,
    json_extract_scalar(_airbyte_data, "$['IsPartner']") as IsPartner,
    json_extract_scalar(_airbyte_data, "$['Ownership']") as Ownership,
    json_extract_scalar(_airbyte_data, "$['Status__c']") as Status__c,
    json_extract_scalar(_airbyte_data, "$['Country__c']") as Country__c,
    json_extract_scalar(_airbyte_data, "$['Hunting__c']") as Hunting__c,
    json_extract_scalar(_airbyte_data, "$['Partner__c']") as Partner__c,
    json_extract_scalar(_airbyte_data, "$['Segment__c']") as Segment__c,
    json_extract_scalar(_airbyte_data, "$['BillingCity']") as BillingCity,
    json_extract_scalar(_airbyte_data, "$['CreatedById']") as CreatedById,
    json_extract_scalar(_airbyte_data, "$['CreatedDate']") as CreatedDate,
    json_extract_scalar(_airbyte_data, "$['Description']") as Description,
    json_extract_scalar(_airbyte_data, "$['BillingState']") as BillingState,
    json_extract_scalar(_airbyte_data, "$['CPQ_Stack__c']") as CPQ_Stack__c,
    json_extract_scalar(_airbyte_data, "$['RecordTypeId']") as RecordTypeId,
    json_extract_scalar(_airbyte_data, "$['ShippingCity']") as ShippingCity,
    json_extract_scalar(_airbyte_data, "$['TickerSymbol']") as TickerSymbol,
    json_extract_scalar(_airbyte_data, "$['AccountNumber']") as AccountNumber,
    json_extract_scalar(_airbyte_data, "$['AccountSource']") as AccountSource,
    json_extract_scalar(_airbyte_data, "$['BillingStreet']") as BillingStreet,
    json_extract_scalar(_airbyte_data, "$['Department__c']") as Department__c,
    json_extract_scalar(_airbyte_data, "$['ExternalId__c']") as ExternalId__c,
    json_extract_scalar(_airbyte_data, "$['Promo_Code__c']") as Promo_Code__c,
    json_extract_scalar(_airbyte_data, "$['SC_Company__c']") as SC_Company__c,
    json_extract_scalar(_airbyte_data, "$['SC_Contact__c']") as SC_Contact__c,
    json_extract_scalar(_airbyte_data, "$['ShippingState']") as ShippingState,
    json_extract_scalar(_airbyte_data, "$['VAT_number__c']") as VAT_number__c,
    
        json_extract(table_alias._airbyte_data, "$['BillingAddress']")
     as BillingAddress,
    json_extract_scalar(_airbyte_data, "$['BillingCountry']") as BillingCountry,
    json_extract_scalar(_airbyte_data, "$['LastViewedDate']") as LastViewedDate,
    json_extract_scalar(_airbyte_data, "$['MasterRecordId']") as MasterRecordId,
    json_extract_scalar(_airbyte_data, "$['ShippingStreet']") as ShippingStreet,
    json_extract_scalar(_airbyte_data, "$['SystemModstamp']") as SystemModstamp,
    json_extract_scalar(_airbyte_data, "$['BillingEmail__c']") as BillingEmail__c,
    json_extract_scalar(_airbyte_data, "$['BillingLatitude']") as BillingLatitude,
    json_extract_scalar(_airbyte_data, "$['CurrencyIsoCode']") as CurrencyIsoCode,
    json_extract_scalar(_airbyte_data, "$['JigsawCompanyId']") as JigsawCompanyId,
    json_extract_scalar(_airbyte_data, "$['Partner_Role__c']") as Partner_Role__c,
    
        json_extract(table_alias._airbyte_data, "$['ShippingAddress']")
     as ShippingAddress,
    json_extract_scalar(_airbyte_data, "$['ShippingCountry']") as ShippingCountry,
    json_extract_scalar(_airbyte_data, "$['BillingLongitude']") as BillingLongitude,
    json_extract_scalar(_airbyte_data, "$['BillingStateCode']") as BillingStateCode,
    json_extract_scalar(_airbyte_data, "$['IsCustomerPortal']") as IsCustomerPortal,
    json_extract_scalar(_airbyte_data, "$['LastActivityDate']") as LastActivityDate,
    json_extract_scalar(_airbyte_data, "$['LastModifiedById']") as LastModifiedById,
    json_extract_scalar(_airbyte_data, "$['LastModifiedDate']") as LastModifiedDate,
    json_extract_scalar(_airbyte_data, "$['ShippingLatitude']") as ShippingLatitude,
    json_extract_scalar(_airbyte_data, "$['BillingPostalCode']") as BillingPostalCode,
    json_extract_scalar(_airbyte_data, "$['Endpoint_Names__c']") as Endpoint_Names__c,
    json_extract_scalar(_airbyte_data, "$['NumberOfEmployees']") as NumberOfEmployees,
    json_extract_scalar(_airbyte_data, "$['SC_IBAN_Number__c']") as SC_IBAN_Number__c,
    json_extract_scalar(_airbyte_data, "$['ShippingLongitude']") as ShippingLongitude,
    json_extract_scalar(_airbyte_data, "$['ShippingStateCode']") as ShippingStateCode,
    json_extract_scalar(_airbyte_data, "$['BillingCountryCode']") as BillingCountryCode,
    json_extract_scalar(_airbyte_data, "$['ChannelProgramName']") as ChannelProgramName,
    json_extract_scalar(_airbyte_data, "$['Documentarchive__c']") as Documentarchive__c,
    json_extract_scalar(_airbyte_data, "$['External_Folder__c']") as External_Folder__c,
    json_extract_scalar(_airbyte_data, "$['InvoiceCategory__c']") as InvoiceCategory__c,
    json_extract_scalar(_airbyte_data, "$['LastReferencedDate']") as LastReferencedDate,
    json_extract_scalar(_airbyte_data, "$['SBQQ__TaxExempt__c']") as SBQQ__TaxExempt__c,
    json_extract_scalar(_airbyte_data, "$['SC_Type_of_Sale__c']") as SC_Type_of_Sale__c,
    json_extract_scalar(_airbyte_data, "$['ShippingPostalCode']") as ShippingPostalCode,
    json_extract_scalar(_airbyte_data, "$['CPQ_Partner_Tier__c']") as CPQ_Partner_Tier__c,
    json_extract_scalar(_airbyte_data, "$['Established_date__c']") as Established_date__c,
    json_extract_scalar(_airbyte_data, "$['ShippingCountryCode']") as ShippingCountryCode,
    json_extract_scalar(_airbyte_data, "$['Termination_Date__c']") as Termination_Date__c,
    json_extract_scalar(_airbyte_data, "$['Partner_Price_Book__c']") as Partner_Price_Book__c,
    json_extract_scalar(_airbyte_data, "$['Preferred_currency__c']") as Preferred_currency__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__PriceHoldEnd__c']") as SBQQ__PriceHoldEnd__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__RenewalModel__c']") as SBQQ__RenewalModel__c,
    json_extract_scalar(_airbyte_data, "$['SC_Billing_Contact__c']") as SC_Billing_Contact__c,
    json_extract_scalar(_airbyte_data, "$['Unified_VAT_number__c']") as Unified_VAT_number__c,
    json_extract_scalar(_airbyte_data, "$['BillingGeocodeAccuracy']") as BillingGeocodeAccuracy,
    json_extract_scalar(_airbyte_data, "$['CPQ_Partner_Support__c']") as CPQ_Partner_Support__c,
    json_extract_scalar(_airbyte_data, "$['External_Account_No__c']") as External_Account_No__c,
    json_extract_scalar(_airbyte_data, "$['JBCXM__CustomerInfo__c']") as JBCXM__CustomerInfo__c,
    json_extract_scalar(_airbyte_data, "$['SC_External_Invoice__c']") as SC_External_Invoice__c,
    json_extract_scalar(_airbyte_data, "$['UseOldMethodMapping__c']") as UseOldMethodMapping__c,
    json_extract_scalar(_airbyte_data, "$['fferpcore__TaxCode1__c']") as fferpcore__TaxCode1__c,
    json_extract_scalar(_airbyte_data, "$['fferpcore__TaxCode2__c']") as fferpcore__TaxCode2__c,
    json_extract_scalar(_airbyte_data, "$['fferpcore__TaxCode3__c']") as fferpcore__TaxCode3__c,
    json_extract_scalar(_airbyte_data, "$['ChannelProgramLevelName']") as ChannelProgramLevelName,
    json_extract_scalar(_airbyte_data, "$['Endpoint_Names_Short__c']") as Endpoint_Names_Short__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__PreserveBundle__c']") as SBQQ__PreserveBundle__c,
    json_extract_scalar(_airbyte_data, "$['ShippingGeocodeAccuracy']") as ShippingGeocodeAccuracy,
    json_extract_scalar(_airbyte_data, "$['ffbc__BillingAccount__c']") as ffbc__BillingAccount__c,
    json_extract_scalar(_airbyte_data, "$['fferpcore__VatStatus__c']") as fferpcore__VatStatus__c,
    json_extract_scalar(_airbyte_data, "$['Financial_Responsible__c']") as Financial_Responsible__c,
    json_extract_scalar(_airbyte_data, "$['Operates_in_countries__c']") as Operates_in_countries__c,
    json_extract_scalar(_airbyte_data, "$['Visibility_Restrictions__c']") as Visibility_Restrictions__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__CoTerminationEvent__c']") as SBQQ__CoTerminationEvent__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__DefaultOpportunity__c']") as SBQQ__DefaultOpportunity__c,
    json_extract_scalar(_airbyte_data, "$['Service_Delivery_Manager__c']") as Service_Delivery_Manager__c,
    json_extract_scalar(_airbyte_data, "$['fferpcore__OutputVatCode__c']") as fferpcore__OutputVatCode__c,
    json_extract_scalar(_airbyte_data, "$['fferpcore__SalesTaxStatus__c']") as fferpcore__SalesTaxStatus__c,
    json_extract_scalar(_airbyte_data, "$['fferpcore__TaxCountryCode__c']") as fferpcore__TaxCountryCode__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__RenewalPricingMethod__c']") as SBQQ__RenewalPricingMethod__c,
    json_extract_scalar(_airbyte_data, "$['Is_Partner_Customer_Account__c']") as Is_Partner_Customer_Account__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__ContractCoTermination__c']") as SBQQ__ContractCoTermination__c,
    json_extract_scalar(_airbyte_data, "$['SC_Subscription_Billing_Type__c']") as SC_Subscription_Billing_Type__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__AssetQuantitiesCombined__c']") as SBQQ__AssetQuantitiesCombined__c,
    json_extract_scalar(_airbyte_data, "$['Termination_request_ticket_no__c']") as Termination_request_ticket_no__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__CoTermedContractsCombined__c']") as SBQQ__CoTermedContractsCombined__c,
    json_extract_scalar(_airbyte_data, "$['fferpcore__ExemptionCertificate__c']") as fferpcore__ExemptionCertificate__c,
    json_extract_scalar(_airbyte_data, "$['fferpcore__ValidatedBillingCity__c']") as fferpcore__ValidatedBillingCity__c,
    json_extract_scalar(_airbyte_data, "$['Total_Number_Of_Billing_Contacts__c']") as Total_Number_Of_Billing_Contacts__c,
    json_extract_scalar(_airbyte_data, "$['fferpcore__ValidatedBillingState__c']") as fferpcore__ValidatedBillingState__c,
    json_extract_scalar(_airbyte_data, "$['fferpcore__ValidatedShippingCity__c']") as fferpcore__ValidatedShippingCity__c,
    json_extract_scalar(_airbyte_data, "$['fferpcore__VatRegistrationNumber__c']") as fferpcore__VatRegistrationNumber__c,
    json_extract_scalar(_airbyte_data, "$['SC_Do_Not_Send_To_Customer_Portal__c']") as SC_Do_Not_Send_To_Customer_Portal__c,
    json_extract_scalar(_airbyte_data, "$['fferpcore__ValidatedBillingStreet__c']") as fferpcore__ValidatedBillingStreet__c,
    json_extract_scalar(_airbyte_data, "$['fferpcore__ValidatedShippingState__c']") as fferpcore__ValidatedShippingState__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__IgnoreParentContractedPrices__c']") as SBQQ__IgnoreParentContractedPrices__c,
    json_extract_scalar(_airbyte_data, "$['fferpcore__ValidatedBillingCountry__c']") as fferpcore__ValidatedBillingCountry__c,
    json_extract_scalar(_airbyte_data, "$['fferpcore__ValidatedShippingStreet__c']") as fferpcore__ValidatedShippingStreet__c,
    json_extract_scalar(_airbyte_data, "$['fferpcore__ValidatedShippingCountry__c']") as fferpcore__ValidatedShippingCountry__c,
    json_extract_scalar(_airbyte_data, "$['fferpcore__IsBillingAddressValidated__c']") as fferpcore__IsBillingAddressValidated__c,
    json_extract_scalar(_airbyte_data, "$['fferpcore__IsShippingAddressValidated__c']") as fferpcore__IsShippingAddressValidated__c,
    json_extract_scalar(_airbyte_data, "$['fferpcore__ValidatedBillingPostalCode__c']") as fferpcore__ValidatedBillingPostalCode__c,
    json_extract_scalar(_airbyte_data, "$['fferpcore__ValidatedShippingPostalCode__c']") as fferpcore__ValidatedShippingPostalCode__c,
    json_extract_scalar(_airbyte_data, "$['fferpcore__MaterializedBillingAddressValidated__c']") as fferpcore__MaterializedBillingAddressValidated__c,
    json_extract_scalar(_airbyte_data, "$['fferpcore__MaterializedShippingAddressValidated__c']") as fferpcore__MaterializedShippingAddressValidated__c,
    _airbyte_ab_id,
    _airbyte_emitted_at,
    CURRENT_TIMESTAMP() as _airbyte_normalized_at
from `technology-dev-tab`.airbyte1._airbyte_raw_Account as table_alias
-- Account
where 1 = 1
),  __dbt__cte__Account_ab2 as (

-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
-- depends_on: __dbt__cte__Account_ab1
select
    cast(Id as 
    string
) as Id,
    cast(Sic as 
    string
) as Sic,
    cast(Name as 
    string
) as Name,
    cast(Type as 
    string
) as Type,
    cast(Phone as 
    string
) as Phone,
    cast(CSM__c as 
    string
) as CSM__c,
    cast(Jigsaw as 
    string
) as Jigsaw,
    cast(Rating as 
    string
) as Rating,
    cast(SLA__c as 
    float64
) as SLA__c,
    cast(OwnerId as 
    string
) as OwnerId,
    cast(SicDesc as 
    string
) as SicDesc,
    cast(Website as 
    string
) as Website,
    cast(Cloud__c as 
    string
) as Cloud__c,
    cast(Email__c as 
    string
) as Email__c,
    cast(Industry as 
    string
) as Industry,
    cast(ParentId as 
    string
) as ParentId,
    cast(PhotoUrl as 
    string
) as PhotoUrl,
    cast(IsDeleted as boolean) as IsDeleted,
    cast(IsPartner as boolean) as IsPartner,
    cast(Ownership as 
    string
) as Ownership,
    cast(Status__c as 
    string
) as Status__c,
    cast(Country__c as 
    string
) as Country__c,
    cast(Hunting__c as 
    string
) as Hunting__c,
    cast(Partner__c as 
    string
) as Partner__c,
    cast(Segment__c as 
    string
) as Segment__c,
    cast(BillingCity as 
    string
) as BillingCity,
    cast(CreatedById as 
    string
) as CreatedById,
    cast(nullif(CreatedDate, '') as 
    timestamp
) as CreatedDate,
    cast(Description as 
    string
) as Description,
    cast(BillingState as 
    string
) as BillingState,
    cast(CPQ_Stack__c as 
    string
) as CPQ_Stack__c,
    cast(RecordTypeId as 
    string
) as RecordTypeId,
    cast(ShippingCity as 
    string
) as ShippingCity,
    cast(TickerSymbol as 
    string
) as TickerSymbol,
    cast(AccountNumber as 
    string
) as AccountNumber,
    cast(AccountSource as 
    string
) as AccountSource,
    cast(BillingStreet as 
    string
) as BillingStreet,
    cast(Department__c as 
    string
) as Department__c,
    cast(ExternalId__c as 
    string
) as ExternalId__c,
    cast(Promo_Code__c as 
    string
) as Promo_Code__c,
    cast(SC_Company__c as 
    string
) as SC_Company__c,
    cast(SC_Contact__c as 
    string
) as SC_Contact__c,
    cast(ShippingState as 
    string
) as ShippingState,
    cast(VAT_number__c as 
    string
) as VAT_number__c,
    cast(BillingAddress as 
    string
) as BillingAddress,
    cast(BillingCountry as 
    string
) as BillingCountry,
    cast(nullif(LastViewedDate, '') as 
    timestamp
) as LastViewedDate,
    cast(MasterRecordId as 
    string
) as MasterRecordId,
    cast(ShippingStreet as 
    string
) as ShippingStreet,
    cast(nullif(SystemModstamp, '') as 
    timestamp
) as SystemModstamp,
    cast(BillingEmail__c as 
    string
) as BillingEmail__c,
    cast(BillingLatitude as 
    float64
) as BillingLatitude,
    cast(CurrencyIsoCode as 
    string
) as CurrencyIsoCode,
    cast(JigsawCompanyId as 
    string
) as JigsawCompanyId,
    cast(Partner_Role__c as 
    string
) as Partner_Role__c,
    cast(ShippingAddress as 
    string
) as ShippingAddress,
    cast(ShippingCountry as 
    string
) as ShippingCountry,
    cast(BillingLongitude as 
    float64
) as BillingLongitude,
    cast(BillingStateCode as 
    string
) as BillingStateCode,
    cast(IsCustomerPortal as boolean) as IsCustomerPortal,
    cast(nullif(LastActivityDate, '') as 
    date
) as LastActivityDate,
    cast(LastModifiedById as 
    string
) as LastModifiedById,
    cast(nullif(LastModifiedDate, '') as 
    timestamp
) as LastModifiedDate,
    cast(ShippingLatitude as 
    float64
) as ShippingLatitude,
    cast(BillingPostalCode as 
    string
) as BillingPostalCode,
    cast(Endpoint_Names__c as 
    string
) as Endpoint_Names__c,
    cast(NumberOfEmployees as 
    int64
) as NumberOfEmployees,
    cast(SC_IBAN_Number__c as 
    string
) as SC_IBAN_Number__c,
    cast(ShippingLongitude as 
    float64
) as ShippingLongitude,
    cast(ShippingStateCode as 
    string
) as ShippingStateCode,
    cast(BillingCountryCode as 
    string
) as BillingCountryCode,
    cast(ChannelProgramName as 
    string
) as ChannelProgramName,
    cast(Documentarchive__c as 
    string
) as Documentarchive__c,
    cast(External_Folder__c as 
    string
) as External_Folder__c,
    cast(InvoiceCategory__c as 
    string
) as InvoiceCategory__c,
    cast(nullif(LastReferencedDate, '') as 
    timestamp
) as LastReferencedDate,
    cast(SBQQ__TaxExempt__c as 
    string
) as SBQQ__TaxExempt__c,
    cast(SC_Type_of_Sale__c as 
    string
) as SC_Type_of_Sale__c,
    cast(ShippingPostalCode as 
    string
) as ShippingPostalCode,
    cast(CPQ_Partner_Tier__c as 
    string
) as CPQ_Partner_Tier__c,
    cast(nullif(Established_date__c, '') as 
    date
) as Established_date__c,
    cast(ShippingCountryCode as 
    string
) as ShippingCountryCode,
    cast(nullif(Termination_Date__c, '') as 
    timestamp
) as Termination_Date__c,
    cast(Partner_Price_Book__c as 
    string
) as Partner_Price_Book__c,
    cast(Preferred_currency__c as 
    string
) as Preferred_currency__c,
    cast(nullif(SBQQ__PriceHoldEnd__c, '') as 
    date
) as SBQQ__PriceHoldEnd__c,
    cast(SBQQ__RenewalModel__c as 
    string
) as SBQQ__RenewalModel__c,
    cast(SC_Billing_Contact__c as 
    string
) as SC_Billing_Contact__c,
    cast(Unified_VAT_number__c as 
    string
) as Unified_VAT_number__c,
    cast(BillingGeocodeAccuracy as 
    string
) as BillingGeocodeAccuracy,
    cast(CPQ_Partner_Support__c as 
    string
) as CPQ_Partner_Support__c,
    cast(External_Account_No__c as 
    string
) as External_Account_No__c,
    cast(JBCXM__CustomerInfo__c as 
    string
) as JBCXM__CustomerInfo__c,
    cast(SC_External_Invoice__c as boolean) as SC_External_Invoice__c,
    cast(UseOldMethodMapping__c as boolean) as UseOldMethodMapping__c,
    cast(fferpcore__TaxCode1__c as 
    string
) as fferpcore__TaxCode1__c,
    cast(fferpcore__TaxCode2__c as 
    string
) as fferpcore__TaxCode2__c,
    cast(fferpcore__TaxCode3__c as 
    string
) as fferpcore__TaxCode3__c,
    cast(ChannelProgramLevelName as 
    string
) as ChannelProgramLevelName,
    cast(Endpoint_Names_Short__c as 
    string
) as Endpoint_Names_Short__c,
    cast(SBQQ__PreserveBundle__c as boolean) as SBQQ__PreserveBundle__c,
    cast(ShippingGeocodeAccuracy as 
    string
) as ShippingGeocodeAccuracy,
    cast(ffbc__BillingAccount__c as 
    string
) as ffbc__BillingAccount__c,
    cast(fferpcore__VatStatus__c as 
    string
) as fferpcore__VatStatus__c,
    cast(Financial_Responsible__c as 
    string
) as Financial_Responsible__c,
    cast(Operates_in_countries__c as 
    string
) as Operates_in_countries__c,
    cast(Visibility_Restrictions__c as 
    string
) as Visibility_Restrictions__c,
    cast(SBQQ__CoTerminationEvent__c as 
    string
) as SBQQ__CoTerminationEvent__c,
    cast(SBQQ__DefaultOpportunity__c as 
    string
) as SBQQ__DefaultOpportunity__c,
    cast(Service_Delivery_Manager__c as 
    string
) as Service_Delivery_Manager__c,
    cast(fferpcore__OutputVatCode__c as 
    string
) as fferpcore__OutputVatCode__c,
    cast(fferpcore__SalesTaxStatus__c as 
    string
) as fferpcore__SalesTaxStatus__c,
    cast(fferpcore__TaxCountryCode__c as 
    string
) as fferpcore__TaxCountryCode__c,
    cast(SBQQ__RenewalPricingMethod__c as 
    string
) as SBQQ__RenewalPricingMethod__c,
    cast(Is_Partner_Customer_Account__c as boolean) as Is_Partner_Customer_Account__c,
    cast(SBQQ__ContractCoTermination__c as 
    string
) as SBQQ__ContractCoTermination__c,
    cast(SC_Subscription_Billing_Type__c as 
    string
) as SC_Subscription_Billing_Type__c,
    cast(SBQQ__AssetQuantitiesCombined__c as boolean) as SBQQ__AssetQuantitiesCombined__c,
    cast(Termination_request_ticket_no__c as 
    string
) as Termination_request_ticket_no__c,
    cast(SBQQ__CoTermedContractsCombined__c as boolean) as SBQQ__CoTermedContractsCombined__c,
    cast(fferpcore__ExemptionCertificate__c as 
    string
) as fferpcore__ExemptionCertificate__c,
    cast(fferpcore__ValidatedBillingCity__c as 
    string
) as fferpcore__ValidatedBillingCity__c,
    cast(Total_Number_Of_Billing_Contacts__c as 
    float64
) as Total_Number_Of_Billing_Contacts__c,
    cast(fferpcore__ValidatedBillingState__c as 
    string
) as fferpcore__ValidatedBillingState__c,
    cast(fferpcore__ValidatedShippingCity__c as 
    string
) as fferpcore__ValidatedShippingCity__c,
    cast(fferpcore__VatRegistrationNumber__c as 
    string
) as fferpcore__VatRegistrationNumber__c,
    cast(SC_Do_Not_Send_To_Customer_Portal__c as boolean) as SC_Do_Not_Send_To_Customer_Portal__c,
    cast(fferpcore__ValidatedBillingStreet__c as 
    string
) as fferpcore__ValidatedBillingStreet__c,
    cast(fferpcore__ValidatedShippingState__c as 
    string
) as fferpcore__ValidatedShippingState__c,
    cast(SBQQ__IgnoreParentContractedPrices__c as boolean) as SBQQ__IgnoreParentContractedPrices__c,
    cast(fferpcore__ValidatedBillingCountry__c as 
    string
) as fferpcore__ValidatedBillingCountry__c,
    cast(fferpcore__ValidatedShippingStreet__c as 
    string
) as fferpcore__ValidatedShippingStreet__c,
    cast(fferpcore__ValidatedShippingCountry__c as 
    string
) as fferpcore__ValidatedShippingCountry__c,
    cast(fferpcore__IsBillingAddressValidated__c as boolean) as fferpcore__IsBillingAddressValidated__c,
    cast(fferpcore__IsShippingAddressValidated__c as boolean) as fferpcore__IsShippingAddressValidated__c,
    cast(fferpcore__ValidatedBillingPostalCode__c as 
    string
) as fferpcore__ValidatedBillingPostalCode__c,
    cast(fferpcore__ValidatedShippingPostalCode__c as 
    string
) as fferpcore__ValidatedShippingPostalCode__c,
    cast(fferpcore__MaterializedBillingAddressValidated__c as boolean) as fferpcore__MaterializedBillingAddressValidated__c,
    cast(fferpcore__MaterializedShippingAddressValidated__c as boolean) as fferpcore__MaterializedShippingAddressValidated__c,
    _airbyte_ab_id,
    _airbyte_emitted_at,
    CURRENT_TIMESTAMP() as _airbyte_normalized_at
from __dbt__cte__Account_ab1
-- Account
where 1 = 1
),  __dbt__cte__Account_ab3 as (

-- SQL model to build a hash column based on the values of this record
-- depends_on: __dbt__cte__Account_ab2
select
    to_hex(md5(cast(concat(coalesce(cast(Id as 
    string
), ''), '-', coalesce(cast(Sic as 
    string
), ''), '-', coalesce(cast(Name as 
    string
), ''), '-', coalesce(cast(Type as 
    string
), ''), '-', coalesce(cast(Phone as 
    string
), ''), '-', coalesce(cast(CSM__c as 
    string
), ''), '-', coalesce(cast(Jigsaw as 
    string
), ''), '-', coalesce(cast(Rating as 
    string
), ''), '-', coalesce(cast(SLA__c as 
    string
), ''), '-', coalesce(cast(OwnerId as 
    string
), ''), '-', coalesce(cast(SicDesc as 
    string
), ''), '-', coalesce(cast(Website as 
    string
), ''), '-', coalesce(cast(Cloud__c as 
    string
), ''), '-', coalesce(cast(Email__c as 
    string
), ''), '-', coalesce(cast(Industry as 
    string
), ''), '-', coalesce(cast(ParentId as 
    string
), ''), '-', coalesce(cast(PhotoUrl as 
    string
), ''), '-', coalesce(cast(IsDeleted as 
    string
), ''), '-', coalesce(cast(IsPartner as 
    string
), ''), '-', coalesce(cast(Ownership as 
    string
), ''), '-', coalesce(cast(Status__c as 
    string
), ''), '-', coalesce(cast(Country__c as 
    string
), ''), '-', coalesce(cast(Hunting__c as 
    string
), ''), '-', coalesce(cast(Partner__c as 
    string
), ''), '-', coalesce(cast(Segment__c as 
    string
), ''), '-', coalesce(cast(BillingCity as 
    string
), ''), '-', coalesce(cast(CreatedById as 
    string
), ''), '-', coalesce(cast(CreatedDate as 
    string
), ''), '-', coalesce(cast(Description as 
    string
), ''), '-', coalesce(cast(BillingState as 
    string
), ''), '-', coalesce(cast(CPQ_Stack__c as 
    string
), ''), '-', coalesce(cast(RecordTypeId as 
    string
), ''), '-', coalesce(cast(ShippingCity as 
    string
), ''), '-', coalesce(cast(TickerSymbol as 
    string
), ''), '-', coalesce(cast(AccountNumber as 
    string
), ''), '-', coalesce(cast(AccountSource as 
    string
), ''), '-', coalesce(cast(BillingStreet as 
    string
), ''), '-', coalesce(cast(Department__c as 
    string
), ''), '-', coalesce(cast(ExternalId__c as 
    string
), ''), '-', coalesce(cast(Promo_Code__c as 
    string
), ''), '-', coalesce(cast(SC_Company__c as 
    string
), ''), '-', coalesce(cast(SC_Contact__c as 
    string
), ''), '-', coalesce(cast(ShippingState as 
    string
), ''), '-', coalesce(cast(VAT_number__c as 
    string
), ''), '-', coalesce(cast(BillingAddress as 
    string
), ''), '-', coalesce(cast(BillingCountry as 
    string
), ''), '-', coalesce(cast(LastViewedDate as 
    string
), ''), '-', coalesce(cast(MasterRecordId as 
    string
), ''), '-', coalesce(cast(ShippingStreet as 
    string
), ''), '-', coalesce(cast(SystemModstamp as 
    string
), ''), '-', coalesce(cast(BillingEmail__c as 
    string
), ''), '-', coalesce(cast(BillingLatitude as 
    string
), ''), '-', coalesce(cast(CurrencyIsoCode as 
    string
), ''), '-', coalesce(cast(JigsawCompanyId as 
    string
), ''), '-', coalesce(cast(Partner_Role__c as 
    string
), ''), '-', coalesce(cast(ShippingAddress as 
    string
), ''), '-', coalesce(cast(ShippingCountry as 
    string
), ''), '-', coalesce(cast(BillingLongitude as 
    string
), ''), '-', coalesce(cast(BillingStateCode as 
    string
), ''), '-', coalesce(cast(IsCustomerPortal as 
    string
), ''), '-', coalesce(cast(LastActivityDate as 
    string
), ''), '-', coalesce(cast(LastModifiedById as 
    string
), ''), '-', coalesce(cast(LastModifiedDate as 
    string
), ''), '-', coalesce(cast(ShippingLatitude as 
    string
), ''), '-', coalesce(cast(BillingPostalCode as 
    string
), ''), '-', coalesce(cast(Endpoint_Names__c as 
    string
), ''), '-', coalesce(cast(NumberOfEmployees as 
    string
), ''), '-', coalesce(cast(SC_IBAN_Number__c as 
    string
), ''), '-', coalesce(cast(ShippingLongitude as 
    string
), ''), '-', coalesce(cast(ShippingStateCode as 
    string
), ''), '-', coalesce(cast(BillingCountryCode as 
    string
), ''), '-', coalesce(cast(ChannelProgramName as 
    string
), ''), '-', coalesce(cast(Documentarchive__c as 
    string
), ''), '-', coalesce(cast(External_Folder__c as 
    string
), ''), '-', coalesce(cast(InvoiceCategory__c as 
    string
), ''), '-', coalesce(cast(LastReferencedDate as 
    string
), ''), '-', coalesce(cast(SBQQ__TaxExempt__c as 
    string
), ''), '-', coalesce(cast(SC_Type_of_Sale__c as 
    string
), ''), '-', coalesce(cast(ShippingPostalCode as 
    string
), ''), '-', coalesce(cast(CPQ_Partner_Tier__c as 
    string
), ''), '-', coalesce(cast(Established_date__c as 
    string
), ''), '-', coalesce(cast(ShippingCountryCode as 
    string
), ''), '-', coalesce(cast(Termination_Date__c as 
    string
), ''), '-', coalesce(cast(Partner_Price_Book__c as 
    string
), ''), '-', coalesce(cast(Preferred_currency__c as 
    string
), ''), '-', coalesce(cast(SBQQ__PriceHoldEnd__c as 
    string
), ''), '-', coalesce(cast(SBQQ__RenewalModel__c as 
    string
), ''), '-', coalesce(cast(SC_Billing_Contact__c as 
    string
), ''), '-', coalesce(cast(Unified_VAT_number__c as 
    string
), ''), '-', coalesce(cast(BillingGeocodeAccuracy as 
    string
), ''), '-', coalesce(cast(CPQ_Partner_Support__c as 
    string
), ''), '-', coalesce(cast(External_Account_No__c as 
    string
), ''), '-', coalesce(cast(JBCXM__CustomerInfo__c as 
    string
), ''), '-', coalesce(cast(SC_External_Invoice__c as 
    string
), ''), '-', coalesce(cast(UseOldMethodMapping__c as 
    string
), ''), '-', coalesce(cast(fferpcore__TaxCode1__c as 
    string
), ''), '-', coalesce(cast(fferpcore__TaxCode2__c as 
    string
), ''), '-', coalesce(cast(fferpcore__TaxCode3__c as 
    string
), ''), '-', coalesce(cast(ChannelProgramLevelName as 
    string
), ''), '-', coalesce(cast(Endpoint_Names_Short__c as 
    string
), ''), '-', coalesce(cast(SBQQ__PreserveBundle__c as 
    string
), ''), '-', coalesce(cast(ShippingGeocodeAccuracy as 
    string
), ''), '-', coalesce(cast(ffbc__BillingAccount__c as 
    string
), ''), '-', coalesce(cast(fferpcore__VatStatus__c as 
    string
), ''), '-', coalesce(cast(Financial_Responsible__c as 
    string
), ''), '-', coalesce(cast(Operates_in_countries__c as 
    string
), ''), '-', coalesce(cast(Visibility_Restrictions__c as 
    string
), ''), '-', coalesce(cast(SBQQ__CoTerminationEvent__c as 
    string
), ''), '-', coalesce(cast(SBQQ__DefaultOpportunity__c as 
    string
), ''), '-', coalesce(cast(Service_Delivery_Manager__c as 
    string
), ''), '-', coalesce(cast(fferpcore__OutputVatCode__c as 
    string
), ''), '-', coalesce(cast(fferpcore__SalesTaxStatus__c as 
    string
), ''), '-', coalesce(cast(fferpcore__TaxCountryCode__c as 
    string
), ''), '-', coalesce(cast(SBQQ__RenewalPricingMethod__c as 
    string
), ''), '-', coalesce(cast(Is_Partner_Customer_Account__c as 
    string
), ''), '-', coalesce(cast(SBQQ__ContractCoTermination__c as 
    string
), ''), '-', coalesce(cast(SC_Subscription_Billing_Type__c as 
    string
), ''), '-', coalesce(cast(SBQQ__AssetQuantitiesCombined__c as 
    string
), ''), '-', coalesce(cast(Termination_request_ticket_no__c as 
    string
), ''), '-', coalesce(cast(SBQQ__CoTermedContractsCombined__c as 
    string
), ''), '-', coalesce(cast(fferpcore__ExemptionCertificate__c as 
    string
), ''), '-', coalesce(cast(fferpcore__ValidatedBillingCity__c as 
    string
), ''), '-', coalesce(cast(Total_Number_Of_Billing_Contacts__c as 
    string
), ''), '-', coalesce(cast(fferpcore__ValidatedBillingState__c as 
    string
), ''), '-', coalesce(cast(fferpcore__ValidatedShippingCity__c as 
    string
), ''), '-', coalesce(cast(fferpcore__VatRegistrationNumber__c as 
    string
), ''), '-', coalesce(cast(SC_Do_Not_Send_To_Customer_Portal__c as 
    string
), ''), '-', coalesce(cast(fferpcore__ValidatedBillingStreet__c as 
    string
), ''), '-', coalesce(cast(fferpcore__ValidatedShippingState__c as 
    string
), ''), '-', coalesce(cast(SBQQ__IgnoreParentContractedPrices__c as 
    string
), ''), '-', coalesce(cast(fferpcore__ValidatedBillingCountry__c as 
    string
), ''), '-', coalesce(cast(fferpcore__ValidatedShippingStreet__c as 
    string
), ''), '-', coalesce(cast(fferpcore__ValidatedShippingCountry__c as 
    string
), ''), '-', coalesce(cast(fferpcore__IsBillingAddressValidated__c as 
    string
), ''), '-', coalesce(cast(fferpcore__IsShippingAddressValidated__c as 
    string
), ''), '-', coalesce(cast(fferpcore__ValidatedBillingPostalCode__c as 
    string
), ''), '-', coalesce(cast(fferpcore__ValidatedShippingPostalCode__c as 
    string
), ''), '-', coalesce(cast(fferpcore__MaterializedBillingAddressValidated__c as 
    string
), ''), '-', coalesce(cast(fferpcore__MaterializedShippingAddressValidated__c as 
    string
), '')) as 
    string
))) as _airbyte_Account_hashid,
    tmp.*
from __dbt__cte__Account_ab2 tmp
-- Account
where 1 = 1
)-- Final base SQL model
-- depends_on: __dbt__cte__Account_ab3
select
    Id,
    Sic,
    Name,
    Type,
    Phone,
    CSM__c,
    Jigsaw,
    Rating,
    SLA__c,
    OwnerId,
    SicDesc,
    Website,
    Cloud__c,
    Email__c,
    Industry,
    ParentId,
    PhotoUrl,
    IsDeleted,
    IsPartner,
    Ownership,
    Status__c,
    Country__c,
    Hunting__c,
    Partner__c,
    Segment__c,
    BillingCity,
    CreatedById,
    CreatedDate,
    Description,
    BillingState,
    CPQ_Stack__c,
    RecordTypeId,
    ShippingCity,
    TickerSymbol,
    AccountNumber,
    AccountSource,
    BillingStreet,
    Department__c,
    ExternalId__c,
    Promo_Code__c,
    SC_Company__c,
    SC_Contact__c,
    ShippingState,
    VAT_number__c,
    BillingAddress,
    BillingCountry,
    LastViewedDate,
    MasterRecordId,
    ShippingStreet,
    SystemModstamp,
    BillingEmail__c,
    BillingLatitude,
    CurrencyIsoCode,
    JigsawCompanyId,
    Partner_Role__c,
    ShippingAddress,
    ShippingCountry,
    BillingLongitude,
    BillingStateCode,
    IsCustomerPortal,
    LastActivityDate,
    LastModifiedById,
    LastModifiedDate,
    ShippingLatitude,
    BillingPostalCode,
    Endpoint_Names__c,
    NumberOfEmployees,
    SC_IBAN_Number__c,
    ShippingLongitude,
    ShippingStateCode,
    BillingCountryCode,
    ChannelProgramName,
    Documentarchive__c,
    External_Folder__c,
    InvoiceCategory__c,
    LastReferencedDate,
    SBQQ__TaxExempt__c,
    SC_Type_of_Sale__c,
    ShippingPostalCode,
    CPQ_Partner_Tier__c,
    Established_date__c,
    ShippingCountryCode,
    Termination_Date__c,
    Partner_Price_Book__c,
    Preferred_currency__c,
    SBQQ__PriceHoldEnd__c,
    SBQQ__RenewalModel__c,
    SC_Billing_Contact__c,
    Unified_VAT_number__c,
    BillingGeocodeAccuracy,
    CPQ_Partner_Support__c,
    External_Account_No__c,
    JBCXM__CustomerInfo__c,
    SC_External_Invoice__c,
    UseOldMethodMapping__c,
    fferpcore__TaxCode1__c,
    fferpcore__TaxCode2__c,
    fferpcore__TaxCode3__c,
    ChannelProgramLevelName,
    Endpoint_Names_Short__c,
    SBQQ__PreserveBundle__c,
    ShippingGeocodeAccuracy,
    ffbc__BillingAccount__c,
    fferpcore__VatStatus__c,
    Financial_Responsible__c,
    Operates_in_countries__c,
    Visibility_Restrictions__c,
    SBQQ__CoTerminationEvent__c,
    SBQQ__DefaultOpportunity__c,
    Service_Delivery_Manager__c,
    fferpcore__OutputVatCode__c,
    fferpcore__SalesTaxStatus__c,
    fferpcore__TaxCountryCode__c,
    SBQQ__RenewalPricingMethod__c,
    Is_Partner_Customer_Account__c,
    SBQQ__ContractCoTermination__c,
    SC_Subscription_Billing_Type__c,
    SBQQ__AssetQuantitiesCombined__c,
    Termination_request_ticket_no__c,
    SBQQ__CoTermedContractsCombined__c,
    fferpcore__ExemptionCertificate__c,
    fferpcore__ValidatedBillingCity__c,
    Total_Number_Of_Billing_Contacts__c,
    fferpcore__ValidatedBillingState__c,
    fferpcore__ValidatedShippingCity__c,
    fferpcore__VatRegistrationNumber__c,
    SC_Do_Not_Send_To_Customer_Portal__c,
    fferpcore__ValidatedBillingStreet__c,
    fferpcore__ValidatedShippingState__c,
    SBQQ__IgnoreParentContractedPrices__c,
    fferpcore__ValidatedBillingCountry__c,
    fferpcore__ValidatedShippingStreet__c,
    fferpcore__ValidatedShippingCountry__c,
    fferpcore__IsBillingAddressValidated__c,
    fferpcore__IsShippingAddressValidated__c,
    fferpcore__ValidatedBillingPostalCode__c,
    fferpcore__ValidatedShippingPostalCode__c,
    fferpcore__MaterializedBillingAddressValidated__c,
    fferpcore__MaterializedShippingAddressValidated__c,
    _airbyte_ab_id,
    _airbyte_emitted_at,
    CURRENT_TIMESTAMP() as _airbyte_normalized_at,
    _airbyte_Account_hashid
from __dbt__cte__Account_ab3
-- Account from `technology-dev-tab`.airbyte1._airbyte_raw_Account
where 1 = 1
  );
  