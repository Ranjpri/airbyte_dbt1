
        
        
    

    

    merge into `technology-dev-tab`.airbyte1.`Topic` as DBT_INTERNAL_DEST
        using (
          select * from `technology-dev-tab`.airbyte1.`Topic__dbt_tmp`
        ) as DBT_INTERNAL_SOURCE
        on 
            DBT_INTERNAL_SOURCE._airbyte_ab_id = DBT_INTERNAL_DEST._airbyte_ab_id
        

    
    when matched then update set
        `Id` = DBT_INTERNAL_SOURCE.`Id`,`Name` = DBT_INTERNAL_SOURCE.`Name`,`NetworkId` = DBT_INTERNAL_SOURCE.`NetworkId`,`CreatedById` = DBT_INTERNAL_SOURCE.`CreatedById`,`CreatedDate` = DBT_INTERNAL_SOURCE.`CreatedDate`,`Description` = DBT_INTERNAL_SOURCE.`Description`,`TalkingAbout` = DBT_INTERNAL_SOURCE.`TalkingAbout`,`SystemModstamp` = DBT_INTERNAL_SOURCE.`SystemModstamp`,`ManagedTopicType` = DBT_INTERNAL_SOURCE.`ManagedTopicType`,`_airbyte_ab_id` = DBT_INTERNAL_SOURCE.`_airbyte_ab_id`,`_airbyte_emitted_at` = DBT_INTERNAL_SOURCE.`_airbyte_emitted_at`,`_airbyte_normalized_at` = DBT_INTERNAL_SOURCE.`_airbyte_normalized_at`,`_airbyte_Topic_hashid` = DBT_INTERNAL_SOURCE.`_airbyte_Topic_hashid`
    

    when not matched then insert
        (`Id`, `Name`, `NetworkId`, `CreatedById`, `CreatedDate`, `Description`, `TalkingAbout`, `SystemModstamp`, `ManagedTopicType`, `_airbyte_ab_id`, `_airbyte_emitted_at`, `_airbyte_normalized_at`, `_airbyte_Topic_hashid`)
    values
        (`Id`, `Name`, `NetworkId`, `CreatedById`, `CreatedDate`, `Description`, `TalkingAbout`, `SystemModstamp`, `ManagedTopicType`, `_airbyte_ab_id`, `_airbyte_emitted_at`, `_airbyte_normalized_at`, `_airbyte_Topic_hashid`)


  