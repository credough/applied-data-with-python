-- Q36. LEFT JOIN customers and sales — show all customers and their sale_id (NULL if they have no sales).
SELECT sales.sale_id, customers.full_name FROM customers
LEFT JOIN sales ON sales.customer_id = customers.customer_id

-- Q37. LEFT JOIN customers and sales — show only customers who have NO sales records. (Hint: WHERE s.sale_id IS NULL)
SELECT customers.full_name, sales.sale_id FROM customers
LEFT JOIN sales ON sales.customer_id = customers.customer_id
WHERE sales.sale_id IS NULL