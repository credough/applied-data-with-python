-- Q11. Join sales and customers — show full_name, city, total_amount, ordered by total_amount descending, limit to top 5.
SELECT customers.full_name, customers.city, sales.total_amount FROM customers
INNER JOIN sales ON sales.customer_id = customers.customer_id
ORDER BY total_amount DESC
LIMIT 5

-- Q12. Join sales and products — show product_name, quantity, total_amount, ordered by quantity descending, limit to top 10.
SELECT products.product_name, sales.quantity, sales.total_amount FROM sales
INNER JOIN products ON products.product_id = sales.product_id
ORDER BY quantity DESC 
LIMIT 10

-- Q13. Join products and suppliers — show only products supplied by active suppliers (active = 'Yes'). Display product_name, supplier_name, active.
SELECT products.product_name, suppliers.supplier_name, suppliers.active FROM products
INNER JOIN suppliers ON suppliers.supplier_name = products.supplier
WHERE active = 'Yes'