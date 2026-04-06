-- PART 8 — ORDER BY
-- Topic: Sorting results
-- 61. List all students ordered by last_name alphabetically (A–Z).
SELECT * FROM students
ORDER BY last_name ASC

-- 62. Get all employees ordered by salary from highest to lowest.
SELECT * FROM employees
ORDER BY salary DESC

-- 63. Retrieve students ordered by gpa from lowest to highest.
SELECT * FROM students
ORDER BY gpa ASC

-- 64. List books ordered by year_published from newest to oldest.
SELECT * FROM library_books
ORDER BY year_published DESC

-- 65. Get grades ordered by grade from highest to lowest.
SELECT * FROM grades
ORDER BY grade ASC

-- 66. List students ordered by age ascending.
SELECT * FROM students
ORDER BY age ASC

-- 67. Get employees ordered by years_of_service descending.
SELECT * FROM employees
ORDER BY years_of_service DESC

-- 68. Retrieve books ordered by title alphabetically.
SELECT * FROM library_books
ORDER BY title DESC

-- 69. List students ordered by year_level ascending, then gpa descending.
SELECT * FROM students
ORDER BY year_level ASC ,gpa DESC

-- 70. Get employees ordered by department alphabetically, then by salary descending.
SELECT * FROM employees
ORDER BY department ASC, salary DESC