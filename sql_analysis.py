from db_utils import get_connection
import pandas as pd
conn = get_connection()

# 1. Top 5 Products by Sales
query1 = '''
SELECT "Product Name", SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY "Product Name"
ORDER BY Total_Sales DESC
LIMIT 5;
'''

df1 = pd.read_sql_query(query1, conn)
print("Top 5 Products by Sales")
print(df1)

# 2. Monthly Sales Trend
query2 = '''
SELECT substr("Order Date", 1, 7) AS Month,
SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Month
ORDER BY Month;
'''

df2 = pd.read_sql_query(query2, conn)
print("\nMonthly Sales Trend")
print(df2)

# 3. Customer Segmentation by Spend
query3 = '''
SELECT "Customer Name",
SUM(Sales) AS Total_Spend
FROM superstore
GROUP BY "Customer Name"
ORDER BY Total_Spend DESC
LIMIT 10;
'''

df3 = pd.read_sql_query(query3, conn)
print("\nTop 10 Customers by Spend")
print(df3)

# Close connection
conn.close()