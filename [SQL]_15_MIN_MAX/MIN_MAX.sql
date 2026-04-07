-- PART 4 — MIN and MAX
-- Finding extremes
-- 31. Find the highest GPA among all students.
SELECT last_name, MAX(gpa) FROM students

-- 32. Find the lowest GPA among all students.
SELECT MIN(gpa), last_name AS lowest_gpa FROM students

-- 33. Get the highest salary in the employees table.
SELECT MAX(salary), last_name AS highest_salary FROM employees

-- 34. Get the lowest salary in the employees table.
SELECT MIN(salary), last_name FROM employees

-- 35. Find the most recently published book ( MAX of year_published ).
SELECT MAX(year_published), title AS most_recent_release_book FROM library_books

-- 36. Find the oldest book ( MIN of year_published ).
SELECT MIN(year_published) AS oldest_book FROM library_books

-- 37. Get the highest grade recorded in grades .
SELECT MAX(grade) AS highest_grade, student_id FROM grades

-- 38. Get the lowest grade recorded in grades .
SELECT MAX(grade) AS lowest_grade FROM grades

-- 39. Find the most expensive course ( MAX of tuition_fee ).
SELECT MAX(tuition_fee) as most_expensive_course, course_name FROM courses

-- 40. Find the maximum years_of_service among all employees.
SELECT MAX(years_of_service) AS longest_in_the_company, last_name FROM employees