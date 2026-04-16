-- Q11. Count how many books were published after 2015.
SELECT COUNT(*) as num_books_after2015 FROM library_books
WHERE year_published > 2015

-- Q12. Count how many employees earn more than 50000.
SELECT COUNT(*) as more_than_50000 FROM employees
WHERE salary > 50000

-- Q13. Count how many students have a GPA of 3.5 or higher.
SELECT COUNT(*) AS gpa_higher_3_5 FROM students
WHERE gpa >= 3.5

-- Q14. Count how many grade records belong to '1st Sem 2023-2024'.
SELECT COUNT(*) AS grades_in_1st_Sem_2023_2024 FROM grades
WHERE semester = '1st Sem 2023-2024'

-- Q15. Count how many male students are enrolled in 'BSCS'.
SELECT COUNT(*) male_bscs FROM students
WHERE gender = 'Male' AND course = 'BSCS'
