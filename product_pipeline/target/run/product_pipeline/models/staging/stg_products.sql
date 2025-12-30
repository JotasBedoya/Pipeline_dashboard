
    
    create view main."stg_products" as
    select
    product_id,
    product_name,
    brand,
    category,
    unit_cost,
    unit_price
from main."raw_dim_products";