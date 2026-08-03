-- Q51. Count how many products are in each category.
SELECT COUNT(*) AS product_cnt, category FROM products
GROUP BY category

-- Q52. Get the average unit_price per category.
SELECT AVG(unit_price) AS avg_unit_price, category FROM products
GROUP BY category

-- Q53. Get the total stock per category.
SELECT SUM(stock) AS total_stock, category FROM products
GROUP BY category

-- Q54. Count how many customers belong to each membership type.
SELECT COUNT(*) AS member_count, membership FROM customers
GROUP BY membership

-- Q55. Get the average total_spent per membership type.
SELECT ROUND(AVG(total_spent),2) AS avg_total_spnT, membership FROM customers
GROUP by membership