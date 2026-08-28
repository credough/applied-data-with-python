-- Q8. Join sales and products — show only sales of 'Electronics' products. Display product_name, category, and total_amount.
SELECT products.product_name, products.category, sales.total_amount FROM sales
INNER JOIN products ON products.product_id = sales.product_id
WHERE category = 'Electronics'

-- Q9. Join sales and customers — show sales where discount > 0. Display full_name, discount, and total_amount.
SELECT customers.full_name, sales.discount, sales.total_amount FROM sales
INNER JOIN customers ON customers.customer_id = sales.customer_id
WHERE discount > 0

-- Q10. Join sales and products — show only sales from the 'BGC' branch. Display product_name, branch, and total_amount.
SELECT products.product_name, products.branch, sales.total_amount FROM sales 
INNER JOIN products ON sales.branch = products.branch
WHERE sales.branch = 'BGC'