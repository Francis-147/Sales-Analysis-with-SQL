# Sales Analysis with SQL Server

## Overview
This project explores a retail sales dataset using SQL Server to extract business insights from customer, product, and transaction data. The analysis focuses on understanding sales performance, customer behavior, and revenue distribution.

## Dataset
The project uses two tables:

- sales_data: transaction-level data including price, category, quantity, shopping mall, payment method, and invoice date
- customer_data: customer demographic data including age, gender, payment method, and customer ID

## Data Preparation
- Checked for missing values in price and age columns
- Verified dataset size and uniqueness of records
- Converted price column to DECIMAL(10,2) for accuracy
- Explored table structure using INFORMATION_SCHEMA.COLUMNS

## Key Insights
- Clothing is the most sold product category
- Mall of Istanbul generates the highest total revenue
- Total revenue is approximately 68.5 million
- Female customers are the majority
- Cash is the most used payment method
- Technology products have the highest price range

## SQL Concepts Used
- SELECT, WHERE, ORDER BY
- GROUP BY aggregations (SUM, COUNT, AVG, MIN, MAX)
- JOIN operations
- CASE statements for segmentation
- Subqueries
- Date functions (YEAR)

## How to Run This Project
1. Import the dataset into SQL Server Management Studio (SSMS)
2. Run the SQL script file
3. Execute queries step by step to reproduce the analysis
