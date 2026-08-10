-- Q86. Find role groups in employees where the count is more than 7.
SELECT role, COUNT(*) AS emp_count FROM employees
GROUP BY role
HAVING emp_count > 7

-- Q87. Find category groups in suppliers where the count is at least 3.
SELECT category, COUNT(*) AS supplier_cnt FROM suppliers
GROUP BY category
HAVING supplier_cnt >= 3

-- Q88. Find branch groups in sales where the average total_amount per sale exceeds 140000.
SELECT branch, ROUND(AVG(total_amount),2) AS avg_total_amount FROM sales
GROUP BY branch 
HAVING avg_total_amount > 140000