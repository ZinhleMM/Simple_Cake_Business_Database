-- Find unique cupcake flavors
SELECT DISTINCT Cupcake_Flavor FROM Products;

-- Calculate revenue per flavor
SELECT p.Cupcake_Flavor, SUM(o.Quantity * o.Unit_Price) AS Revenue
FROM Orders o
JOIN Products p ON o.Product_ID = p.Product_ID
GROUP BY p.Cupcake_Flavor;

-- Total revenue for 2023
SELECT SUM(Quantity * Unit_Price) AS Total_Revenue
FROM Orders
WHERE EXTRACT(YEAR FROM Date) = 2023;

-- Month with the highest sales
SELECT TO_CHAR(Date, 'Month') AS Month, SUM(Quantity) AS Total_Sales
FROM Orders
GROUP BY TO_CHAR(Date, 'Month')
ORDER BY Total_Sales DESC
LIMIT 1;

-- Most popular flavor
SELECT p.Cupcake_Flavor, SUM(o.Quantity) AS Total_Quantity
FROM Orders o
JOIN Products p ON o.Product_ID = p.Product_ID
GROUP BY p.Cupcake_Flavor
ORDER BY Total_Quantity DESC
LIMIT 1;

-- Relation Between Rating 5 and Revenue
SELECT p.Cupcake_Flavor, SUM(o.Quantity * o.Unit_Price) AS Revenue
FROM Orders o
JOIN Products p ON o.Product_ID = p.Product_ID
WHERE o.Rating = 5
GROUP BY p.Cupcake_Flavor;