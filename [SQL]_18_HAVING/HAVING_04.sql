-- Q99. Among procedures costing more than 5000 only — find departments with more than 3 such procedures, ordered by count descending.
SELECT department, COUNT(*) AS procedure_count FROM procedures
WHERE cost > 5000
GROUP BY department
HAVING COUNT(*) > 3
ORDER BY COUNT(*) DESC

-- Q100. Among doctors with more than 10 years of experience — find the top 3 departments by average salary, ordered by average salary descending, limited to 3.
SELECT department, ROUND(AVG(salary),2) AS avg_salary FROM doctors
WHERE years_exp > 10
GROUP BY department
ORDER BY avg_salary
LIMIT 3