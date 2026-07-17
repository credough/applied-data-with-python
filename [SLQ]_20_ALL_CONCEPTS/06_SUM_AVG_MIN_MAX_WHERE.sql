-- Q36. Get the average unit_price of all products.
SELECT AVG(unit_price) AS avg_unit_price_all_products FROM products

-- Q37. Get the average total_spent of 'Platinum' customers.
SELECT ROUND(AVG(total_spent),2) AS avg_total_spent FROM customers
WHERE membership = 'Platinum'

-- Q38. Get the average rating of all active suppliers.
SELECT AVG(rating) as avg_rating_all_active FROM suppliers
WHERE active = 'Yes'

-- Q39. Get the average salary of female employees.
SELECT AVG(salary) AS avg_fem_salary FROM employees
WHERE gender = 'Female'

-- Q40. Get the average quantity per sale across all sales records.
SELECT AVG(quantity) AS avg_quantity FROM sales