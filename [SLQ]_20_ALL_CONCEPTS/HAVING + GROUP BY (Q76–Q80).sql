-- Q76. Find categories where the number of products is greater than 6.
SELECT COUNT(*) AS product_count, category FROM products
GROUP BY category
HAVING COUNT(*) > 6

-- Q77. Find categories where the average unit_price exceeds 35000.
SELECT category, ROUND(AVG(unit_price),2) AS avg_unit_price FROM products
GROUP BY category
HAVING AVG(unit_price) > 35000

Q78. Find membership types where the average total_spent is above 70000.
SELECT membership, AVG(total_spent) AS avg_total_spent FROM customers
GROUP BY membership
HAVING avg_total_spent > 7000
ORDER BY avg_total_spent DESC

-- Q79. Find branches where the total total_amount from sales exceeds 5000000.
SELECT branch, SUM(total_amount) AS total_total_amount FROM sales
GROUP BY branch
HAVING total_total_amount > 50000

-- Q80. Find payment_method groups where the count of sales is exactly 20.
SELECT payment_method, COUNT(*) AS count_of_sales FROM sales
GROUP BY payment_method
HAVING COUNT(*) = 20 