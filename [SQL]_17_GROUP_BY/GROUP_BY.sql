-- PART 6 — GROUP BY (Single Column)
-- Aggregating data per group
-- 46. Count how many students are enrolled per course .
SELECT COUNT(*), course FROM students
GROUP BY course

-- 47. Find the average GPA per course .
SELECT course, AVG(gpa) FROM students
GROUP BY course

-- 48. Count the number of employees per department .
SELECT department, COUNT(*) AS number_of_employees FROM employees
GROUP BY department

-- 49. Get the average salary per department .
SELECT AVG(salary) as avg_salary, department FROM employees
GROUP BY department

-- 50. Count students per city .
SELECT COUNT(*) as num_of_students, city FROM students
GROUP BY city

-- 51. Find the average grade per subject in the grades table.
SELECT AVG(grade) as avg_grade, subject FROM grades
GROUP BY subject

-- 52. Count how many books exist per genre .
SELECT COUNT(*) as num_books, genre FROM library_books
GROUP BY genre

-- 53. Get the total salary paid per department .
SELECT SUM(salary) as total_salary_paid, department FROM employees
GROUP BY department

-- 54. Find the highest GPA in each course .
SELECT MIN(gpa) as highest_gpa, course FROM students
GROUP BY course

-- 55. Count how many employees are in each city .
SELECT COUNT(*) as num_of_employees, city FROM employees
GROUP BY city

-- 56. Get the average copies_available per genre in library_books .
SELECT AVG(copies_available) as avg_copies_available, genre FROM library_books
GROUP BY genre

-- 57. Count how many grade records exist per semester .
SELECT COUNT(grade) as num_of_grade, semester FROM grades
GROUP BY semester

-- 58. Find the average salary per employment_type .
SELECT AVG(salary) as avg_salary, employment_type FROM employees
GROUP BY employment_type

-- 59. Count how many students are in each year_level .
SELECT COUNT(student_id) as num_of_student, year_level FROM students
GROUP BY year_level

-- 60. Get the minimum and maximum grade per instructor in the grades table.
SELECT MIN(grade) as max_grade, MAX(grade) as min_grade, instructor FROM grades
GROUP BY instructor