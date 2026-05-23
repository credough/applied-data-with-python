-- Q29. Get the average GPA of all students.
SELECT ROUND(AVG(gpa),2) as avg_all_std FROM students

-- Q30. Get the average salary of all employees.
SELECT AVG(salary) AS avg_salary FROM employees

-- Q31. Get the average grade across all records in the grades table.
SELECT ROUND(AVG(grade), 2) AS avg_grade FROM grades

-- Q32. Get the average tuition_fee across all courses.
SELECT AVG(tuition_fee) as avg_tuition FROM courses

-- Q33. Get the average copies_available per book in the library.
SELECT AVG(copies_available) as avg_copies FROM library_books

-- Q34. Get the average salary of employees in the 'Finance' department.
SELECT ROUND(AVG(salary),2)A AS avg_salary FROM employees
WHERE department = 'Finance'

-- Q35. Get the average GPA of students who are on scholarship.
SELECT ROUND(AVG(gpa),2) AS avg_gpa FROM students
WHERE scholarship = 'Yes'