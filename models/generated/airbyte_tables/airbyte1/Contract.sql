

  create or replace table `technology-dev-tab`.airbyte1.`Contract`
  partition by timestamp_trunc(_airbyte_emitted_at, day)
  cluster by _airbyte_emitted_at
  OPTIONS()
  as (

with __dbt__cte__Contract_ab1 as (

-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
-- depends_on: `technology-dev-tab`.airbyte1._airbyte_raw_Contract
select
    json_extract_scalar(_airbyte_data, "$['Id']") as Id,
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

        json_extract(table_alias._airbyte_data, "$['BillingAddress']")
     as BillingAddress,
    json_extract_scalar(_airbyte_data, "$['BillingCountry']") as BillingCountry,
    json_extract_scalar(_airbyte_data, "$['ContractNumber']") as ContractNumber,
    json_extract_scalar(_airbyte_data, "$['LastViewedDate']") as LastViewedDate,
    json_extract_scalar(_airbyte_data, "$['Opportunity__c']") as Opportunity__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__Order__c']") as SBQQ__Order__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__Quote__c']") as SBQQ__Quote__c,
    json_extract_scalar(_airbyte_data, "$['ShippingStreet']") as ShippingStreet,
    json_extract_scalar(_airbyte_data, "$['SystemModstamp']") as SystemModstamp,
    json_extract_scalar(_airbyte_data, "$['BillingLatitude']") as BillingLatitude,
    json_extract_scalar(_airbyte_data, "$['CompanySignedId']") as CompanySignedId,
    json_extract_scalar(_airbyte_data, "$['CurrencyIsoCode']") as CurrencyIsoCode,

        json_extract(table_alias._airbyte_data, "$['ShippingAddress']")
     as ShippingAddress,
    json_extract_scalar(_airbyte_data, "$['ShippingCountry']") as ShippingCountry,
    json_extract_scalar(_airbyte_data, "$['BillingLongitude']") as BillingLongitude,
    json_extract_scalar(_airbyte_data, "$['BillingStateCode']") as BillingStateCode,
    json_extract_scalar(_airbyte_data, "$['CustomerSignedId']") as CustomerSignedId,
    json_extract_scalar(_airbyte_data, "$['LastActivityDate']") as LastActivityDate,
    json_extract_scalar(_airbyte_data, "$['LastApprovedDate']") as LastApprovedDate,
    json_extract_scalar(_airbyte_data, "$['LastModifiedById']") as LastModifiedById,
    json_extract_scalar(_airbyte_data, "$['LastModifiedDate']") as LastModifiedDate,
    json_extract_scalar(_airbyte_data, "$['ShippingLatitude']") as ShippingLatitude,
    json_extract_scalar(_airbyte_data, "$['BillingPostalCode']") as BillingPostalCode,
    json_extract_scalar(_airbyte_data, "$['CompanySignedDate']") as CompanySignedDate,
    json_extract_scalar(_airbyte_data, "$['Legal_End_Date__c']") as Legal_End_Date__c,
    json_extract_scalar(_airbyte_data, "$['ShippingLongitude']") as ShippingLongitude,
    json_extract_scalar(_airbyte_data, "$['ShippingStateCode']") as ShippingStateCode,
    json_extract_scalar(_airbyte_data, "$['BillingCountryCode']") as BillingCountryCode,
    json_extract_scalar(_airbyte_data, "$['CPQ_NextEndDate__c']") as CPQ_NextEndDate__c,
    json_extract_scalar(_airbyte_data, "$['CustomerSignedDate']") as CustomerSignedDate,
    json_extract_scalar(_airbyte_data, "$['LastReferencedDate']") as LastReferencedDate,
    json_extract_scalar(_airbyte_data, "$['Legacy_Contract__c']") as Legacy_Contract__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__Evergreen__c']") as SBQQ__Evergreen__c,
    json_extract_scalar(_airbyte_data, "$['ShippingPostalCode']") as ShippingPostalCode,
    json_extract_scalar(_airbyte_data, "$['CPQ_NoticePeriod__c']") as CPQ_NoticePeriod__c,
    json_extract_scalar(_airbyte_data, "$['CPQ_Partner_Tier__c']") as CPQ_Partner_Tier__c,
    json_extract_scalar(_airbyte_data, "$['CustomerSignedTitle']") as CustomerSignedTitle,
    json_extract_scalar(_airbyte_data, "$['Legal_Term_Years__c']") as Legal_Term_Years__c,
    json_extract_scalar(_airbyte_data, "$['ShippingCountryCode']") as ShippingCountryCode,
    json_extract_scalar(_airbyte_data, "$['CPQ_Is_Terminated__c']") as CPQ_Is_Terminated__c,
    json_extract_scalar(_airbyte_data, "$['Original_Contract__c']") as Original_Contract__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__Opportunity__c']") as SBQQ__Opportunity__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__RenewalTerm__c']") as SBQQ__RenewalTerm__c,
    json_extract_scalar(_airbyte_data, "$['CPQ_Admin_Override__c']") as CPQ_Admin_Override__c,
    json_extract_scalar(_airbyte_data, "$['CPQ_Original_Order__c']") as CPQ_Original_Order__c,
    json_extract_scalar(_airbyte_data, "$['Legal_Renewal_Flag__c']") as Legal_Renewal_Flag__c,
    json_extract_scalar(_airbyte_data, "$['OwnerExpirationNotice']") as OwnerExpirationNotice,
    json_extract_scalar(_airbyte_data, "$['SBQQ__RenewalOwner__c']") as SBQQ__RenewalOwner__c,
    json_extract_scalar(_airbyte_data, "$['Source_Opportunity__c']") as Source_Opportunity__c,
    json_extract_scalar(_airbyte_data, "$['BillingGeocodeAccuracy']") as BillingGeocodeAccuracy,
    json_extract_scalar(_airbyte_data, "$['Not_Set_for_Renewal__c']") as Not_Set_for_Renewal__c,
    json_extract_scalar(_airbyte_data, "$['Original_Start_Date__c']") as Original_Start_Date__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__RenewalQuoted__c']") as SBQQ__RenewalQuoted__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__ActiveContract__c']") as SBQQ__ActiveContract__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__AmendmentOwner__c']") as SBQQ__AmendmentOwner__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__ExpirationDate__c']") as SBQQ__ExpirationDate__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__MasterContract__c']") as SBQQ__MasterContract__c,
    json_extract_scalar(_airbyte_data, "$['ShippingGeocodeAccuracy']") as ShippingGeocodeAccuracy,
    json_extract_scalar(_airbyte_data, "$['SBQQ__RenewalForecast__c']") as SBQQ__RenewalForecast__c,
    json_extract_scalar(_airbyte_data, "$['CPQ_Evergreen_Contract__c']") as CPQ_Evergreen_Contract__c,
    json_extract_scalar(_airbyte_data, "$['CPQ_RenewalEligibility__c']") as CPQ_RenewalEligibility__c,
    json_extract_scalar(_airbyte_data, "$['CPQ_ContractRenewalDate__c']") as CPQ_ContractRenewalDate__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__RenewalUpliftRate__c']") as SBQQ__RenewalUpliftRate__c,
    json_extract_scalar(_airbyte_data, "$['CPQ_Generated_From_Order__c']") as CPQ_Generated_From_Order__c,
    json_extract_scalar(_airbyte_data, "$['CPQ_OriginalOrderFormula__c']") as CPQ_OriginalOrderFormula__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__AmendmentStartDate__c']") as SBQQ__AmendmentStartDate__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__MDQRenewalBehavior__c']") as SBQQ__MDQRenewalBehavior__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__RenewalOpportunity__c']") as SBQQ__RenewalOpportunity__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__RenewalPricebookId__c']") as SBQQ__RenewalPricebookId__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__AmendmentPricebookId__c']") as SBQQ__AmendmentPricebookId__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__DefaultRenewalPartners__c']") as SBQQ__DefaultRenewalPartners__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__DisableAmendmentCoTerm__c']") as SBQQ__DisableAmendmentCoTerm__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__OpportunityPricebookId__c']") as SBQQ__OpportunityPricebookId__c,
    json_extract_scalar(_airbyte_data, "$['SC_Subscription_Billing_Type__c']") as SC_Subscription_Billing_Type__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__RenewalOpportunityStage__c']") as SBQQ__RenewalOpportunityStage__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__AmendmentRenewalBehavior__c']") as SBQQ__AmendmentRenewalBehavior__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__AmendmentOpportunityStage__c']") as SBQQ__AmendmentOpportunityStage__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__DefaultRenewalContactRoles__c']") as SBQQ__DefaultRenewalContactRoles__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__RenewalOpportunityRecordTypeId__c']") as SBQQ__RenewalOpportunityRecordTypeId__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__SubscriptionQuantitiesCombined__c']") as SBQQ__SubscriptionQuantitiesCombined__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__AmendmentOpportunityRecordTypeId__c']") as SBQQ__AmendmentOpportunityRecordTypeId__c,
    json_extract_scalar(_airbyte_data, "$['SBQQ__PreserveBundleStructureUponRenewals__c']") as SBQQ__PreserveBundleStructureUponRenewals__c,
    _airbyte_ab_id,
    _airbyte_emitted_at,
    CURRENT_TIMESTAMP() as _airbyte_normalized_at
