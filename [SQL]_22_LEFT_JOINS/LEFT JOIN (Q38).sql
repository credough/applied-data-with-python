-- Q38. LEFT JOIN products and sales — show all products and their sale_id (NULL if never sold).
SELECT products.product_name, sales.sale_id FROM products
LEFT JOIN sales ON products.product_id = sales.product_id