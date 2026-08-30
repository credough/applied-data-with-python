-- Q28. Join sales and products — find products sold more than 3 times. Show product_name and sale count.
SELECT products.product_name, COUNT(*) AS sale_cnt FROM sales
INNER JOIN products ON products.product_id = sales.product_id
GROUP BY products.product_name
HAVING sale_cnt > 3