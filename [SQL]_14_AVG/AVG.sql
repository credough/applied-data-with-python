-- PART 3 — AVG
-- Finding averages
-- 21. Get the average GPA of all students.
SELECT AVG(gpa) FROM students

-- 22. Find the average salary of all employees.
SELECT AVG(salary) FROM employees

-- 23. Get the average grade across all entries in the grades table.
SELECT AVG(grade) FROM grades

-- 24. Find the average tuition_fee across all courses.
SELECT 	AVG(tuition_fee) FROM courses

-- 25. Get the average copies_available per book.
SELECT AVG(copies_available) as avg_copies FROM library_books

-- 26. Find the average salary of employees in the 'Finance' department.
SELECT AVG(salary) AS avg_salary_finance FROM employees
WHERE department = 'Finance'

-- 27. Get the average GPA of students on scholarship.
SELECT AVG(gpa) as avg_gpa_isko FROM students
WHERE scholarship = 'Yes'

-- 28. Find the average GPA of female students.
SELECT AVG(gpa) as avg_female_gpa FROM students
WHERE gender = 'Female'

-- 29. Get the average salary of 'Contractual' employees.
SELECT AVG(salary) AS contractual_salary FROM employees
WHERE employment_type = 'Contractual'

-- 30. Find the average years_of_service of 'Regular' employees.
SELECT AVG(years_of_service) AS avg_yrs_regular FROM employees
WHERE employment_type = 'Regular'