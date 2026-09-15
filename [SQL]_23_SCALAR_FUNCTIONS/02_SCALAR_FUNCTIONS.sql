SELECT first_name, salary, ROUND(salary, 0) AS rounded_salary, ROUND(salary, -3) AS thousands_salary
FROM employees