
  create or replace   view SNOWFLAKE_DATA.DEV.fct_orders
  
  
  
  
  as (
    SELECT

    ORDER_ID,
    CUSTOMER_ID,
    PRODUCT_ID,

    ORDER_DATE,
    QUANTITY,

    TOTAL_AMOUNT

FROM SNOWFLAKE_DATA.DEV.stage_orders
  );

