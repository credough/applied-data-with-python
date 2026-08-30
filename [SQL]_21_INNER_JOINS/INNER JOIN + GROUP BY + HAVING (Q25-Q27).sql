-- Q26. Join sales and products — find categories where the total total_amount exceeds 2000000. Show category and total.
SELECT products.category, SUM(total_amount) AS total_total_amount FROM sales
INNER JOIN products ON sales.product_id = products.product_id
GROUP BY products.category
HAVING total_total_amount > 2000000

-- Q27. Join sales and customers — find membership types where the average total_amount per sale exceeds 140000. Show membership and average.
SELECT customers.membership, AVG(total_amount) AS avg_total_amount FROM sales
INNER JOIN customers ON customers.customer_id = sales.customer_id
GROUP BY customers.membership
HAVING avg_total_amount > 140000

-- Q28. Join sales and products — find products sold more than 3 times. Show product_name and sale count.
SELECT products.product_name, COUNT(*) AS product_sold FROM sales
INNER JOIN products ON sales.product_id = products.product_id
GROUP BY products.product_name
HAVING product_sold > 3