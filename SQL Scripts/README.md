# SQL Analysis Documentation

## Overview

This folder contains all SQL scripts used in the Retail Sales Performance & Profitability Analysis project.

The SQL phase covers:

* Database creation
* Data validation
* Data retrieval
* Revenue analysis
* Profitability analysis
* Regional analysis
* Product analysis
* Discount analysis

---

## Database Structure

The project uses four relational tables:

### customers

Stores customer information.

### products

Stores product details and pricing information.

### stores

Stores store location information.

### transactions

Stores sales transaction records.

---

## SQL Files

### table_creation.sql

Purpose:

Creates the database schema and required tables.

Tables Created:

* customers
* products
* stores
* transactions

---

### data_validation.sql

Purpose:

Validate imported data before performing analysis.

Validation Checks:

* Record count validation
* Duplicate key validation
* Table verification
* Data completeness checks

Examples:

```sql
SELECT COUNT(*) FROM customers;

SELECT COUNT(*) FROM products;

SELECT COUNT(*) FROM stores;

SELECT COUNT(*) FROM transactions;
```

Used to confirm that all data was successfully imported into PostgreSQL.

---

### table_retrive.sql

Purpose:

Create a master business table by joining all four source tables.

Tables Joined:

* customers
* products
* stores
* transactions

Additional Business Metrics Created:

* Revenue
* Cost
* Profit

This output is exported as:

```text
retail_business_table.csv
```

and used as the source dataset for Python analysis, Excel reporting, and Power BI dashboards.

---

### data_analysis.sql

Purpose:

Perform descriptive analysis to understand overall business performance.

Analyses Performed:

* Total Revenue
* Total Profit
* Revenue by Region
* Revenue by Product
* Revenue by Category
* Top Revenue Products

Answers:

"What happened?"

---

### business_queries.sql

Purpose:

Perform diagnostic business analysis.

Analyses Performed:

* Profit by Product
* Profit by Region
* Profit by Category
* Discount Effectiveness Analysis
* Product Profitability Analysis
* Regional Profitability Analysis

Answers:

"Why did it happen?"

and

"What actions should the business take?"

---

## Business Metrics

### Revenue

Revenue = UnitPrice × Quantity × (1 - Discount)

### Cost

Cost = CostPrice × Quantity

### Profit

Profit = Revenue - Cost

---

## SQL Workflow

Dataset
↓
table_creation.sql
↓
data_validation.sql
↓
table_retrive.sql
↓
data_analysis.sql
↓
business_queries.sql
↓
retail_business_table.csv
↓
Python Analysis
↓
Excel Report
↓
Power BI Dashboard

---

## Key Findings

### Regional Performance

* East Region contributed approximately 39% of total revenue.
* South Region generated the lowest revenue.

### Product Performance

Highest revenue-generating products:

* Books
* Television
* Footwear
* Set Dairy
* Traditional Laptop

Highest profit-generating products:

* Footwear
* Set Dairy

### Discount Analysis

* Vegetables and US Snacks received high discounts but generated relatively low revenue.
* Electronics products maintained strong revenue performance despite discounts.

---

## Business Recommendations

* Maintain inventory availability for high-profit products.
* Review discount strategies for low-performing grocery products.
* Continue targeted promotions for electronics products.
* Investigate low-performing regions.
* Develop customer retention initiatives in high-performing regions.

---

## Skills Demonstrated

* PostgreSQL
* Database Design
* SQL Joins
* Aggregate Functions
* Data Validation
* Business Metric Calculation
* Revenue Analysis
* Profitability Analysis
* Diagnostic Analytics
* Data Extraction for Analytics Pipelines
