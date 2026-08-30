-- Q32. Join sales and products — get the average unit_price per brand. Show brand and average, ordered descending, limit to top 5.
SELECT products.brand, AVG(products.unit_price) AS avg_unit_price FROM sales
INNER JOIN products ON sales.product_id = products.product_id
GROUP BY products.brand
ORDER BY avg_unit_price DESC
LIMIT 5

-- Q33. Join sales and customers — find cities where the total total_amount exceeds 1500000. Show city and total.
SELECT customers.city, SUM(sales.total_amount) as total_total_amount FROM sales
INNER JOIN customers ON sales.customer_id = customers.customer_id
GROUP BY customers.city 
HAVING total_total_amount > 1500000

-- Q34. Join sales and products — among 'Electronics' only, find products sold more than twice. Show product_name and sale count.
SELECT products.product_name, COUNT(*) as sale_cnt FROM sales
INNER JOIN products ON sales.product_id = products.product_id
GROUP BY products.product_name
HAVING products.category = 'Electronics' AND sale_cnt > 2