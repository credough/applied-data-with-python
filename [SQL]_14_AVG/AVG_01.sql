-- Q29. Get the average GPA of all students.
SELECT AVG(gpa) as avg_gpa_all_students FROM students

--Q30. Get the average salary of all employees.
SELECT AVG(salary) AS average_salary_all_emp FROM employees

--Q31. Get the average grade across all records in the grades table.
SELECT AVG(grade) AS all_grades_avg FROM grades

--Q32. Get the average tuition_fee across all courses.
SELECT AVG(tuition_fee) as avg_tuition_all_grades FROM courses

--Q33. Get the average copies_available per book in the library.
SELECT AVG(copies_available) as avg_copies_available FROM library_books

--Q34. Get the average salary of employees in the 'Finance' department.
SELECT ROUND(AVG(salary), 3) AS avg_finance_salary FROM employees
WHERE department = 'Finance'

--Q35. Get the average GPA of students who are on scholarship.
SELECT ROUND(AVG(gpa),2) AS avg_gpa_students_on_scholarship FROM students
WHERE scholarship = 'Yes'

--Q36. Get the average GPA of female students.
SELECT ROUND(AVG(gpa), 2) AS avg_gpa_female FROM students
WHERE gender = 'Female'

--Q37. Get the average GPA of male students.
SELECT ROUND(AVG(gpa), 2) AS avg_gpa_male FROM students
WHERE gender =  'Male'

--Q38. Get the average salary of 'Contractual' employees.
SELECT AVG(salary) AS avg_salary_contractual FROM employees
WHERE employment_type = 'Contractual'

--Q39. Get the average salary of 'Regular' employees.
SELECT AVG(salary) AS regular_avg_salary FROM employees
WHERE employment_type = 'Regular'

--Q40. Get the average grade for the subject 'Math 101'.
SELECT ROUND(AVG(grade),2) as avg_math101_grade FROM grades
WHERE subject = 'Math 101'

--Q41. Get the average years_of_service of all employees in the 'Operations' department.
SELECT AVG(years_of_service) AS op_dept FROM employees
WHERE department = 'Operations'