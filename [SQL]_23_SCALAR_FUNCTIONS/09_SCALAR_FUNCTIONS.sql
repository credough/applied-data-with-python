-- null handling functions
SELECT first_name, COALESCE(dept_code, 'Unassigned') AS department, stipend,
IFNULL(stipend, 0.00) AS clean_stipend
FROM students_data