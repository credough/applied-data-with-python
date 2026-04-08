-- PART 5 — Combining Aggregates
-- Using multiple aggregate functions in one query
-- 41. Get the total, average, highest, and lowest salary of all employees in one query.
SELECT SUM(salary) as total_salary, AVG(salary) as avg_salary, MAX(salary) as highest_salary, MIN(salary) as lowest_salary 
FROM employees 

-- 42. Find the count, average, min, and max GPA of all students.
SELECT COUNT(gpa), AVG(gpa), MIN(gpa), MAX(gpa) FROM students

-- 43. Get the total, average, and max copies_available from library_books .
SELECT SUM(copies_available), AVG(copies_available), MAX(copies_available)
FROM library_books

-- 44. Find the count, min, max, and average grade from the grades table.
SELECT COUNT(grade), MIN(grade), MAX(grade) FROM grades

-- 45. Get the total and average tuition_fee , and the number of courses available.
SELECT SUM(tuition_fee), AVG(tuition_fee), COUNT(course_name) FROM courses
