-- Q81. Find departments where the average employee salary exceeds 50000.
SELECT department, AVG(salary) AS avg_employee_salary FROM employees
GROUP BY department
HAVING avg_employee_salary > 50000

-- Q82. Find supplier categories where the average rating is above 4.0.
SELECT category, AVG(rating) AS avg_rating FROM suppliers
GROUP BY category
HAVING avg_rating > 4

-- Q83. Find branch groups in employees where the total salary exceeds 600000.
SELECT branch, SUM(salary) AS total_salary FROM employees
GROUP BY branch
HAVING total_salary > 600000

-- Q84. Find product categories where the total stock exceeds 900.
SELECT category, SUM(stock) AS total_stock FROM products
GROUP BY category
HAVING total_stock > 900

-- Q85. Find city groups in customers where the average total_spent exceeds 80000.
SELECT city, avg(total_spent) as avg_total_spent FROM customers
GROUP BY city
HAVING avg_total_spent > 80000