-- Q11. Get all products whose stock is below their reorder_level.
SELECT * FROM products
WHERE stock < reorder_level

-- Q12. Get all customers from 'Manila' OR 'Makati'.
SELECT * FROM customers
WHERE city = 'Manila' OR 'Makati'

-- Q13. Get all sales made in the 'BGC' branch paid via 'GCash'.
SELECT * FROM sales
WHERE branch == 'BGC' AND payment_method == 'GCash'

-- Q14. Get all products whose product_name contains the word 'Nike'.
SELECT * FROM products
WHERE product_name LIKE 'Nike'

-- Q15. Get all suppliers that are currently active (active = 'Yes').
SELECT * FROM suppliers
WHERE active = 'Yes'

-- Q16. List all products ordered by unit_price descending.
SELECT * FROM products
ORDER BY unit_price DESC

-- Q17. List all customers ordered by total_spent descending.
SELECT * FROM customers
ORDER BY total_spent DESC

-- Q18. List all sales ordered by total_amount descending, show only the top 10.
SELECT * FROM sales
ORDER BY total_amount DESC
LIMIT 10

-- Q19. Get the 5 employees with the highest salary.
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 5

-- Q20. Get the 3 suppliers with the lowest lead_time_days, ordered ascending.
SELECT * FROM suppliers
ORDER BY lead_time_days ASC
LIMIT 3