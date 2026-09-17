-- map categories using conditional logic
SELECT UPPER(TRIM(first_name)) AS first_name, salary, CASE
WHEN salary >= 80000 THEN 'High'
WHEN salary >= 60000 THEN 'Mid'
ELSE 'Entry'
END AS salary_tier
FROM employees;