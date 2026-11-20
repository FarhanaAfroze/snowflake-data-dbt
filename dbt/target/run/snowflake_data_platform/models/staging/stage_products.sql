
  create or replace   view SNOWFLAKE_DATA.DEV.stage_products
  
  
  
  
  as (
    SELECT
    PRODUCT_ID,
    PRODUCT_NAME,
    CATEGORY,
    PRICE

FROM SNOWFLAKE_DATA.RAW.PRODUCTS
  );

