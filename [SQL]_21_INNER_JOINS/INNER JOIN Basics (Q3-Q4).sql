-- Q3. Join sales and customers to show full_name, payment_method, and total_amount for all sales.
SELECT customers.full_name, sales.payment_method, sales.total_amount FROM sales
INNER JOIN customers ON sales.customer_id = customers.customer_id

-- Q4. Join sales and products to show product_name, category, quantity, and total_amount for all sales.
SELECT products.product_name, products.category, sales.quantity, sales.total_amount FROM products
INNER JOIN sales ON sales.product_id = products.product_id