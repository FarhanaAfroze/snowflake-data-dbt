SELECT

    ORDER_ID,
    CUSTOMER_ID,
    PRODUCT_ID,

    ORDER_DATE,
    QUANTITY,

    TOTAL_AMOUNT

FROM {{ ref('stage_orders') }}