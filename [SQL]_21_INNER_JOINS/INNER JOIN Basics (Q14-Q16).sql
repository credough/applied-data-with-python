-- Q14. Join products and suppliers — show product_name, unit_price, supplier_name, lead_time_days, ordered by lead_time_days ascending.
SELECT p.product_name, p.unit_price, s.supplier_name, s.lead_time_days FROM products p
INNER JOIN suppliers s ON p.supplier = s.supplier_name
ORDER BY lead_time_days ASC

-- Q15. Join sales and customers — show full_name, membership, payment_method, total_amount for sales paid via 'GCash'.
SELECT customers.full_name, customers.membership, sales.payment_method, sales.total_amount FROM sales
INNER JOIN customers ON customers.customer_id = sales.customer_id
WHERE payment_method = 'GCash'

-- Q16. Join sales and products — show product_name, brand, sale_date, total_amount for all sales in 2024 (sale_date LIKE '2024%').
SELECT products.product_name, products.brand, sales.sale_date, sales.total_amount FROM sales
INNER JOIN products ON products.product_id = sales.product_id
WHERE sale_date LIKE '2024%'