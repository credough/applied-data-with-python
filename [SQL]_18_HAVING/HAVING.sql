-- PART 8 — HAVING
-- Filtering groups after aggregation
-- 71. Find courses where the number of enrolled students is greater than 5 .
-- (Hint: GROUP BY course, then HAVING COUNT(*) > 5)
SELECT course, COUNT(*) as students_count FROM students
GROUP BY course
HAVING COUNT(*) > 5

-- 72. Get departments where the average salary exceeds 45000 .
SELECT department, AVG(salary) as avg_salary_exceeds_45k FROM employees
GROUP BY department
HAVING AVG(salary) > 45000

-- 73. Find subjects where the average grade is below 2.5 .
SELECT subject, AVG(grade) as below_2_5 FROM grades
GROUP BY subject
HAVING AVG (grade) > 2.5

-- 74. List cities where more than 5 students live.
SELECT city, COUNT(*) FROM students
GROUP BY city
HAVING COUNT(*) > 5

-- 75. Find genres in library_books with total copies_available greater than 10 .
SELECT genre, SUM(copies_available) as greater_10 FROM library_books
GROUP BY genre
HAVING SUM(copies_available) > 10

-- 76. Get departments where the total salary exceeds 100000 .
SELECT department, SUM(salary) AS more_than_100000 FROM employees
GROUP BY department
HAVING SUM(salary) > 100000

-- 77. Find instructors who have graded more than 25 students.
SELECT instructor, COUNT(*) AS total_graded FROM grades
GROUP BY instructor
HAVING COUNT(*) > 25

-- 78. List courses where the average GPA is above 3.2 .
SELECT course, AVG(gpa) as above_3_2 FROM students
GROUP BY course
HAVING AVG(gpa) < 3.2

-- 79. Find year levels where the student count is at least 7 .
SELECT year_level, COUNT(*) as at_least_7 FROM students
GROUP BY year_level
HAVING COUNT(*) >= 7 

-- 80. Get employment types where the average salary is below 40000 .
SELECT employment_type, AVG(salary) as below_40000 FROM employees
GROUP BY employment_type
HAVING AVG(salary) < 40000