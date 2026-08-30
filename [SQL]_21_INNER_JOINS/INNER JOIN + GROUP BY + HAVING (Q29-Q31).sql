-- Q29. Join products and suppliers — get the average unit_price per supplier city. Show city and average, ordered descending.
SELECT ROUND(AVG(unit_price),2) AS avg_unit_price, suppliers.city FROM products
INNER JOIN suppliers ON suppliers.supplier_name = products.supplier
GROUP BY city
ORDER BY avg_unit_price DESC

-- Q30. Join products and suppliers — find supplier categories where the average product unit_price exceeds 20000. Show category and average.
SELECT products.category, AVG(unit_price) AS avg_unit_price FROM suppliers
INNER JOIN products ON suppliers.supplier_name = products.supplier
GROUP BY products.category
HAVING avg_unit_price > 20000

-- Q31. Join sales and customers — get the total total_amount per city. Show city and total, ordered descending.
SELECT customers.city, SUM(total_amount) AS total_total_amount FROM customers
INNER JOIN sales ON customers.customer_id = sales.customer_id
GROUP BY customers.city
ORDER BY total_total_amount DESC