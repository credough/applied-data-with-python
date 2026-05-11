-- Q86. Find courses where the number of enrolled students is greater than 6.
SELECT course, COUNT(*) AS student_enrolled FROM students
GROUP BY course
HAVING COUNT(*) > 6

-- Q87. Find departments where the average salary exceeds 45000.
SELECT department, AVG(salary) as avg_salary FROM employees
GROUP BY department
HAVING AVG(salary) > 45000

-- Q88. Find subjects where the average grade is below 2.5.
SELECT subject, ROUND(AVG(grade), 2) as avg_grade FROM grades
GROUP BY subject
HAVING ROUND(AVG(grade), 2) > 2.5

-- Q89. Find cities where more than 6 students live.
SELECT city, COUNT(*) as std_count FROM students
GROUP BY city
HAVING COUNT(*) > 6

