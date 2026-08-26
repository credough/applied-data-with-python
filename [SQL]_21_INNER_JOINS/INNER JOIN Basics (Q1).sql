-- Q1. Join sales and customers to show each sale's sale_id, the customer's full_name, and the total_amount.
SELECT s.sale_id, c.full_name, s.total_amount FROM sales s
INNER JOIN customers c ON s.customer_id = c.customer_id