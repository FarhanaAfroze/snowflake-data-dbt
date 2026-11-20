
    
    

with child as (
    select PRODUCT_ID as from_field
    from SNOWFLAKE_DATA.DEV.stage_orders
    where PRODUCT_ID is not null
),

parent as (
    select PRODUCT_ID as to_field
    from SNOWFLAKE_DATA.DEV.stage_products
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


