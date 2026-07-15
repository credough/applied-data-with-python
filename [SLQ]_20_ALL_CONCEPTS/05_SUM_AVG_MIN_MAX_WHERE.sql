-- Q31. Get the total total_amount of all sales.
SELECT SUM(total_amount) AS total_amount_all_sales FROM sales

-- Q32. Get the total total_amount of sales in the 'Makati' branch.
SELECT SUM(total_amount) AS total_Makati_sales FROM sales
WHERE branch = 'Makati'

-- Q33. Get the total total_amount of sales paid via 'Credit Card'.
SELECT SUM(total_amount) AS total_credit_card_amount_sales FROM sales
WHERE payment_method = 'Credit Card'

-- Q34. Get the total stock of all products in the 'Electronics' category.
SELECT SUM(stock) AS total_electronics_stock FROM products
WHERE category = 'Electronics'

-- Q35. Get the total salary of all employees in the 'Sales' department.
SELECT SUM(salary) AS total_salary_in_sales_dept FROM employees
WHERE department = 'Sales' 