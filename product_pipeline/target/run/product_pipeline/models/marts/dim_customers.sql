
    
    create view main."dim_customers" as
    SELECT DISTINCT
    customer_id,
    customer_name,
    country,
    region
FROM main."stg_customers";