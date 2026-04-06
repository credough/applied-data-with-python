-- PART 9 — LIMIT
-- Topic: Restricting the number of rows returned
-- 71. Get the first 5 students from the students table.
SELECT * FROM students
LIMIT 5

-- 72. Retrieve the top 3 highest-paid employees.
SELECT * from employees AS top_3_highest_paid
ORDER BY salary DESC
LIMIT 3

-- 73. Get the 5 most recently published books.
SELECT * FROM library_books 
ORDER BY year_published DESC
LIMIT 5

-- 74. Find the top 10 highest grades in the grades table.
SELECT * FROM grades
ORDER BY grade ASC
LIMIT 10

-- 75. Retrieve any 3 employees from the 'Academic' department.
SELECT * FROM employees
WHERE department = 'Academic'
LIMIT 3

-- 76. Get the 5 students with the highest GPA.
SELECT * FROM students
ORDER BY gpa ASC
LIMIT 5

-- 77. Find the 3 cheapest courses by tuition_fee .
SELECT * FROM courses
ORDER BY tuition_fee ASC
LIMIT 3

-- 78. Get the bottom 5 students by GPA (lowest GPA first).
SELECT * FROM students
ORDER BY gpa DESC
LIMIT 5

-- 79. Retrieve the 3 books with the fewest copies_available .
SELECT * FROM library_books
ORDER BY copies_available ASC
LIMIT 3

-- 80. Get the first 7 grade records for student_id = 1 .
SELECT * FROM grades
WHERE student_id = 1
ORDER BY grade ASC
LIMIT 7