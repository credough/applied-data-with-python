-- Q99. Among sales where quantity >= 5 — find branches where the total total_amount exceeds 1000000, ordered by total descending.
SELECT branch, SUM(total_amount) AS total_total_amount FROM sales
WHERE quantity >= 5
GROUP BY branch
HAVING total_total_amount > 1000000
ORDER BY total_total_amount DESC

-- Q100. Among suppliers with a rating >= 4.0 and active = 'Yes' — find categories where the count of such suppliers is at least 2, ordered by count descending.
SELECT category, COUNT(*) AS supplier_count FROM suppliers
WHERE rating >= 4.0 AND active = 'Yes'
GROUP BY category
HAVING supplier_count >= 2
ORDER BY supplier_count DESC