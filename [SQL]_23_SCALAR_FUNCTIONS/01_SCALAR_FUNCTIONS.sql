-- clean messy spaces and force upper case
SELECT emp_id, UPPER(TRIM(first_name)) AS clean_first_name,
UPPER(TRIM(last_name)) AS clean_last_name

-- combine names into one string
SELECT emp_id, UPPER(CONCAT(TRIM(first_name), ' ', TRIM(last_name)))
FROM sys.employees
