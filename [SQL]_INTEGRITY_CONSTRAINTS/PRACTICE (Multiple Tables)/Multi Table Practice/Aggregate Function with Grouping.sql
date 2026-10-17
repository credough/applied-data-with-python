-- Find the total quantity of items sold per product category (Category, TotalQuantitySold). Sort the result in descending order by total quantity sold.   
SELECT p.Category, SUM(d.Quantity) AS TotalQuantitySold FROM review.detail d 
INNER JOIN review.product p ON p.ProductCode = d.ProdCode
GROUP BY p.category
ORDER BY SUM(d.Quantity) DESC