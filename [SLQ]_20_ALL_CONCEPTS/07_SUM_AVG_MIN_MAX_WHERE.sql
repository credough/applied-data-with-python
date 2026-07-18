-- Q41. Find the most expensive product (MAX unit_price).
SELECT MAX(unit_price) as price, product_name AS most_expensive_product FROM products

-- Q42. Find the cheapest product (MIN unit_price).
SELECT MIN(unit_price) AS price, product_name AS most_expensive FROM products

-- Q43. Find the highest total_amount from a single sale.
SELECT MAX(total_amount) AS max_total_amount FROM sales

-- Q44. Find the lowest total_amount from a single sale.
SELECT MIN(total_amount) AS mIN_total_amount FROM sales

-- Q45. Find the highest salary among all employees.
SELECT MAX(salary) AS highest_salary FROM employees

-- Q46. Find the lowest salary among all employees.
SELECT MIN(salary) AS lowest_salary FROM employees

-- Q47. Find the highest supplier rating.
SELECT MAX(rating) AS highest_supplier_rating, supplier_name FROM suppliers

-- Q48. Find the most total_spent by any single customer.
SELECT MAX(total_spent) AS most_total_spent, customer_id FROM customers

-- Q49. Find the product with the highest stock.
SELECT MAX(stock) AS highest_stock, product_name FROM products

-- Q50. In one query, get the count, total, average, max, and min of total_amount from sales.
SELECT COUNT(total_amount) AS count_of_total_amount, SUM(total_amount) AS sum_total_amount, AVG(total_amount) AS avg_total_amount, MAX(total_amount) AS max_total_amount, MIN(total_amount) AS min_total_amount FROM sales