# Customer Subscription Analysis

## Project Summary

This project analyzes customer subscription data to understand customer retention, subscription performance, regional distribution, and cancellation trends.

Using Excel, SQL Server, and Power BI, raw subscription data was transformed into meaningful business insights through data analysis, SQL queries, and interactive dashboards.

---

## Business Problem

Subscription-based businesses need to understand customer behavior, identify cancellation trends, evaluate subscription performance, and monitor revenue generation.

This analysis aims to answer key business questions such as:

- Which subscription type generates the highest revenue?
- How many customers are active versus cancelled?
- Which regions have the most customers?
- Which regions experience the highest cancellations?
- What is the average subscription duration?

---

## Tools Used

### Microsoft Excel
- Data Cleaning
- Calculated Columns
- Pivot Tables
- KPI Calculations
- Dashboard Creation

### SQL Server
- Data Exploration
- Aggregations
- Revenue Analysis
- Customer Analysis
- Business Query Development

### Power BI
- Data Modeling
- DAX Measures
- Interactive Dashboard Design
- KPI Reporting
- Data Visualization

---

## Dataset Columns

The dataset contains:

- CustomerID
- CustomerName
- Region
- SubscriptionType
- SubscriptionStart
- SubscriptionEnd
- Canceled
- Revenue

---

## Excel Analysis

The following analyses were performed in Excel:

- Total Customers
- Total Revenue
- Average Subscription Duration
- Cancelled Customers
- Revenue by Subscription Type
- Active vs Cancelled Customers
- Customers by Region
- Cancellation Analysis by Region

### Excel Dashboard

![Excel Dashboard](Dashboard%20Screenshots/Excel_Dashboard.png)

---

## SQL Analysis

SQL queries were written to answer important business questions.

### Total Customers

```sql
SELECT COUNT(CustomerID) AS TotalCustomers
FROM CustomerData;
```

### Total Revenue

```sql
SELECT SUM(Revenue) AS TotalRevenue
FROM CustomerData;
```

### Revenue by Subscription Type

```sql
SELECT SubscriptionType,
SUM(Revenue) AS TotalRevenue
FROM CustomerData
GROUP BY SubscriptionType
ORDER BY TotalRevenue DESC;
```

### Active vs Cancelled Customers

```sql
SELECT Canceled,
COUNT(CustomerID) AS TotalCustomers
FROM CustomerData
GROUP BY Canceled;
```

### Customers by Region

```sql
SELECT Region,
COUNT(CustomerID) AS TotalCustomers
FROM CustomerData
GROUP BY Region;
```

---

## SQL Query Results

### Revenue by Subscription Type

![Revenue by Subscription Type](SQL%20Screenshots/Revenue_By_Subscription_Type.png)

### Active vs Cancelled Customers

![Active vs Cancelled](SQL%20Screenshots/Active_vs_Cancelled.png)

### Customers by Region

![Customers by Region](SQL%20Screenshots/Customers_By_Region.png)

### Top Regions by Cancellation

![Top Regions by Cancellation](SQL%20Screenshots/Top_Regions_by_Cancellation.png)

---

## Power BI Dashboard

The Power BI dashboard provides an interactive view of:

- Total Customers
- Total Revenue
- Average Subscription Duration
- Cancelled Customers
- Revenue by Subscription Type
- Customer Distribution by Region
- Cancellation Analysis
- Interactive Filtering

### Dashboard Preview

![Power BI Dashboard](Dashboard%20Screenshots/PowerBI_Dashboard.png)

---

## Key Insights

### Customer Base

- Total Customers: 75,000

### Revenue Performance

- Total Revenue exceeded £149 million.
- Basic Subscription generated the highest revenue.

### Customer Retention

- Approximately 34,000 customers cancelled their subscriptions.
- Active customers significantly outnumber cancelled customers.

### Regional Analysis

- Customer distribution is relatively balanced across regions.
- Certain regions show higher cancellation rates and may require retention strategies.

---

## Project Files

### Dataset

Located in:

```
Dataset
```

### SQL Queries

Located in:

```
SQL Queries
```

### Power BI File

Located in:

```
Power BI File
```

---

## Technical Skills Demonstrated

- Microsoft Excel
- SQL Server
- Power BI
- Data Cleaning
- Data Analysis
- Data Visualization
- Dashboard Design
- KPI Reporting
- Business Intelligence

---

## Author

**Tolulope Glory**

Data Analyst | Power BI Developer | Business Intelligence Analyst

GitHub:
https://github.com/Simpletee17

LinkedIn:
https://www.linkedin.com/in/tolulope-glory-awoyemi

---
