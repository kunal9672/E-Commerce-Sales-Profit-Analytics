-- E-Commerce Sales & Profit Analytics
-- SQL Analysis

-- Total sales
SELECT SUM(Sales) AS Total_Sales
FROM ecommerce_sales;

-- Total profit
SELECT SUM(Profit) AS Total_Profit
FROM ecommerce_sales;

-- Total orders
SELECT COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM ecommerce_sales;

-- Average order value
SELECT AVG(Sales) AS Average_Order_Value
FROM ecommerce_sales;

-- Sales by category
SELECT Category, SUM(Sales) AS Total_Sales
FROM ecommerce_sales
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Profit by category
SELECT Category, SUM(Profit) AS Total_Profit
FROM ecommerce_sales
GROUP BY Category
ORDER BY Total_Profit DESC;

-- Sales by product
SELECT Product, SUM(Sales) AS Total_Sales
FROM ecommerce_sales
GROUP BY Product
ORDER BY Total_Sales DESC;

-- Sales by city
SELECT City, SUM(Sales) AS Total_Sales
FROM ecommerce_sales
GROUP BY City
ORDER BY Total_Sales DESC;

-- Sales by payment mode
SELECT `Payment Mode`, SUM(Sales) AS Total_Sales
FROM ecommerce_sales
GROUP BY `Payment Mode`
ORDER BY Total_Sales DESC;

-- Orders by order status
SELECT `Order Status`, COUNT(DISTINCT `Order ID`) AS Order_Count
FROM ecommerce_sales
GROUP BY `Order Status`
ORDER BY Order_Count DESC;

-- Monthly sales
SELECT Month, SUM(Sales) AS Total_Sales
FROM ecommerce_sales
GROUP BY Month
ORDER BY Month;

-- Monthly profit
SELECT Month, SUM(Profit) AS Total_Profit
FROM ecommerce_sales
GROUP BY Month
ORDER BY Total_Profit DESC;

-- Category-wise sales and profit
SELECT Category,
       SUM(Sales) AS Total_Sales,
       SUM(Profit) AS Total_Profit
FROM ecommerce_sales
GROUP BY Category
ORDER BY Total_Sales DESC;

-- City-wise sales and profit
SELECT City,
       SUM(Sales) AS Total_Sales,
       SUM(Profit) AS Total_Profit
FROM ecommerce_sales
GROUP BY City
ORDER BY Total_Sales DESC;

-- Payment mode with order count
SELECT `Payment Mode`,
       COUNT(DISTINCT `Order ID`) AS Order_Count,
       SUM(Sales) AS Total_Sales
FROM ecommerce_sales
GROUP BY `Payment Mode`
ORDER BY Total_Sales DESC;

-- Product-wise sales and profit
SELECT Product,
       SUM(Sales) AS Total_Sales,
       SUM(Profit) AS Total_Profit
FROM ecommerce_sales
GROUP BY Product
ORDER BY Total_Profit DESC;
