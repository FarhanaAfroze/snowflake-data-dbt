SELECT

    CUSTOMER_ID,

    FIRST_NAME,
    LAST_NAME,

    FIRST_NAME || ' ' || LAST_NAME AS FULL_NAME,

    EMAIL,
    COUNTRY,

    CREATED_AT

FROM {{ ref('stage_customer') }}