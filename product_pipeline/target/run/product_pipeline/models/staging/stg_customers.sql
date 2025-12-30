
    
    create view main."stg_customers" as
    select
  customer_id,
  customer_name,
  country,
  region
from main."raw_dim_customers";