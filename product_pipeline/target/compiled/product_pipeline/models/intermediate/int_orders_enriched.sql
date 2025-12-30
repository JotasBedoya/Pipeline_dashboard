WITH orders AS (
    SELECT * FROM main."stg_orders"
),
products as (
    SELECT * FROM main."stg_products"
),
customers as (
    SELECT * FROM main."stg_customers"
)

SELECT
    o.order_id,
    o.order_date,
    o.customer_id,
    c.customer_name,
    c.country,
    c.region,
    o.product_id,
    p.product_name,
    p.brand,
    p.category,
    o.quantity,
    o.revenue,
    o.cogs,
    o.margin
FROM orders o
LEFT JOIN customers c ON o.customer_id = c.customer_id
LEFT JOIN products p ON o.product_id = p.product_id