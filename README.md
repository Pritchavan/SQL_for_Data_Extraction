# SQL Data Extraction and Business Analysis

## Project Overview
This project demonstrates SQL data extraction and business analysis using Python, SQLite, Pandas, and Jupyter Notebook. A cleaned Superstore dataset is imported into a SQLite database, and SQL queries are used to answer real-world business questions.

## Objectives
- Import CSV data into SQLite database
- Execute SQL queries using Python
- Analyze business data with SQL
- Build reusable database utility functions
- Answer business questions using SQL

## Tools & Technologies
- Python
- SQLite
- Pandas
- Jupyter Notebook
- VS Code

## Project Structure

```
sql-data-extraction/
│
├── data/
│   └── cleaned_superstore.csv
│
├── database/
│   └── superstore.db
│
├── notebooks/
│   └── sql_analysis.ipynb
│
├── scripts/
│   ├── database.py
│   ├── db_utils.py
│   └── sql_analysis.py
│
├── sql/
│   └── queries.sql
│
├── README.md
└── requirements.txt
```

## Business Questions Solved

1. Total Sales
2. Total Profit
3. Top 10 Customers by Sales
4. Sales by Category
5. Top 5 Products by Sales
6. Sales by Region
7. Monthly Sales Trend
8. Customer Segmentation by Spend
9. Average Sales by Category
10. Top 10 Customers by Spend

## Key Features

- SQLite database creation
- SQL query execution using Pandas
- Business data analysis
- Reusable database connection utility
- Jupyter Notebook integration

## How to Run

1. Install dependencies

```bash
pip install -r requirements.txt
```

2. Create the database

```bash
python scripts/database.py
```

3. Run SQL analysis

```bash
python scripts/sql_analysis.py
```

## Requirements

- Python 3.x
- Pandas
- SQLite3
- Jupyter Notebook

## Author

**Priti Chavan**
