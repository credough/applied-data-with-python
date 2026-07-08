-- Q1. Get all columns from the products table.
SELECT * FROM products

-- Q2. Get the product_name, category, and unit_price of all products.
SELECT product_name, category, unit_price FROM products

-- Q3. List all distinct category values from products.
SELECT DISTINCT(category) FROM products

-- Q4. List all distinct membership types from customers.
SELECT DISTINCT(membership) FROM customers

-- Q5. List all distinct payment_method values from sales.
SELECT DISTINCT(payment_method) FROM sales

-- Q6. Get all products in the 'Electronics' category.
SELECT * FROM products
WHERE category = 'Electronics'

-- Q7. Get all customers with a 'Platinum' membership.
SELECT * FROM customers
WHERE membership = 'Platinum'

-- Q8. Get all sales where discount is greater than 0.
SELECT * FROM sales
WHERE discount > 0

-- Q9. Get all employees who are 'Regular' and earn more than 50000.
SELECT * FROM employees
WHERE employment = 'Regular' AND salary > 5000

-- Q10. Get all suppliers with a rating of 4.5 or higher.
SELECT * FROM suppliers
WHERE rating > 4.5