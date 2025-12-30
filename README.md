# E-commerce Analytics Engineering Pipeline – dbt + Python + SQLite + Power BI

## 🎯 Objective
This project simulates a real data pipeline for a retail e-commerce business.  
It demonstrates how a raw product/order dataset can be transformed into a trusted analytics warehouse using **modern data stack** concepts.

This project was built to showcase Analytics Engineering skills for global remote roles.

---

## 🧩 Problem Statement
Before this pipeline existed, the organization stored its product and order data in separate CSV files with no unified system to:
- Centralize customer, product, and order data
- Create analytics-ready tables
- Enable business stakeholders to understand sales KPIs
- Track margin, revenue and product performance over time

The result → No visibility on top customers, profitable products, or revenue trends.

---

## 🚀 Solution Architecture
```
RAW (.csv) → Python Ingestion Script → SQLite Warehouse
      → dbt Staging Models → Intermediate Models
            → Dim Tables + Fact Tables → Power BI Dashboard
```

---

## 🏗️ Tech Stack
| Layer | Tool |
|-------|------|
| Warehouse | SQLite |
| Transformation | dbt Core |
| Ingestion | Python |
| Visualization | Power BI |
| Version Control | GitHub |

---

## 📂 Repository Structure
```
analytics-engineering-product-pipeline/
│── data/
│   ├── raw/
│   │   ├── dim_products.csv
│   │   ├── dim_customers.csv
│   │   ├── fact_orders.csv
│   │   ├── inventory_movements.csv
│   │   ├── product_reviews.csv
│── python/
│   └── load_data.py
│── product_pipeline/
│   ├── models/
│   │   ├── staging/
│   │   │   ├── stg_products.sql
│   │   │   ├── stg_orders.sql
│   │   │   ├── stg_customers.sql
│   │   ├── intermediate/
│   │   │   ├── int_orders_enriched.sql
│   │   ├── marts/
│   │   │   ├── dim_products.sql
│   │   │   ├── dim_customers.sql
│   │   │   ├── fact_sales.sql
│   ├── dbt_project.yml
│── dashboard/
│   └── Product_Pipeline_Sales_Dashboard.pbix
│── README.md
```

---

## 🧮 Data Warehouse Outputs (dbt)
Final analytics tables available:

| Table | Description |
|-------|-------------|
| dim_products | Product attributes |
| dim_customers | Customer profile |
| fact_sales | Revenue, margin & units sold |
| int_orders_enriched | Orders enriched with product + customer details |

---

## 📊 Dashboard Preview (Power BI)
KPIs included:
- Total Revenue
- Total Margin
- Total Customers
- Quantity Sold
- Revenue by Month
- Revenue by Category / Brand
- Units Sold by Region

---

## ▶️ How to Run Locally
### 1️⃣ Install Python + dbt + SQLite adapter
```bash
pip install dbt-core dbt-sqlite
```

### 2️⃣ Run dbt models
```bash
cd product_pipeline
dbt run
```

### 3️⃣ Load Power BI
Open:
```
dashboard/Product_Pipeline_Sales_Dashboard.pbix
```

---

## 📌 Author
**Jonathan Bedoya**  
Analytics Engineer | BI Developer  
LinkedIn: https://www.linkedin.com/in/jonathanbedoya1993
