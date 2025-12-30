select
  order_id,
  customer_id,
  product_id,
  date(order_date) as order_date,
  quantity,
  revenue,
  cogs,
  margin
from {{ source('raw', 'raw_fact_orders') }}