-- extract date components and calculate tenure
SELECT UPPER(TRIM(first_name)) AS first_name, hire_date, 
EXTRACT(YEAR FROM hire_date) AS hire_year,
EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM hire_date) AS years_at_company
FROM employees