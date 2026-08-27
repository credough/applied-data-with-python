-- Q2. Join sales and products to show each sale's sale_id, the product_name, and total_amount.
SELECT s.sale_id, p.product_name, s.total_amount FROM sales s
INNER JOIN products p ON s.product_id = p.product_id