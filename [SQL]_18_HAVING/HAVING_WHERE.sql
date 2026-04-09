-- PART 9 — HAVING with WHERE
-- Filtering rows first, then filtering groups
-- 81. Among female students only, find which courses have an average GPA above 3.3 .
SELECT course, AVG(gpa) AS avg_gpa, gender FROM students
WHERE gender = 'Female'
GROUP BY course
HAVING AVG(gpa) > 3.3

-- 82. Among 'Regular' employees only, find departments where the average salary exceeds 50000 .
SELECT department, AVG(salary) AS more_than_50000 FROM employees
WHERE employment_type = 'Regular'
GROUP BY department
HAVING AVG(salary) > 50000

-- 83. Among grades in '1st Sem 2023-2024' only, find subjects with an average grade below 2.5 .
SELECT subject, AVG(grade) as below_2_5 FROM grades
WHERE semester = '1st Sem 2023-2024'
GROUP BY subject
HAVING AVG(grade) < 2.5

-- 84. Among students from 'Manila' only, find courses with more than 2 students enrolled.
SELECT course, COUNT(*) as more_than_2_enrolled FROM students
WHERE city = 'Manila'
GROUP BY course
HAVING COUNT(*) > 2

-- 85. Among 'Computer Science' books only, count genres — then find genres with more
than 3 copies available in total.
(Hint: WHERE genre = ‘Computer Science’, GROUP BY genre)
SELECT SUM(copies_available) as genre_more_than_3 FROM library_books
WHERE genre = 'Computer Science'
HAVING SUM(copies_available) > 