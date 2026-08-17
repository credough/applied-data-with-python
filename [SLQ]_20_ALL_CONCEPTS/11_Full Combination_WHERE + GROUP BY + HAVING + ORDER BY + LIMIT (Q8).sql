-- Q98. Among employees with more than 5 years of experience — find the top 3 departments by average salary, ordered by average salary descending.
SELECT department, AVG(salary) AS avg_salary FROM employees
WHERE years_exp > 5
GROUP BY department
ORDER BY avg_salary DESC
limit 3