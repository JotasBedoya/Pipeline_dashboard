WITH enriched AS (
    SELECT * FROM main."int_orders_enriched"
)

SELECT
    order_id,
    order_date,
    customer_id,
    product_id,
    brand,
    category,
    quantity,
    revenue,
    cogs,
    margin
FROM enriched