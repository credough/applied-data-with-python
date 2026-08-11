-- Q95. Among female employees only — find departments where the count is more than 3, ordered by count descending.
SELECT department, COUNT(*) AS count_ FROM employees
WHERE gender = 'Female'
GROUP BY department
HAVING COUNT(*) > 3
ORDER BY COUNT(*) DESC

-- Q96. Among products in the 'Electronics' or 'Home & Living' categories only — find which branch has the highest average unit_price, limit to top 1.
SELECT branch, AVG(unit_price) AS avg_unit_price FROM products
WHERE category IN ('Electronics', 'Home & Living')
GROUP BY branch
ORDER BY avg_unit_price DESC
LIMIT 1

-- Q97. Among customers with more than 30 visits only — find membership types where the average total_spent exceeds 60000, ordered by average descending.
SELECT membership, AVG(total_spent) AS avg_total_spent FROM customers
WHERE visit_count > 30
GROUP BY membership
HAVING avg_total_spent > 60000
ORDER BY avg_total_spent DESC