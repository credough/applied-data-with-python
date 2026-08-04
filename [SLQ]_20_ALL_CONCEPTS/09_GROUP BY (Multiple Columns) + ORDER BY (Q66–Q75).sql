-- Q66. Count products grouped by category AND branch.
SELECT COUNT(*) AS product_cnt, category, branch FROM products
GROUP BY category, branch

-- Q67. Get the average unit_price grouped by category AND branch.
SELECT AVG(unit_price) AS avg_unit_price, category, branch FROM products
GROUP BY category, branch

-- Q68. Count customers grouped by membership AND gender.
SELECT COUNT(*) AS customers_cnt, membership, gender FROM customers
GROUP BY membership, gender

-- Q69. Get the average total_spent grouped by membership AND city.
SELECT AVG(total_spent) AS avg_total_spent, membership, city FROM customers
GROUP BY membership, city

-- Q70. Count sales grouped by branch AND payment_method.
SELECT COUNT(*) AS sales_cnt, branch, payment_method FROM sales
GROUP BY branch, payment_method

-- Q71. Get the total total_amount grouped by branch AND payment_method.
SELECT SUM(total_amount) AS total_total_amount, branch, payment_method FROM sales 
GROUP BY branch, payment_method

-- Q72. Count employees grouped by department AND employment.
SELECT COUNT(*) AS employees_cnt, department, employment FROM employees
GROUP BY department, employment

-- Q73. Get the average salary grouped by department AND gender.
SELECT AVG(salary) AS avg_salary, department, gender FROM employees
GROUP BY department, gender

-- Q74. Count suppliers grouped by category AND city.
SELECT COUNT(*) AS suppliers_cnt, category, city FROM suppliers
GROUP BY category, city

-- Q75. Get the total total_amount grouped by branch AND the year of sale_date (Hint: use substr(sale_date, 1, 4) to extract the year).
SELECT SUM(total_amount) AS total_total_amount, branch, substr(sale_date,1,4) as year FROM sales
GROUP BY branch, year