-- Q78. Count students grouped by course AND gender.
SELECT COUNT(*) as student_count, course, gender FROM students
GROUP BY course, gender;

-- Q79. Get the average GPA grouped by year_level AND gender.
SELECT AVG(gpa) AS avg_gpa, year_level, gender FROM students
GROUP BY year_level, gender

-- Q80. Count employees grouped by department AND employment_type.
SELECT COUNT(*) as employee_num, department, employment_type FROM employees
GROUP BY department, employment_type

-- Q81. Get the average salary grouped by department AND city.
SELECT AVG(salary) as avg_salary, department, city FROM employees
GROUP BY department, city

-- Q82. Count students grouped by city AND scholarship.
SELECT COUNT(*) as student_count, city, scholarship FROM students
GROUP BY city, scholarship

-- Q83. Get the average grade per subject AND semester.
SELECT ROUND(AVG(grade), 2) AS avg_grade, subject, semester FROM grades
GROUP BY subject, semester

-- Q84. Count grade records per instructor AND semester.
SELECT COUNT(*) AS num_of_grade_records, instructor, semester FROM grades
GROUP BY instructor, semester

-- Q85. Get the min and max salary per department AND employment_type.
SELECT MIN(salary) as min_salary, MAX(salary) as max_salary, department, employment_type FROM employees
GROUP BY department, employment_type