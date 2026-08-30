-- Q23. Join sales and customers — get the total total_amount per membership type. Show membership and total.
SELECT customers.membership, SUM(total_amount) AS total_total_amount FROM sales
INNER JOIN customers ON sales.customer_id = customers.customer_id
GROUP BY customers.membership

-- Q24. Join sales and products — get the total quantity sold per category. Show category and total quantity, ordered descending.
SELECT products.category, SUM(quantity) as total_quantity FROM sales
INNER JOIN products ON products.product_id = sales.product_id
GROUP BY products.category
ORDER BY total_quantity DESC

-- Q25. Join sales and customers — find customers who made more than 3 purchases. Show full_name and purchase count.
SELECT customers.full_name, COUNT(*) AS purchase_count FROM sales
INNER JOIN customers ON sales.customer_id = customers.customer_id
GROUP BY customers.full_name
HAVING purchase_count > 3