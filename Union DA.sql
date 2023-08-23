/* disply all tables and column names */

SELECT table_name, column_name
FROM information_schema.columns
WHERE table_schema = 'union';

/* Q1.  Retrieve the top 5 customers who have made the highest average order
 amounts in the last 6 months. The average order amount should be calculated
 for each customer, and the result should be sorted in descending order.*/

SELECT
    customers.CustomerID,
    customers.Name AS CustomerName,
    AVG(order_details.Quantity * order_details.UnitPrice) AS AvgOrderAmount
FROM
    customers
JOIN
    orders ON customers.CustomerID = orders.CustomerID
JOIN
    order_details ON orders.OrderID = order_details.OrderID
WHERE
    orders.OrderDate >= DATE_SUB(CURRENT_DATE, INTERVAL 6 MONTH)
GROUP BY
    customers.CustomerID, customers.Name
ORDER BY
    AvgOrderAmount DESC
LIMIT 5;

/*Q2. Retrieve the list of customer whose order value is lower this year as compared to previous year*/

WITH ThisYear AS (
    SELECT
        customers.CustomerID,
        SUM(order_details.Quantity * order_details.UnitPrice) AS ThisYearTotal
    FROM
        customers
    JOIN
        orders ON customers.CustomerID = orders.CustomerID
    JOIN
        order_details ON orders.OrderID = order_details.OrderID
    WHERE
        YEAR(orders.OrderDate) = YEAR(CURRENT_DATE)
    GROUP BY
        customers.CustomerID
),
LastYear AS (
    SELECT
        customers.CustomerID,
        SUM(order_details.Quantity * order_details.UnitPrice) AS LastYearTotal
    FROM
        customers
    JOIN
        orders ON customers.CustomerID = orders.CustomerID
    JOIN
        order_details ON orders.OrderID = order_details.OrderID
    WHERE
        YEAR(orders.OrderDate) = YEAR(CURRENT_DATE) - 1
    GROUP BY
        customers.CustomerID
)
SELECT
    customers.CustomerID,
    customers.Name AS CustomerName
FROM
    customers
JOIN
    ThisYear ON customers.CustomerID = ThisYear.CustomerID
JOIN
    LastYear ON customers.CustomerID = LastYear.CustomerID
WHERE
    ThisYearTotal < LastYearTotal;

/*Q3 Create a table showing cumulative purchase by a particular customer.
 Show the breakup of cumulative purchases by product category*/
 
 WITH ThisYear AS (
    SELECT
        customers.CustomerID,
        SUM(order_details.Quantity * order_details.UnitPrice) AS ThisYearTotal
    FROM
        customers
    JOIN
        orders ON customers.CustomerID = orders.CustomerID
    JOIN
        order_details ON orders.OrderID = order_details.OrderID
    WHERE
        YEAR(orders.OrderDate) = YEAR(CURRENT_DATE)
    GROUP BY
        customers.CustomerID
),
LastYear AS (
    SELECT
        customers.CustomerID,
        SUM(order_details.Quantity * order_details.UnitPrice) AS LastYearTotal
    FROM
        customers
    JOIN
        orders ON customers.CustomerID = orders.CustomerID
    JOIN
        order_details ON orders.OrderID = order_details.OrderID
    WHERE
        YEAR(orders.OrderDate) = YEAR(CURRENT_DATE) - 1
    GROUP BY
        customers.CustomerID
)
SELECT
    customers.CustomerID,
    customers.Name AS CustomerName
FROM
    customers
JOIN
    ThisYear ON customers.CustomerID = ThisYear.CustomerID
JOIN
    LastYear ON customers.CustomerID = LastYear.CustomerID
WHERE
    ThisYearTotal < LastYearTotal;

 /*Q4 Retrieve the list of top 5 selling products. Further bifurcate the sales by product variants */

 SELECT
    p.ProductID,
    p.Name AS ProductName,
    v.VariantID,
    v.Color,
    v.Size,
    v.Weight,
    SUM(od.Quantity) AS TotalQuantitySold
FROM
    products p
JOIN
    variants v ON p.ProductID = v.ProductID
JOIN
    order_details od ON v.VariantID = od.VariantID
GROUP BY
    p.ProductID,
    p.Name,
    v.VariantID,
    v.Color,
    v.Size,
    v.Weight
ORDER BY
    TotalQuantitySold DESC
LIMIT 5;

 