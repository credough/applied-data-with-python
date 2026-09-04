-- Q39. LEFT JOIN products and sales — show only products that have NEVER been sold.
SELECT products.product_name, sale_id FROM products
LEFT JOIN sales ON sales.product_id = products.product_id
WHERE sales.sale_id IS NULL