
    
    

select
    PRODUCT_ID as unique_field,
    count(*) as n_records

from SNOWFLAKE_DATA.DEV.stage_products
where PRODUCT_ID is not null
group by PRODUCT_ID
having count(*) > 1


