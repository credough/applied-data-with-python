-- Q89. Among 'Regular' employees only — find departments where the average salary exceeds 50000, ordered by average salary descending.
SELECT department, AVG(salary) AS avg_salary FROM employees
WHERE employment = 'Regular'
GROUP BY department
HAVING avg_salary > 50000
ORDER BY avg_salary DESC

-- Q90. Among 'active' suppliers only (active = 'Yes') — find categories where the average rating is above 4.0, ordered by average rating descending.
SELECT category, AVG(rating) AS avg_rating FROM suppliers
WHERE active = 'Yes'
GROUP BY category
HAVING avg_rating > 4.0
ORDER BY avg_rating DESC

-- Q91. Among sales with a discount > 0 only — find branches where the total total_amount exceeds 2000000, ordered by total descending.
SELECT branch, SUM(total_amount) AS total_total_amount FROM sales
WHERE discount > 0
GROUP BY branch
HAVING total_total_amount > 2000000
ORDER BY total_total_amount DESC