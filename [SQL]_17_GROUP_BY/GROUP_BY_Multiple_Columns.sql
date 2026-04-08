-- PART 7 — GROUP BY (Multiple Columns)
-- Grouping by more than one column
-- 61. Count students grouped by course AND gender .
SELECT course, gender, COUNT (*) AS total_students
FROM students
GROUP BY gender, course

-- 62. Find the average GPA grouped by year_level and gender .
SELECT AVG(gpa) as average_gpa, year_level, gender FROM students
GROUP BY year_level, gender

-- 63. Count employees grouped by department and employment_type .
SELECT department, employment_type, COUNT(*) as num_employees FROM employees
GROUP BY department, employment_type

-- 64. Get the average grade per subject and semester .
SELECT subject, semester, AVG(grade) AS avg_grade FROM grades
GROUP BY subject, semester

-- 65. Count students grouped by city and scholarship status.
SELECT city, scholarship, COUNT(*) AS num_students FROM students
GROUP BY city, scholarship

-- 66. Find the total salary per department and city .
SELECT department, city, SUM(salary) as total_salary FROM employees
GROUP BY salary, department

-- 67. Count the number of books per genre and shelf_location prefix
(Hint: just GROUP BY genre and shelf_location — observe what you get).
SELECT genre, shelf_location, COUNT(*) as num_books FROM library_books
GROUP BY genre, shelf_location

-- 68. Get the average GPA per course and city .
SELECT city, course, AVG(gpa) as avg_gpa FROM students
GROUP BY city, course

-- 69. Find the min and max salary per department and employment_type .
SELECT department, employment_type, MAX(salary) as max_salary, MIN(salary) as min_salary FROM employees
GROUP BY department, employment_type

-- 70. Count grade records per instructor and semester .
SELECT instructor, semester, COUNT(grade) as num_of_grade_records FROM grades
GROUP BY semester, instructor