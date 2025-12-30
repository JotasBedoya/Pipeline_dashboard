select
    product_id,
    product_name,
    brand,
    category,
    unit_cost,
    unit_price
from {{ source('raw', 'raw_dim_products') }}