-- PART 11 — Challenge Queries
-- Topic: Putting it all together with a bit more complexity
-- 91. List all distinct subjects that have been graded below 2.0 .
SELECT DISTINCT subject FROM grades
WHERE grade > 2.0

-- 92. Find the top 5 oldest employees still in 'Contractual' employment.
SELECT * FROM employees
WHERE employment_type = 'Contractual'
ORDER BY years_of_service DESC
LIMIT 5

-- 93. Get students with a GPA above 3.7 who are NOT on scholarship, ordered by GPA
-- descending.
SELECT * FROM students
WHERE scholarship != 'Yes' AND gpa < 3.7
ORDER BY gpa DESC

-- 94. Find books published before 2010 with more than 4 copies available.
SELECT * FROM library_books
WHERE year_published < 2010 AND copies_available > 4

-- 95. List employees from 'Cebu' or 'Davao' whose salary is between 30000 and 55000 ,
ordered by salary.
SELECT * FROM employees
WHERE city = 'Cebu' OR city = 'Davao' AND salary BETWEEN 30000 AND 55000
ORDER BY salary DESC

-- 96. Get the 5 most recent grade entries (by grade_id ) for the subject 'Math 101'.
SELECT * FROM grades
WHERE subject = 'Math 101'
ORDER BY grade_id DESC
LIMIT 5

-- 97. Find distinct instructors who gave a grade above 3.5 .
SELECT DISTINCT instructor FROM grades
WHERE grade < 3.5

-- 98. Retrieve the 3 courses with the highest tuition_fee , ordered descending.
SELECT course_name, tuition_fee FROM courses
ORDER BY tuition_fee DESC
limit 3

-- 99. List the top 5 students with the highest GPA who are in either year_level 3 or 4.
SELECT * FROM students
WHERE year_level = 3 OR year_level = 4
ORDER BY gpa ASC
LIMIT 5

-- 100. Find all employees whose last name starts with a vowel (A, E, I, O, U), ordered by last
-- name.
SELECT * FROM employees
WHERE last_name LIKE 'A%' OR last_name LIKE 'E%'OR last_name LIKE 'I%' OR last_name LIKE 'O%'OR last_name LIKE 'U%'
ORDER BY last_name DESC