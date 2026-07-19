-- Q51. Count how many products are in each category.
SELECT COUNT(*) AS num_products, category FROM products
GROUP by CATEGORY

-- Q52. Get the average unit_price per category.
SELECT ROUND(AVG(unit_price),2) AS avg_unit_price, category FROM products
GROUP BY category

-- Q53. Get the total stock per category.
SELECT category, SUM(STOCK) AS total_stock FROM products
GROUP BY category

-- Q54. Count how many customers belong to each membership type.
SELECT COUNT(*) AS total_customer, membership FROM customers
GROUP BY membership

-- Q55. Get the average total_spent per membership type.
SELECT ROUND(AVG(total_spent), 2) as avg_total_spent, membership FROM customers
GROUP BY membership