-- projects1 is a database
USE project1;

-- finding the contents of data in table online_sales
SELECT * FROM online_sales;

-- field name changing
ALTER TABLE online_sales
RENAME COLUMN ï»¿Transaction_ID TO Transaction_ID ;

-- product_category  wise total sales
SELECT Product_Category , SUM(Sales) AS 'Total Sales'
FROM online_sales
GROUP BY Product_Category
ORDER BY Product_Category DESC;

-- products wise total revunues
SELECT Product_Name , SUM(Sales) AS 'Total Sales'
FROM online_sales
GROUP BY Product_Name
ORDER BY Product_Name DESC;

-- different payment_methods wise total sales
SELECT Payment_Method , SUM(Sales) AS 'Total Sales'
FROM online_sales
GROUP BY Payment_Method
ORDER BY Payment_Method DESC;

-- region wise total sales
SELECT Region , SUM(Sales) AS 'Total Sales'
FROM online_sales
GROUP BY Region
ORDER BY Region DESC;

-- iphone 14 pro total sales
SELECT Product_Name, SUM(Sales) AS 'Total Sales'
FROM online_sales
WHERE Product_Name = 'iPhone 14 Pro';

-- region asia and credit card total sales
SELECT Region, SUM(Sales) AS 'Total Sales'
FROM online_sales
WHERE Payment_Method = 'Credit Card' AND Region = 'Asia'
GROUP BY Region;

-- total revenue by order_id
SELECT
    Transaction_ID,
    COUNT(DISTINCT Transaction_ID) AS total_orders,
    SUM(Sales) AS total_revenue
FROM online_sales
GROUP BY Transaction_ID
ORDER BY total_revenue DESC;

-- Top 5 Products by Revenue
SELECT Product_Category AS Category, Product_Name AS Products, SUM(Sales) AS Total_Sales
FROM online_sales
GROUP BY Product_Category,Product_Name
ORDER BY Total_Sales
LIMIT 5;


-- THE END---

