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

FROM {{ ref('stage_customer') }} c

LEFT JOIN {{ ref('stage_orders') }} o

    ON c.CUSTOMER_ID = o.CUSTOMER_ID