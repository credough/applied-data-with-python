-- Q35. Join sales and customers — among 'Gold' and 'Platinum' members only, get total total_amount per city. Show city and total, ordered descending.
SELECT customers.city, SUM(sales.total_amount) AS pinaka_total_amount, customers.membership FROM sales
INNER JOIN customers ON sales.customer_id = customers.customer_id
GROUP BY customers.city
HAVING customers.membership IN ('Platinum', 'Gold')
ORDER BY pinaka_total_amount DESC