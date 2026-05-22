-- Q96. Among 'Female' students only — find which courses have an average GPA above 3.2.
SELECT course, AVG(gpa) AS avg_gpa FROM students
WHERE gender = 'Female'
GROUP BY course
HAVING AVG(gpa) > 3.2

-- Q97. Among 'Regular' employees only — find departments where the average salary exceeds 50000.
SELECT department, AVG(salary) as avg_salary FROM employees
WHERE employment_type = 'Regular'
GROUP BY department
HAVING AVG(salary) > 50000

-- Q98. Among grades in '1st Sem 2023-2024' only — find subjects with an average grade below 2.5.
SELECT subject, AVG(grade) AS avg_grade FROM grades
WHERE semester = '1st Sem 2023-2024'
GROUP BY subject
HAVING AVG(grade) < 2.5

-- Q99. Among students from 'Manila' only — find which courses have more than 2 students enrolled.
SELECT course, COUNT(*) AS students_enrolled FROM students
WHERE city = 'Manila'
GROUP BY course
HAVING COUNT(*) > 2

-- Q100. Among 'Regular' employees only — find departments where the total salary exceeds 100000, ordered by total salary descending.
SELECT department, SUM(salary) AS total_salary FROM employees
WHERE employment_type = 'Regular'
GROUP BY department
HAVING SUM(salary) > 100000
ORDER BY salary DESC