
    
    create view main."dim_products" as
    SELECT DISTINCT
    product_id,
    product_name,
    brand,
    category
FROM main."stg_products";