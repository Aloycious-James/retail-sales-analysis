# Retail Sales Analytics: End-to-End Data Analytics Project

## Project Overview

This project demonstrates an end-to-end Retail Sales Analytics workflow using PostgreSQL, Python, Excel, and Power BI. The goal was to transform raw transactional data into meaningful business insights that support revenue growth, profitability improvement, and strategic decision-making.

The project follows a complete analytics pipeline:

Raw Data → SQL Database → Business Analysis → Python EDA → Excel Reporting → Power BI Dashboard

---

## Business Problem

Retail companies generate thousands of transactions every day. Without proper analysis, it becomes difficult to answer important business questions such as:

* Which products generate the highest revenue?
* Which categories contribute the most profit?
* How do discounts impact profitability?
* Which stores perform best?
* Which regions require improvement?
* What actions can increase overall business performance?

This project answers these questions through structured data analysis and interactive reporting.

---

## Project Architecture

```text
Dataset Files
     ↓
PostgreSQL Database
     ↓
SQL Business Analysis
     ↓
Python Exploratory Data Analysis
     ↓
Excel Reporting
     ↓
Power BI Dashboard
```

---

## Dataset Information

The project uses multiple datasets representing different business entities.

### Tables

| Table                 | Description                 |
| --------------------- | --------------------------- |
| Customers             | Customer information        |
| Products              | Product details and pricing |
| Stores                | Store information           |
| Transactions          | Sales transactions          |
| Retail Business Table | Combined business dataset   |

### Dataset Size

* Customers: 200
* Products: 50
* Stores: 5
* Transactions: 5000+

---

## SQL Business Analysis

SQL was used to validate data, create business metrics, and answer key business questions.

### Business Questions Solved

* Which stores generate the highest revenue?
* Which products generate the highest profit?
* Which categories perform best?
* Which regions contribute most revenue?
* How do discounts affect profitability?

### Store Revenue vs Profit Analysis

![Store Revenue vs Profit](SQL%20Scripts/SQL%20Screen%20Shots/13_Stores_by_revenue_vs_profit.png)

#### Why this analysis?

Store-level performance is one of the most important metrics for retail management. Comparing revenue and profit helps identify high-performing and underperforming stores.

#### Key Findings

* MegaMart Vince Michele generated the highest profit.
* Store performance varies despite similar revenue levels.
* Profitability depends not only on sales volume but also on pricing and discount strategies.

---

## Python Exploratory Data Analysis

Python was used to explore relationships between business metrics and identify hidden patterns in the data.

### Correlation Analysis

![Correlation Matrix](Python/images/correlation_matrix.png)

#### Why this analysis?

Correlation analysis helps understand how business variables influence each other.

#### Key Findings

* Revenue and Profit show a strong positive correlation.
* Quantity sold strongly impacts revenue generation.
* Discounts show a negative relationship with profitability.
* Higher discounts do not necessarily lead to higher profits.

---

### Category Profit Analysis

![Category Profit](Python/images/category_profit.png)

#### Why this analysis?

Category-level analysis identifies which product groups drive business performance.

#### Key Findings

* Fashion generated the highest overall profit.
* Electronics delivered comparable profitability.
* Groceries contributed significantly less profit than other categories.

---

## Power BI Dashboard

Power BI was used to create an interactive dashboard for business stakeholders.

### Executive Summary Dashboard

![Executive Summary](Images/executive_summary.png)

#### Purpose

Provides leadership teams with a quick overview of:

* Total Revenue
* Total Profit
* Customer Metrics
* Product Performance
* Sales Trends

#### Business Value

Allows decision-makers to monitor company performance without running manual reports.

---

### Regional Performance Dashboard

![Regional Performance](Images/regional_performance.png)

#### Purpose

Analyzes revenue and profit performance across different regions.

#### Key Findings

* Revenue contribution varies significantly across regions.
* High-performing regions can be used as benchmarks.
* Underperforming regions require targeted improvement strategies.

---

### Product Category Dashboard

![Product Category Analysis](Images/product_category_analysis.png)

#### Purpose

Evaluates category-level performance and identifies growth opportunities.

#### Key Findings

* Fashion and Electronics are primary revenue drivers.
* Product mix optimization can improve profitability.
* Low-performing categories require strategic review.

---

## Key Business Insights

### Category Performance

| Category    | Revenue | Profit |
| ----------- | ------- | ------ |
| Fashion     | 6.23M   | 1.66M  |
| Electronics | 6.31M   | 1.63M  |
| Groceries   | 1.75M   | 0.53M  |

### Major Findings

1. Fashion generated the highest profit.
2. Electronics contributed significantly to total revenue.
3. Discounts negatively impact profitability.
4. Revenue and profit are strongly correlated.
5. Store performance varies considerably.
6. Regional opportunities exist for business expansion.

---

## Business Recommendations

### Pricing Strategy

* Reduce excessive discounting.
* Focus on value-based promotions.

### Product Strategy

* Increase investment in high-performing categories.
* Optimize inventory allocation based on demand.

### Store Strategy

* Replicate best practices from top-performing stores.
* Monitor underperforming locations closely.

### Regional Growth Strategy

* Expand operations in high-performing regions.
* Investigate reasons for lower regional performance.

---

## Tools Used

* PostgreSQL
* Python
* Pandas
* Matplotlib
* Seaborn
* Excel
* Power BI
* GitHub

---

## Repository Structure

```text
retail_sales/
│
├── Dataset/
├── Excel/
├── PowerBI/
├── Python/
├── SQL Scripts/
└── README.md
```

---

## Author

James A

Data Analyst

Skills:
SQL | Python | Excel | Power BI | Data Visualization | Business Analysis
