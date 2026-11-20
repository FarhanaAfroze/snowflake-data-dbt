
  create or replace   view SNOWFLAKE_DATA.DEV.stage_customer
  
  
  
  
  as (
    SELECT
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    EMAIL,
    COUNTRY,
    CREATED_AT

FROM SNOWFLAKE_DATA.RAW.CUSTOMERS
  );

