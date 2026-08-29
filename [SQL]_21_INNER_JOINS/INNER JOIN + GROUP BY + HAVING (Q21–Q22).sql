-- Q21. Join sales and customers — count how many sales each customer made. Show full_name and count, ordered by count descending.
SELECT customers.full_name, COUNT(*) AS number_of_sales FROM sales
INNER JOIN customers ON customers.customer_id = sales.customer_id
GROUP BY customers.full_name
ORDER BY number_of_sales DESC

-- Q22. Join sales and products — get the average total_amount per category. Show category and average, ordered by average descending.
SELECT products.category, AVG(total_amount) AS avg_total_amount FROM products
INNER JOIN sales ON products.product_id = sales.product_id
GROUP BY products.category
ORDER BY avg_total_amount DESC