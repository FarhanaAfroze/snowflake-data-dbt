
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select EMAIL
from SNOWFLAKE_DATA.DEV.stage_customer
where EMAIL is null



  
  
      
    ) dbt_internal_test