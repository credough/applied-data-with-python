-- Q1. Count the total number of rows in the students table.
SELECT COUNT(*) AS num_student FROM students

-- Q2. Count the total number of rows in the employees table.
SELECT COUNT(*) as num_employees FROM employees

-- Q3. Count the total number of rows in the grades table.
SELECT COUNT(*) AS grades_num FROM grades

-- Q4. Count the total number of rows in the library_books table.
SELECT COUNT(*) AS library_rows FROM library_books

-- Q5. Count how many students are on scholarship (scholarship = 'Yes').
SELECT COUNT(*) AS rows_scholarship FROM students
WHERE scholarship = 'Yes'

-- Q6. Count how many students are NOT on scholarship.
SELECT COUNT(*) AS rows_scholarship FROM students
WHERE scholarship = 'No'

-- Q7. Count how many employees are 'Regular'.
SELECT COUNT(*) AS num_regular FROM employees
WHERE employment_type = 'Regular'

-- Q8. Count how many employees are 'Contractual'.
SELECT count(*) as contractual_num FROM employees
WHERE employment_type = 'Contractual'

-- Q9. Count how many students are from 'Manila'.
SELECT COUNT(*) as students_manila FROM students
WHERE city = 'Manila'

-- Q10. Count how many grade records have a grade below 2.0.
SELECT COUNT(*) as below_2_5 FROM grades
WHERE grade > 2.5
