select * from sales 
limit 10;



SELECT 
    COUNT(*) as total_sales,
    MIN(salesdate) as earliest_sale,
    MAX(salesdate) as latest_sale,
    SUM(totalprice) as total_revenue,
    AVG(totalprice) as average_sale_amount
FROM sales;


SELECT * FROM sales 
WHERE totalprice > 500
ORDER BY totalprice DESC;

SELECT * FROM sales 
WHERE salespersonid = 10  
ORDER BY salesdate DESC;

SELECT 
    salespersonid,
    COUNT(*) as total_sales,
    SUM(totalprice) as total_revenue,
    AVG(totalprice) as avg_sale_amount,
    SUM(quantity) as total_units_sold,
    AVG(discount) as avg_discount
FROM sales
GROUP BY salespersonid
ORDER BY total_revenue DESC;

SELECT 
    Sales.SalesID,
    Sales.SalesDate,
    Sales.Quantity,
    Sales.TotalPrice,
    Products.ProductName,
    Products.Price,
    Products.CategoryID
FROM Sales
INNER JOIN Products ON Sales.ProductID = Products.ProductID;



SELECT 
    Products.ProductID,
    Products.ProductName,
    Products.Price
FROM Products
LEFT JOIN Sales ON Products.ProductID = Sales.ProductID
WHERE Sales.SalesID IS NULL;


SELECT 
    Sales.SalesID,
    Sales.SalesDate,
    Sales.TotalPrice,
    Products.ProductName,
    Products.Price,
    Products.CategoryID
FROM Sales
RIGHT JOIN Products ON Sales.ProductID = Products.ProductID;
