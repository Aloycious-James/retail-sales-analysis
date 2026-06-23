# Retail Sales Analysis Using SQL and Python

## Project Overview

This project analyzes retail sales transactions using PostgreSQL, SQL, and Python to identify revenue trends, profitability drivers, discount impact, category performance, and store-level performance.

The objective is to simulate a real-world retail analytics workflow by extracting data from a relational database, performing exploratory data analysis, generating visualizations, and delivering business recommendations.

---

## Project Preview

### Category Revenue and Profit Analysis

![Category Revenue vs Profit](images/11)Category_by_revenue_vs_profit.png)

### Store Revenue and Profit Analysis

![Store Revenue vs Profit](images/13)Stores_by_revenue_vs_profit.png)

### Product Average Discount vs Revenue

![Product Discount vs Revenue](images/10)Product_by_avg_discount_vs_revenue.png)

---

## Business Problem

Retail companies need to answer several important business questions:

- Which product categories generate the highest revenue and profit?
- How do discounts affect profitability?
- Which stores perform best?
- What factors influence revenue and profit?
- How can business performance be improved?

This project provides data-driven answers to support pricing, inventory, and sales strategies.

---

## Tools and Technologies

| Technology | Purpose |
|------------|----------|
| PostgreSQL | Database Management |
| SQL | Data Extraction and Analysis |
| Python | Data Analysis |
| Pandas | Data Manipulation |
| Matplotlib | Visualization |
| Seaborn | Statistical Analysis |
| Jupyter Notebook | Development Environment |
| GitHub | Version Control |

---

## Dataset Description

The project contains four related tables.

### Customers

Contains customer information.

| Column |
|----------|
| CustomerID |
| CustomerName |
| Gender |
| Age |

### Products

Contains product information.

| Column |
|----------|
| ProductID |
| ProductName |
| Category |
| UnitPrice |
| CostPrice |

### Stores

Contains store information.

| Column |
|----------|
| StoreID |
| StoreName |
| Region |

### Transactions

Contains sales transaction data.

| Column |
|----------|
| TransactionID |
| TransactionDate |
| CustomerID |
| ProductID |
| StoreID |
| Quantity |
| Discount |

---

## Database Schema

```text
Customers
    │
    ├── Transactions ─── Products
    │
    └── Stores
```

---

## Revenue and Profit Formula

### Revenue

```sql
(UnitPrice * Quantity) * (1 - Discount)
```

### Profit

```sql
((UnitPrice * Quantity) * (1 - Discount))
-
(CostPrice * Quantity)
```

---

## SQL Analysis Performed

The following business queries were developed using PostgreSQL:

- Revenue by Product Category
- Profit by Product Category
- Revenue by Store
- Profit by Store
- Revenue by Region
- Top Discounted Products
- Revenue Distribution Analysis
- Profit Distribution Analysis
- Correlation Analysis

---

## Exploratory Data Analysis

### Revenue Distribution

![Revenue Distribution](images/revenue_distribustion.png)

**Finding**

Revenue distribution is positively skewed. Most transactions generate low to medium revenue while a smaller number contribute significantly higher revenue.

---

### Profit Distribution

![Profit Distribution](images/profit_distribustion.png)

**Finding**

Profit distribution is positively skewed. A limited number of transactions contribute a large portion of overall profit.

---

### Category Profit Analysis

![Category Profit](images/category_profit.png)

**Finding**

Fashion and Electronics generate the highest profit, while Groceries contribute significantly less profit.

---

### Discount vs Profit Analysis

![Discount vs Profit](images/discount_vs_profit.png)

**Finding**

Higher discounts generally reduce profitability and create larger profit fluctuations.

---

### Correlation Matrix

![Correlation Matrix](images/crrelation_matrix.png)

**Key Correlations**

| Variables | Correlation |
|------------|-------------|
| Revenue vs Cost | 0.97 |
| Revenue vs Profit | 0.83 |
| Cost vs Profit | 0.69 |
| Quantity vs Revenue | 0.60 |
| Discount vs Profit | -0.24 |

**Finding**

Revenue and Cost have a very strong positive relationship. Discounts show a negative relationship with profit.

---

## Key Business Insights

### Category Performance

| Category | Revenue | Profit |
|------------|------------|------------|
| Fashion | 6,232,280 | 1,660,525 |
| Electronics | 6,316,917 | 1,632,229 |
| Groceries | 1,752,706 | 533,561 |

**Insight**

Fashion and Electronics are the primary revenue and profit contributors.

---

### Store Performance

Top Performing Stores:

1. MegaMart New Michele
2. MegaMart Johnmouth
3. MegaMart Diranahaven
4. MegaMart Jimenezborough
5. MegaMart Peckmouth

**Insight**

Store performance varies considerably, indicating opportunities for operational improvements and benchmarking.

---

### Discount Analysis

Products with the highest average discounts include:

- Difficult Vegetables
- US Snacks
- Him Smartphone
- Audience Television
- Four Accessories

**Insight**

Products receiving higher discounts do not consistently generate higher revenue.

---

## Business Recommendations

### Pricing Strategy

- Reduce excessive discounting on high-margin products.
- Implement targeted promotional campaigns.

### Product Strategy

- Increase focus on Fashion and Electronics categories.
- Improve pricing and sourcing strategy for Grocery products.

### Store Strategy

- Benchmark high-performing stores.
- Replicate successful practices across lower-performing locations.

### Profit Optimization

- Monitor discount effectiveness regularly.
- Focus on products with strong profit margins.

---

## Project Workflow

```text
PostgreSQL Database
        │
        ▼
     SQL Queries
        │
        ▼
 Data Extraction
        │
        ▼
      Python
        │
        ▼
 Exploratory Data Analysis
        │
        ▼
 Data Visualization
        │
        ▼
 Business Insights
        │
        ▼
 Recommendations
```

---

## Project Structure

```text
retail_sales/
│
├── images/
│   ├── revenue_distribustion.png
│   ├── profit_distribustion.png
│   ├── category_profit.png
│   ├── discount_vs_profit.png
│   ├── crrelation_matrix.png
│   ├── 10)Product_by_avg_discount_vs_revenue(1).png
│   ├── 11)Category_by_revenue_vs_profit(1).png
│   └── 13)Stores_by_revenue_vs_profit(2).png
│
├── retail_sales.ipynb
├── retail_sales.sql
├── README.md
```

---

## Skills Demonstrated

### SQL

- Joins
- Aggregations
- Group By
- Sorting
- Business Metrics Calculation

### Python

- Pandas
- Data Cleaning
- Exploratory Data Analysis
- Data Visualization

### Business Analytics

- Revenue Analysis
- Profit Analysis
- Correlation Analysis
- KPI Development
- Business Recommendations

---

## Author

James

Data Analyst | SQL | Python | PostgreSQL | Power BI | Excel

GitHub:
https://github.com/Aloycious-James
