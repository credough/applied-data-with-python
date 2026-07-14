-- Q21. Count the total number of products.
SELECT COUNT(*) AS total_product FROM products
	
-- Q22. Count how many products are in the 'Clothing' category.
SELECT COUNT(*) AS total_clothing FROM products
WHERE category = 'Clothing'

-- Q23. Count how many customers have a 'Gold' membership.
SELECT COUNT(*) AS gold_customer_total FROM customers
WHERE membership = 'Gold'

-- Q24. Count how many sales had a discount applied (discount > 0).
SELECT COUNT(*) AS discount_applied FROM sales
WHERE discount > 0

-- Q25. Count how many employees are 'Contractual'.
SELECT COUNT(*) AS contractual_employees FROM employees
WHERE employment = 'Contractual'