select
  customer_id,
  customer_name,
  country,
  region
from {{ source('raw', 'raw_dim_customers') }}