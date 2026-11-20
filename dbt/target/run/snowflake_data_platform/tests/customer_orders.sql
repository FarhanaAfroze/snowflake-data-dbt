
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  SELECT *

FROM SNOWFLAKE_DATA.DEV.fct_orders

WHERE TOTAL_AMOUNT < 0
  
  
      
    ) dbt_internal_test