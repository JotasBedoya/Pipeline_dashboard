import sqlite3
import pandas as pd
import os

db_path = "db.sqlite"
conn = sqlite3.connect(db_path)

tables = {
    "raw_dim_products": "raw_data/dim_products.csv",
    "raw_dim_customers": "raw_data/dim_customers.csv",
    "raw_fact_orders": "raw_data/fact_orders.csv",
    "raw_inventory_movements": "raw_data/inventory_movements.csv",
    "raw_product_reviews": "raw_data/product_reviews.csv"
}

for table, path in tables.items():
    if os.path.exists(path):
        df = pd.read_csv(path)
        df.to_sql(table, conn, if_exists="replace", index=False)
        print(f"Loaded {table}")
    else:
        print(f"Not Found: {path}")

conn.close()
print("All RAW tables loaded succesfully")
