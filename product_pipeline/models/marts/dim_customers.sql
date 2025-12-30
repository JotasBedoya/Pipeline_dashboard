SELECT DISTINCT
    customer_id,
    customer_name,
    country,
    region
FROM {{ ref('stg_customers') }}