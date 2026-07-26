-- 1. View all data
SELECT * FROM superstore;

-- 2. Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM superstore;

-- 3. Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM superstore;

-- 4. Top 10 Customers by Sales
SELECT "Customer Name", SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY "Customer Name"
ORDER BY Total_Sales DESC
LIMIT 10;

-- 5. Sales by Category
SELECT Category, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 6. Top 5 Products by Sales
SELECT Product_Name, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 5;

-- 7. Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 8. Monthly Sales Trend
SELECT strftime('%Y-%m', "Order Date") AS Month,
SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Month
ORDER BY Month;

-- 9. Customer Segmentation by Spend
SELECT Customer_Segment, COUNT(*) AS Customers
FROM (
    SELECT
        "Customer Name",
        CASE
            WHEN SUM(Sales) >= 10000 THEN 'High Value'
            WHEN SUM(Sales) >= 5000 THEN 'Medium Value'
            ELSE 'Low Value'
        END AS Customer_Segment
    FROM superstore
    GROUP BY "Customer Name"
)
GROUP BY Customer_Segment;

-- 10. Average Discount by Category
SELECT Category,
AVG(Discount) AS Average_Discount
FROM superstore
GROUP BY Category
ORDER BY Average_Discount DESC;