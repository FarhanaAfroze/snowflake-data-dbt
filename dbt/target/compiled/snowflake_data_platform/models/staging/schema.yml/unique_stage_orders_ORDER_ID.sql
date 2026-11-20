
    
    

select
    ORDER_ID as unique_field,
    count(*) as n_records

from SNOWFLAKE_DATA.DEV.stage_orders
where ORDER_ID is not null
group by ORDER_ID
having count(*) > 1


