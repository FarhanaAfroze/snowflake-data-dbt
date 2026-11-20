
  create or replace   view SNOWFLAKE_DATA.DEV.int_customer_orders
  
  
  
  
  as (
    SELECT

    c.CUSTOMER_ID,

    c.FIRST_NAME,
    c.LAST_NAME,
    c.EMAIL,
    c.COUNTRY,

    o.ORDER_ID,
    o.ORDER_DATE,
    o.QUANTITY,
    o.TOTAL_AMOUNT

FROM SNOWFLAKE_DATA.DEV.stage_customer c

LEFT JOIN SNOWFLAKE_DATA.DEV.stage_orders o

    ON c.CUSTOMER_ID = o.CUSTOMER_ID
  );

