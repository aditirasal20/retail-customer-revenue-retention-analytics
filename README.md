# Retail Customer Revenue & Retention Analytics 🚀
### 📊 Customer Segmentation & Business Intelligence Dashboard

An end-to-end retail analytics project focused on understanding customer purchasing behavior, revenue performance, customer value, product performance, and discount effectiveness using Python, SQL, PostgreSQL, and Power BI.

---

## 🧠What This Project Does

This project analyzes retail transaction data to:

- Identify high-value customer segments
- Analyze revenue across product categories
- Identify top-performing products
- Analyze repeat customer behavior
- Evaluate discount usage and purchase behavior
- Build an interactive Power BI dashboard
- Generate actionable business recommendations

---

## ✨ Key Features

### 🎯 Customer Analytics

- **Customer Value Segmentation**
  - Classifies customers into VIP, Loyal, Potential, and Regular segments.
  - Uses purchasing behavior and spending patterns.

- **Repeat Customer Analysis**
  - Identifies customers with higher previous purchase activity.

- **Customer Behavior Analysis**
  - Examines purchase frequency, spending, subscriptions, and discounts.

### 💰 Revenue Analytics

- Revenue by customer segment
- Revenue by product category
- Top products by revenue
- Average purchase value
- Revenue contribution analysis

### 🎯 Discount Analysis

- Discount usage percentage
- Discounted vs non-discounted average purchase
- Product-level discount usage
- Identification of products with high discount dependency

---

## 🏗️ Project Workflow

```text
Raw Retail Dataset
        ↓
Python Data Cleaning
        ↓
Feature Engineering
        ↓
PostgreSQL Database
        ↓
SQL Business Analysis
        ↓
Power BI Dashboard
        ↓
Business Insights & Recommendations
```

## 🛠️ Tech Stack

**Data Analysis**

- Python
- Pandas
- Jupyter Notebook

**Database**

- PostgreSQL
- Neon PostgreSQL

**Querying**

- SQL

**Visualization**

- Power BI

## 📁Project Structure
```text
retail-customer-revenue-retention-analytics/
│
├── data/
│   └── customer_revenue_retention_analysis.csv
│
├── python/
│   └── customer_revenue_retention_analysis.ipynb
│
├── sql/
│   └── customer_revenue_sql_queries.sql
│
├── powerbi/
│   └── customer_revenue_dashboard.pbix
│
├── README.md
```

## 🐍 Python Data Analysis

Python is used for data preparation and feature engineering.

### Data Cleaning

- Checked dataset structure and data types
- Handled missing values
- Standardized column names
- Prepared categorical and numerical fields

### Feature Engineering

Additional analytical features include:

- `age_group`
- `purchase_frequency_days`
- `customer_value_segment`
- `discount_flag`

These features are used for customer segmentation and business analysis.

---

## 🗄️ PostgreSQL & SQL Analysis

The cleaned dataset is stored in PostgreSQL for structured querying and business analysis.

### Key SQL Analyses

#### Revenue by Customer Segment

Identifies which customer segments contribute the most revenue.

#### Revenue by Category

Compares revenue performance across retail categories.

#### Product Performance

Identifies products with the highest revenue and average purchase value.

#### Discount Effectiveness

Compares average purchase value between discounted and non-discounted transactions.

#### Discount Usage

Identifies products and customer segments with higher discount usage.

---

## 📊 Power BI Dashboard

The project includes a **one-page interactive Power BI dashboard** designed for business-focused analysis.

### Key KPIs

- Total Revenue
- Total Customers
- Average Purchase
- Repeat Customer %
- Discount Usage %

### Key Visualizations

- Revenue Contribution by Customer Segment
- Revenue by Category
- Top Products by Revenue
- Average Purchase: Discount vs Non-Discount
- Product & Category Ranking

### Interactive Filters

- Gender
- Category
- Subscription
- Customer Segment
- Shipping

---

## 📌 Business Insights

The analysis can be used to identify:

- High-value customers for loyalty and retention campaigns
- High-performing categories and products
- Products with potentially high discount dependency
- Opportunities to optimize promotional strategies
- Customer groups that may benefit from targeted marketing

---

## 🔐 Data & Security

Database credentials are not included in the repository.

Use environment variables or a local configuration file for PostgreSQL credentials.

Example:

```text
DATABASE_URL=your_postgresql_connection_string
