-- Q37. Get the average final_grade of students with status 'Passed'.
SELECT ROUND(AVG(final_grade),2) AS avg_grade_passed FROM enrollments
WHERE status = 'Passed'

-- Q38. Get the average final_grade for the 'BSCS' course.
SELECT ROUND(AVG(final_grade),2) AS avg_grade_BSCS FROM enrollments
WHERE course = 'BSCS'

-- Q39. Get the average years_exp of all teachers.
SELECT AVG(years_exp) AS avg_years_exp_teachers FROM teachers

-- Q40. Get the average budget of events that happened in 2024.
SELECT AVG(budget) AS events_budget_2024 FROM events
WHERE year = 2024

-- Q41. Get the average copies of books in the 'Humanities' category.
SELECT ROUND(AVG(copies), 2) AS avg_copies_humanities FROM library
WHERE category = 'Humanities'