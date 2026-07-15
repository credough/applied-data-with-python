-- Q26. Count how many suppliers are active.
SELECT COUNT(*) AS active_suppliers_count FROM suppliers
WHERE active = 'Yes'

-- Q27. Count how many products have a stock of 50 or fewer.
SELECT COUNT(*) AS products_below_50 FROM products
WHERE stock > 50

-- Q28. Count how many sales were made in 2024 (use sale_date LIKE '2024%').
SELECT COUNT(*) AS sales_made_2024 FROM sales
WHERE sale_date LIKE '2024%'

-- Q29. Count how many female employees there are.
SELECT COUNT(*) AS no_of_females FROM employees
WHERE gender = 'Female'

-- Q30. Count how many customers have visited more than 50 times (visit_count > 50).
SELECT COUNT(*) AS customer_count_over50_visits FROM customers
WHERE visit_count > 50