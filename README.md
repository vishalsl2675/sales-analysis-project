# Sales Analysis Project using Excel and SQL

## Project Overview
This project analyzes sales transaction data using SQL. The dataset contains order information, customer locations, product categories, sales values, and gender-based purchasing data.

The goal is to answer business questions using SQL joins, aggregations, grouping, filtering, and ranking techniques.

---

## Dataset Files

### 1. Raw Data
Contains:
- Order details
- Product information
- Quantity sold
- Sales value
- Customer location (Pincode, City, State)
- Category information

### 2. Pincode Master
Contains:
- Pincode
- City
- State

### 3. Gender Master
Contains:
- Gender
- Category mapping

---

## Database Used
- MySQL

## Tools Used
- MySQL Workbench
- Microsoft Excel
- GitHub

---

## Database Setup

```sql
CREATE DATABASE assignment;
USE assignment;
```

Tables used:

- raw_data
- pincode_master
- data_analyst_test

---

## Business Questions Solved

### Q1. Total Quantity Sold by State and City
Calculate total quantity sold for each state and city and identify highest and lowest selling locations.

Concepts Used:
- INNER JOIN
- SUM()
- GROUP BY
- ORDER BY

---

### Q2. Highest Revenue Category and Gender Combination

Determine which Category and Gender combination generated the highest sales.

Formula:

Revenue = ListPrice × Qty

Concepts Used:
- JOIN
- Aggregation
- GROUP BY
- LIMIT

---

### Q3. Most Ordered Parent Product in Top Cities

Find the Parent Product with the highest number of orders in the top-performing cities based on sales.

Concepts Used:
- Subqueries
- GROUP BY
- COUNT()
- ORDER BY

---

## SQL Skills Demonstrated

- Database Creation
- Data Cleaning
- Table Renaming
- Joins
- Aggregate Functions
- Grouping
- Sorting
- Business Problem Solving
- SQL Reporting

---


## Learning Outcomes

Through this project I practiced:

- Writing SQL queries for real business scenarios
- Working with relational tables
- Performing sales analysis
- Generating actionable business insights
- Building a portfolio-ready SQL project

---

## Author

Vishal Lashkar

Aspiring Data Analyst | SQL | Power BI | Excel | Python
