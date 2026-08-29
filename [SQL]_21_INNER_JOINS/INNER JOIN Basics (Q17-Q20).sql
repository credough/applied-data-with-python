-- Q17. Join sales and customers — show full_name, age, total_amount for customers older than 40.
SELECT customers.full_name, customers.age, sales.total_amount FROM customers
INNER JOIN sales ON sales.customer_id = customers.customer_id
WHERE age > 40

-- Q18. Join sales and products — count how many times each product was sold. Display product_name and the count, ordered by count descending.
SELECT products.product_name, COUNT(*) AS prod_count FROM sales
INNER JOIN products ON sales.product_id = products.product_id
GROUP BY products.product_name
ORDER BY prod_count DESC

-- Q19. Join sales and customers — get the total total_amount per customer. Display full_name and the total, ordered by total descending.
SELECT customers.full_name, SUM(sales.total_amount) AS total_total_amount FROM sales
INNER JOIN customers ON customers.customer_id = sales.customer_id
GROUP BY customers.full_name
ORDER BY SUM(sales.total_amount) DESC

-- Q20. Join sales and products — get the total total_amount per product category. Display category and total, ordered by total descending.
SELECT products.category, SUM(sales.total_amount) AS total_total_amount FROM products
INNER JOIN sales ON products.product_id = sales.product_id
GROUP BY products.category
ORDER BY SUM(sales.total_amount) DESC
