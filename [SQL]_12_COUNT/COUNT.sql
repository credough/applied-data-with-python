-- PART 1 — COUNT
-- Counting rows and non-null values
-- 1. Count the total number of students in the students table.
SELECT COUNT(*) FROM students

-- 2. Count how many employees are in the employees table.
SELECT COUNT(*) FROM employees

-- 3. Count the total number of grade records in grades .
SELECT COUNT(*) FROM grades

-- 4. Count how many students have a scholarship ( scholarship = 'Yes' ).
SELECT COUNT(*) FROM students
WHERE scholarship = 'Yes'

-- 5. Count how many employees are 'Contractual' .
SELECT COUNT(*) FROM employees
WHERE employment_type = 'Contractual'

-- 6. Count how many books are in the library_books table.
SELECT COUNT(*) FROM library_books

-- 7. Count how many students are from 'Manila' .
SELECT COUNT(*) FROM students
WHERE city = 'Manila'

-- 8. Count how many grade entries have a grade below 2.0 .
SELECT COUNT(*) FROM grades
WHERE grade < 2.0

-- 9. Count how many employees earn more than 50000 .
SELECT COUNT(*) FROM employees
WHERE salary > 50000

-- 10. Count how many books were published after 2015 .
SELECT COUNT(*) FROM library_books
WHERE year_published > 2015