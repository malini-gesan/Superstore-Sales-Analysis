-- 1. Total Sales

SELECT 
    SUM(Sales) AS Total_Sales
FROM superstore;

-- 2. Total Profit

SELECT 
    SUM(Profit) AS Total_Profit
FROM superstore;

-- 3. Total Orders

SELECT 
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM superstore;

-- 4. Profit Margin

SELECT 
    ROUND((SUM(Profit) / SUM(Sales)) * 100,2) AS Profit_Margin
FROM superstore;

-- 5. Sales By Region

SELECT
    Region,SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 6. Sales By Segment

SELECT
    Segment,SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- 7. Profit By Category

SELECT
    Category,SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Profit DESC;

-- 8. Top 5 Products By Profit

SELECT
    Product_Name,SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Product_Name
ORDER BY Total_Profit DESC
LIMIT 5;