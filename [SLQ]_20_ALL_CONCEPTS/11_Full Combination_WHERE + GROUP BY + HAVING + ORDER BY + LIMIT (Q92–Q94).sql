-- Q92. Among 'Platinum' and 'Gold' customers only — find cities where the average total_spent exceeds 80000, ordered by average descending.
SELECT city, AVG(total_spent) AS avg_total_spent FROM customers
WHERE membership = 'Platinum' OR membership = 'Gold'
GROUP BY city
HAVING avg_total_spent > 80000
ORDER BY avg_total_spent DESC

-- Q93. Among products with stock > 50 only — find categories where the average unit_price exceeds 30000, ordered by average descending, limit to top 3.
SELECT category, ROUND(AVG(unit_price),2) AS avg_unit_price FROM products
WHERE stock > 50
GROUP BY category
HAVING avg_unit_price > 30000
ORDER BY avg_unit_price DESC
LIMIT 3

-- Q94. Among sales in 2024 only (sale_date LIKE '2024%') — find payment_method groups where the total total_amount exceeds 1500000, ordered by total descending.
SELECT payment_method, SUM(total_amount) AS total_total_amount FROM sales
WHERE sale_date LIKE '2024%'
GROUP BY payment_method
HAVING total_total_amount > 1500000
ORDER BY total_total_amount DESC
