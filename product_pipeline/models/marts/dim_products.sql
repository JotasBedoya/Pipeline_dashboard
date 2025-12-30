SELECT DISTINCT
    product_id,
    product_name,
    brand,
    category
FROM {{ ref('stg_products') }}