-- PART 1 — SELECT (Basic Retrieval)
-- Topic: Selecting columns, all rows, aliases
-- 1. Retrieve all columns from the students table.
SELECT * FROM students

-- 2. Get only the first_name and last_name of all students.
SELECT first_name, last_name FROM students

-- 3. Select the title and author of every book in library_books .
SELECT title, author FROM library_books

-- 4. Retrieve first_name , last_name , and salary from employees .
SELECT first_name, last_name, salary FROM employees

-- 5. Get the course_name and tuition_fee from the courses table.
SELECT course_name, tuition_fee FROM courses

-- 6. Select all columns from the grades table.
SELECT * FROM grades

-- 7. Retrieve student_id , subject , and grade from grades .
SELECT student_id,subject, grade FROM grades

-- 8. Get first_name , city , and gpa from students .
SELECT first_name, city, gpa FROM students

-- 9. Select position and department from employees .
SELECT position, department FROM employees

-- 10. Retrieve title , genre , and year_published from library_books .
SELECT title, genre, year_published FROM library_books