from `technology-dev-tab`.airbyte1._airbyte_raw_Contract as table_alias
-- Contract
where 1 = 1
),  __dbt__cte__Contract_ab2 as (

-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
-- depends_on: __dbt__cte__Contract_ab1
select
    cast(Id as
    string
) as Id,
    cast(Status as
    string
) as Status,
    cast(nullif(EndDate, '') as
    date
) as EndDate,
    cast(OwnerId as
    string
) as OwnerId,
    cast(AccountId as
    string
) as AccountId,
    cast(IsDeleted as boolean) as IsDeleted,
    cast(nullif(StartDate, '') as
    date
) as StartDate,
    cast(Renewal__c as boolean) as Renewal__c,
    cast(StatusCode as
    string
) as StatusCode,
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
    cast(ContractTerm as
    int64
) as ContractTerm,
    cast(Pricebook2Id as
    string
) as Pricebook2Id,
    cast(RecordTypeId as
    string
) as RecordTypeId,
    cast(ShippingCity as
    string
) as ShippingCity,
    cast(SpecialTerms as
    string
) as SpecialTerms,
    cast(ActivatedById as
    string
) as ActivatedById,
    cast(nullif(ActivatedDate, '') as
    timestamp
) as ActivatedDate,
    cast(BillingStreet as
    string
) as BillingStreet,
    cast(ShippingState as
    string
) as ShippingState,
    cast(BillingAddress as
    string
) as BillingAddress,
    cast(BillingCountry as
    string
) as BillingCountry,
    cast(ContractNumber as
    string
) as ContractNumber,
    cast(nullif(LastViewedDate, '') as
    timestamp
) as LastViewedDate,
    cast(Opportunity__c as
    string
) as Opportunity__c,
    cast(SBQQ__Order__c as
    string
) as SBQQ__Order__c,
    cast(SBQQ__Quote__c as
    string
) as SBQQ__Quote__c,
    cast(ShippingStreet as
    string
) as ShippingStreet,
    cast(nullif(SystemModstamp, '') as
    timestamp
) as SystemModstamp,
    cast(BillingLatitude as
    float64
) as BillingLatitude,
    cast(CompanySignedId as
    string
) as CompanySignedId,
    cast(CurrencyIsoCode as
    string
) as CurrencyIsoCode,
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
    cast(CustomerSignedId as
    string
) as CustomerSignedId,
    cast(nullif(LastActivityDate, '') as
    date
) as LastActivityDate,
    cast(nullif(LastApprovedDate, '') as
    timestamp
) as LastApprovedDate,
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
    cast(nullif(CompanySignedDate, '') as
    date
) as CompanySignedDate,
    cast(nullif(Legal_End_Date__c, '') as
    date
) as Legal_End_Date__c,
    cast(ShippingLongitude as
    float64
) as ShippingLongitude,
    cast(ShippingStateCode as
    string
) as ShippingStateCode,
    cast(BillingCountryCode as
    string
) as BillingCountryCode,
    cast(nullif(CPQ_NextEndDate__c, '') as
    date
) as CPQ_NextEndDate__c,
    cast(nullif(CustomerSignedDate, '') as
    date
) as CustomerSignedDate,
    cast(nullif(LastReferencedDate, '') as
    timestamp
) as LastReferencedDate,
    cast(Legacy_Contract__c as boolean) as Legacy_Contract__c,
    cast(SBQQ__Evergreen__c as boolean) as SBQQ__Evergreen__c,
    cast(ShippingPostalCode as
    string
) as ShippingPostalCode,
    cast(CPQ_NoticePeriod__c as
    float64
) as CPQ_NoticePeriod__c,
    cast(CPQ_Partner_Tier__c as
    string
) as CPQ_Partner_Tier__c,
    cast(CustomerSignedTitle as
    string
) as CustomerSignedTitle,
    cast(Legal_Term_Years__c as
    string
) as Legal_Term_Years__c,
    cast(ShippingCountryCode as
    string
) as ShippingCountryCode,
    cast(CPQ_Is_Terminated__c as boolean) as CPQ_Is_Terminated__c,
    cast(Original_Contract__c as
    string
) as Original_Contract__c,
    cast(SBQQ__Opportunity__c as
    string
) as SBQQ__Opportunity__c,
    cast(SBQQ__RenewalTerm__c as
    float64
) as SBQQ__RenewalTerm__c,
    cast(CPQ_Admin_Override__c as boolean) as CPQ_Admin_Override__c,
    cast(CPQ_Original_Order__c as
    string
) as CPQ_Original_Order__c,
    cast(Legal_Renewal_Flag__c as boolean) as Legal_Renewal_Flag__c,
    cast(OwnerExpirationNotice as
    string
) as OwnerExpirationNotice,
    cast(SBQQ__RenewalOwner__c as
    string
) as SBQQ__RenewalOwner__c,
    cast(Source_Opportunity__c as
    string
) as Source_Opportunity__c,
    cast(BillingGeocodeAccuracy as
    string
) as BillingGeocodeAccuracy,
    cast(Not_Set_for_Renewal__c as boolean) as Not_Set_for_Renewal__c,
    cast(nullif(Original_Start_Date__c, '') as
    date
) as Original_Start_Date__c,
    cast(SBQQ__RenewalQuoted__c as boolean) as SBQQ__RenewalQuoted__c,
    cast(SBQQ__ActiveContract__c as
    float64
) as SBQQ__ActiveContract__c,
    cast(SBQQ__AmendmentOwner__c as
    string
) as SBQQ__AmendmentOwner__c,
    cast(nullif(SBQQ__ExpirationDate__c, '') as
    date
) as SBQQ__ExpirationDate__c,
    cast(SBQQ__MasterContract__c as boolean) as SBQQ__MasterContract__c,
    cast(ShippingGeocodeAccuracy as
    string
) as ShippingGeocodeAccuracy,
    cast(SBQQ__RenewalForecast__c as boolean) as SBQQ__RenewalForecast__c,
    cast(CPQ_Evergreen_Contract__c as boolean) as CPQ_Evergreen_Contract__c,
    cast(CPQ_RenewalEligibility__c as boolean) as CPQ_RenewalEligibility__c,
    cast(nullif(CPQ_ContractRenewalDate__c, '') as
    date
) as CPQ_ContractRenewalDate__c,
    cast(SBQQ__RenewalUpliftRate__c as
    float64
) as SBQQ__RenewalUpliftRate__c,
    cast(CPQ_Generated_From_Order__c as
    string
) as CPQ_Generated_From_Order__c,
    cast(CPQ_OriginalOrderFormula__c as
    string
) as CPQ_OriginalOrderFormula__c,
    cast(nullif(SBQQ__AmendmentStartDate__c, '') as
    date
) as SBQQ__AmendmentStartDate__c,
    cast(SBQQ__MDQRenewalBehavior__c as
    string
) as SBQQ__MDQRenewalBehavior__c,
    cast(SBQQ__RenewalOpportunity__c as
    string
) as SBQQ__RenewalOpportunity__c,
    cast(SBQQ__RenewalPricebookId__c as
    string
) as SBQQ__RenewalPricebookId__c,
    cast(SBQQ__AmendmentPricebookId__c as
    string
) as SBQQ__AmendmentPricebookId__c,
    cast(SBQQ__DefaultRenewalPartners__c as boolean) as SBQQ__DefaultRenewalPartners__c,
    cast(SBQQ__DisableAmendmentCoTerm__c as boolean) as SBQQ__DisableAmendmentCoTerm__c,
    cast(SBQQ__OpportunityPricebookId__c as
    string
) as SBQQ__OpportunityPricebookId__c,
    cast(SC_Subscription_Billing_Type__c as
    string
) as SC_Subscription_Billing_Type__c,
    cast(SBQQ__RenewalOpportunityStage__c as
    string
) as SBQQ__RenewalOpportunityStage__c,
    cast(SBQQ__AmendmentRenewalBehavior__c as
    string
) as SBQQ__AmendmentRenewalBehavior__c,
    cast(SBQQ__AmendmentOpportunityStage__c as
    string
) as SBQQ__AmendmentOpportunityStage__c,
    cast(SBQQ__DefaultRenewalContactRoles__c as boolean) as SBQQ__DefaultRenewalContactRoles__c,
    cast(SBQQ__RenewalOpportunityRecordTypeId__c as
    string
) as SBQQ__RenewalOpportunityRecordTypeId__c,
    cast(SBQQ__SubscriptionQuantitiesCombined__c as boolean) as SBQQ__SubscriptionQuantitiesCombined__c,
    cast(SBQQ__AmendmentOpportunityRecordTypeId__c as
    string
) as SBQQ__AmendmentOpportunityRecordTypeId__c,
    cast(SBQQ__PreserveBundleStructureUponRenewals__c as boolean) as SBQQ__PreserveBundleStructureUponRenewals__c,
    _airbyte_ab_id,
    _airbyte_emitted_at,
    CURRENT_TIMESTAMP() as _airbyte_normalized_at
from __dbt__cte__Contract_ab1
-- Contract
where 1 = 1
),  __dbt__cte__Contract_ab3 as (

-- SQL model to build a hash column based on the values of this record
-- depends_on: __dbt__cte__Contract_ab2
select
    to_hex(md5(cast(concat(coalesce(cast(Id as
    string
), ''), '-', coalesce(cast(Status as
    string
), ''), '-', coalesce(cast(EndDate as
    string
), ''), '-', coalesce(cast(OwnerId as
    string
), ''), '-', coalesce(cast(AccountId as
    string
), ''), '-', coalesce(cast(IsDeleted as
    string
), ''), '-', coalesce(cast(StartDate as
    string
), ''), '-', coalesce(cast(Renewal__c as
    string
), ''), '-', coalesce(cast(StatusCode as
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
), ''), '-', coalesce(cast(ContractTerm as
    string
), ''), '-', coalesce(cast(Pricebook2Id as
    string
), ''), '-', coalesce(cast(RecordTypeId as
    string
), ''), '-', coalesce(cast(ShippingCity as
    string
), ''), '-', coalesce(cast(SpecialTerms as
    string
), ''), '-', coalesce(cast(ActivatedById as
    string
), ''), '-', coalesce(cast(ActivatedDate as
    string
), ''), '-', coalesce(cast(BillingStreet as
    string
), ''), '-', coalesce(cast(ShippingState as
    string
), ''), '-', coalesce(cast(BillingAddress as
    string
), ''), '-', coalesce(cast(BillingCountry as
    string
), ''), '-', coalesce(cast(ContractNumber as
    string
), ''), '-', coalesce(cast(LastViewedDate as
    string
), ''), '-', coalesce(cast(Opportunity__c as
    string
), ''), '-', coalesce(cast(SBQQ__Order__c as
    string
), ''), '-', coalesce(cast(SBQQ__Quote__c as
    string
), ''), '-', coalesce(cast(ShippingStreet as
    string
), ''), '-', coalesce(cast(SystemModstamp as
    string
), ''), '-', coalesce(cast(BillingLatitude as
    string
), ''), '-', coalesce(cast(CompanySignedId as
    string
), ''), '-', coalesce(cast(CurrencyIsoCode as
    string
), ''), '-', coalesce(cast(ShippingAddress as
    string
), ''), '-', coalesce(cast(ShippingCountry as
    string
), ''), '-', coalesce(cast(BillingLongitude as
    string
), ''), '-', coalesce(cast(BillingStateCode as
    string
), ''), '-', coalesce(cast(CustomerSignedId as
    string
), ''), '-', coalesce(cast(LastActivityDate as
    string
), ''), '-', coalesce(cast(LastApprovedDate as
    string
), ''), '-', coalesce(cast(LastModifiedById as
    string
), ''), '-', coalesce(cast(LastModifiedDate as
    string
), ''), '-', coalesce(cast(ShippingLatitude as
    string
), ''), '-', coalesce(cast(BillingPostalCode as
    string
), ''), '-', coalesce(cast(CompanySignedDate as
    string
), ''), '-', coalesce(cast(Legal_End_Date__c as
    string
), ''), '-', coalesce(cast(ShippingLongitude as
    string
), ''), '-', coalesce(cast(ShippingStateCode as
    string
), ''), '-', coalesce(cast(BillingCountryCode as
    string
), ''), '-', coalesce(cast(CPQ_NextEndDate__c as
    string
), ''), '-', coalesce(cast(CustomerSignedDate as
    string
), ''), '-', coalesce(cast(LastReferencedDate as
    string
), ''), '-', coalesce(cast(Legacy_Contract__c as
    string
), ''), '-', coalesce(cast(SBQQ__Evergreen__c as
    string
), ''), '-', coalesce(cast(ShippingPostalCode as
    string
), ''), '-', coalesce(cast(CPQ_NoticePeriod__c as
    string
), ''), '-', coalesce(cast(CPQ_Partner_Tier__c as
    string
), ''), '-', coalesce(cast(CustomerSignedTitle as
    string
), ''), '-', coalesce(cast(Legal_Term_Years__c as
    string
), ''), '-', coalesce(cast(ShippingCountryCode as
    string
), ''), '-', coalesce(cast(CPQ_Is_Terminated__c as
    string
), ''), '-', coalesce(cast(Original_Contract__c as
    string
), ''), '-', coalesce(cast(SBQQ__Opportunity__c as
    string
), ''), '-', coalesce(cast(SBQQ__RenewalTerm__c as
    string
), ''), '-', coalesce(cast(CPQ_Admin_Override__c as
    string
), ''), '-', coalesce(cast(CPQ_Original_Order__c as
    string
), ''), '-', coalesce(cast(Legal_Renewal_Flag__c as
    string
), ''), '-', coalesce(cast(OwnerExpirationNotice as
    string
), ''), '-', coalesce(cast(SBQQ__RenewalOwner__c as
    string
), ''), '-', coalesce(cast(Source_Opportunity__c as
    string
), ''), '-', coalesce(cast(BillingGeocodeAccuracy as
    string
), ''), '-', coalesce(cast(Not_Set_for_Renewal__c as
    string
), ''), '-', coalesce(cast(Original_Start_Date__c as
    string
), ''), '-', coalesce(cast(SBQQ__RenewalQuoted__c as
    string
), ''), '-', coalesce(cast(SBQQ__ActiveContract__c as
    string
), ''), '-', coalesce(cast(SBQQ__AmendmentOwner__c as
    string
), ''), '-', coalesce(cast(SBQQ__ExpirationDate__c as
    string
), ''), '-', coalesce(cast(SBQQ__MasterContract__c as
    string
), ''), '-', coalesce(cast(ShippingGeocodeAccuracy as
    string
), ''), '-', coalesce(cast(SBQQ__RenewalForecast__c as
    string
), ''), '-', coalesce(cast(CPQ_Evergreen_Contract__c as
    string
), ''), '-', coalesce(cast(CPQ_RenewalEligibility__c as
    string
), ''), '-', coalesce(cast(CPQ_ContractRenewalDate__c as
    string
), ''), '-', coalesce(cast(SBQQ__RenewalUpliftRate__c as
    string
), ''), '-', coalesce(cast(CPQ_Generated_From_Order__c as
    string
), ''), '-', coalesce(cast(CPQ_OriginalOrderFormula__c as
    string
), ''), '-', coalesce(cast(SBQQ__AmendmentStartDate__c as
    string
), ''), '-', coalesce(cast(SBQQ__MDQRenewalBehavior__c as
    string
), ''), '-', coalesce(cast(SBQQ__RenewalOpportunity__c as
    string
), ''), '-', coalesce(cast(SBQQ__RenewalPricebookId__c as
    string
), ''), '-', coalesce(cast(SBQQ__AmendmentPricebookId__c as
    string
), ''), '-', coalesce(cast(SBQQ__DefaultRenewalPartners__c as
    string
), ''), '-', coalesce(cast(SBQQ__DisableAmendmentCoTerm__c as
    string
), ''), '-', coalesce(cast(SBQQ__OpportunityPricebookId__c as
    string
), ''), '-', coalesce(cast(SC_Subscription_Billing_Type__c as
    string
), ''), '-', coalesce(cast(SBQQ__RenewalOpportunityStage__c as
    string
), ''), '-', coalesce(cast(SBQQ__AmendmentRenewalBehavior__c as
    string
), ''), '-', coalesce(cast(SBQQ__AmendmentOpportunityStage__c as
    string
), ''), '-', coalesce(cast(SBQQ__DefaultRenewalContactRoles__c as
    string
), ''), '-', coalesce(cast(SBQQ__RenewalOpportunityRecordTypeId__c as
    string
), ''), '-', coalesce(cast(SBQQ__SubscriptionQuantitiesCombined__c as
    string
), ''), '-', coalesce(cast(SBQQ__AmendmentOpportunityRecordTypeId__c as
    string
), ''), '-', coalesce(cast(SBQQ__PreserveBundleStructureUponRenewals__c as
    string
), '')) as
    string
))) as _airbyte_Contract_hashid,
    tmp.*
from __dbt__cte__Contract_ab2 tmp
-- Contract
where 1 = 1
)-- Final base SQL model
-- depends_on: __dbt__cte__Contract_ab3
select
    Id,
    Status,
    EndDate,
    OwnerId,
    AccountId,
    IsDeleted,
    StartDate,
    Renewal__c,
    StatusCode,
    BillingCity,
    CreatedById,
    CreatedDate,
    Description,
    BillingState,
    ContractTerm,
    Pricebook2Id,
    RecordTypeId,
    ShippingCity,
    SpecialTerms,
    ActivatedById,
    ActivatedDate,
    BillingStreet,
    ShippingState,
    BillingAddress,
    BillingCountry,
    ContractNumber,
    LastViewedDate,
    Opportunity__c,
    SBQQ__Order__c,
    SBQQ__Quote__c,
    ShippingStreet,
    SystemModstamp,
    BillingLatitude,
    CompanySignedId,
    CurrencyIsoCode,
    ShippingAddress,
    ShippingCountry,
    BillingLongitude,
    BillingStateCode,
    CustomerSignedId,
    LastActivityDate,
    LastApprovedDate,
    LastModifiedById,
    LastModifiedDate,
    ShippingLatitude,
    BillingPostalCode,
    CompanySignedDate,
    Legal_End_Date__c,
    ShippingLongitude,
    ShippingStateCode,
    BillingCountryCode,
    CPQ_NextEndDate__c,
    CustomerSignedDate,
    LastReferencedDate,
    Legacy_Contract__c,
    SBQQ__Evergreen__c,
    ShippingPostalCode,
    CPQ_NoticePeriod__c,
    CPQ_Partner_Tier__c,
    CustomerSignedTitle,
    Legal_Term_Years__c,
    ShippingCountryCode,
    CPQ_Is_Terminated__c,
    Original_Contract__c,
    SBQQ__Opportunity__c,
    SBQQ__RenewalTerm__c,
    CPQ_Admin_Override__c,
    CPQ_Original_Order__c,
    Legal_Renewal_Flag__c,
    OwnerExpirationNotice,
    SBQQ__RenewalOwner__c,
    Source_Opportunity__c,
    BillingGeocodeAccuracy,
    Not_Set_for_Renewal__c,
    Original_Start_Date__c,
    SBQQ__RenewalQuoted__c,
    SBQQ__ActiveContract__c,
    SBQQ__AmendmentOwner__c,
    SBQQ__ExpirationDate__c,
    SBQQ__MasterContract__c,
    ShippingGeocodeAccuracy,
    SBQQ__RenewalForecast__c,
    CPQ_Evergreen_Contract__c,
    CPQ_RenewalEligibility__c,
    CPQ_ContractRenewalDate__c,
    SBQQ__RenewalUpliftRate__c,
    CPQ_Generated_From_Order__c,
    CPQ_OriginalOrderFormula__c,
    SBQQ__AmendmentStartDate__c,
    SBQQ__MDQRenewalBehavior__c,
    SBQQ__RenewalOpportunity__c,
    SBQQ__RenewalPricebookId__c,
    SBQQ__AmendmentPricebookId__c,
    SBQQ__DefaultRenewalPartners__c,
    SBQQ__DisableAmendmentCoTerm__c,
    SBQQ__OpportunityPricebookId__c,
    SC_Subscription_Billing_Type__c,
    SBQQ__RenewalOpportunityStage__c,
    SBQQ__AmendmentRenewalBehavior__c,
    SBQQ__AmendmentOpportunityStage__c,
    SBQQ__DefaultRenewalContactRoles__c,
    SBQQ__RenewalOpportunityRecordTypeId__c,
    SBQQ__SubscriptionQuantitiesCombined__c,
    SBQQ__AmendmentOpportunityRecordTypeId__c,
    SBQQ__PreserveBundleStructureUponRenewals__c,
    _airbyte_ab_id,
    _airbyte_emitted_at,
    CURRENT_TIMESTAMP() as _airbyte_normalized_at,
    _airbyte_Contract_hashid
from __dbt__cte__Contract_ab3
-- Contract from `technology-dev-tab`.airbyte1._airbyte_raw_Contract
where 1 = 1
  );
