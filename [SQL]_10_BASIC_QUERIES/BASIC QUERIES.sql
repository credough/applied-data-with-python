-- PART 10 — Combining Everything
-- Topic: Mixed queries using SELECT, WHERE, ORDER BY, LIMIT, DISTINCT
-- 81. Get the distinct cities where 'Regular' employees live.
SELECT DISTINCT city FROM employees
WHERE employment_type = 'Regular'

-- 82. Find the top 5 students from 'Manila' ordered by GPA descending.
SELECT * FROM students
WHERE city = 'Manila'
ORDER BY gpa ASC
LIMIT 5

-- 83. List the 3 most recently published 'Computer Science' books.
SELECT * FROM library_books
WHERE genre = 'Computer Science'
ORDER BY year_published DESC
LIMIT 3

-- 84. Get the names and salaries of the top 5 highest-paid employees NOT in the
-- 'Academic' department.
SELECT first_name, last_name, salary FROM employees
WHERE department != 'Academic'
ORDER BY salary DESC
LIMIT 5

-- 85. Find distinct courses taken by female students only.
SELECT DISTINCT course, gender FROM students
WHERE gender = 'Female'

-- 86. Get the 5 youngest male students, ordered by age ascending.
SELECT * FROM students
WHERE gender = 'Male'
ORDER BY age ASC
LIMIT 5

-- 87. Retrieve grades below 2.5 for '1st Sem 2023-2024' , ordered by grade ascending.
SELECT * FROM grades
WHERE grade > 2.5 AND semester = '1st Sem 2023-2024'
ORDER BY grade ASC

-- 88. List students on scholarship from 'Davao' ordered by last name.
SELECT * FROM students
WHERE scholarship = 'Yes' AND city = 'Davao'
ORDER BY last_name DESC

-- 89. Get the top 3 books with the most copies available, in the 'Programming' genre.
SELECT * FROM library_books
WHERE genre = 'Programming'
ORDER BY copies_available DESC
LIMIT 3

-- 90. Find employees in 'Manila' with salary above 40000 , ordered by salary descending,
limited to 5.
SELECT * FROM emplOyees
WHERE city = 'Manila' AND salary > 40000
ORDER BY salary DESC
LIMIT 5