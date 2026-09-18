-- string functions
SELECT UPPER(last_name) AS upper_last,
LOWER(first_name) AS lower_first,
CONCAT(first_name, ' ', last_name) AS full_name_concat,
CONCAT_WS(' ', first_name, last_name) AS full_name_concat_ws,
SUBSTRING(dept_code, 1, 2) AS dept_prefix
FROM students_data