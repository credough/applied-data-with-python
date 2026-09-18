-- date & time functions
SELECT first_name, hire_date,
TIMESTAMPDIFF(YEAR,hire_date, CURRENT_DATE) AS years_working,
DATEDIFF(CURRENT_DATE, hire_date) AS days_working,
MONTH(hire_date) AS month_hired,
DAY(hire_date) AS day_hired 
FROM students_data