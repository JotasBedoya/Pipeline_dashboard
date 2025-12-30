
    
    create view main."stg_orders" as
    select
  order_id,
  customer_id,
  product_id,
  date(order_date) as order_date,
  quantity,
  revenue,
  cogs,
  margin
from main."raw_fact_orders";