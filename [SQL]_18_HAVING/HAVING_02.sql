-- Q91. Find departments in procedures where the total cost exceeds 100000.
SELECT SUM(cost) AS total_cost, department FROM procedures
GROUP BY department
HAVING SUM(cost) > 100000

-- Q92. Find branch groups in procedures where the count of procedures is more than 15.
SELECT COUNT(*) AS procedure_count, branch FROM procedures
GROUP BY branch
HAVING COUNT(*) > 15

-- Q93. Find supplier groups in medicines where the total stock exceeds 1500.
SELECT SUM(stock) AS total_stock, supplier FROM medicines
GROUP BY supplier
HAVING SUM(stock) > 1500

-- Q94. Find role groups in staff where the average salary exceeds 45000.
SELECT AVG(salary) AS avg_salary, role FROM staff
GROUP BY role
HAVING AVG(salary) > 45000

-- Q95. Find department groups in staff where the total salary exceeds 300000.
SELECT department, SUM(salary) AS total_salary FROM staff
GROUP BY department
HAVING SUM(salary) > 300000

