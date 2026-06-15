-- Q42. Find the highest salary among all teachers.
SELECT MAX(salary) AS max_salary_teachers FROM teachers

-- Q43. Find the lowest salary among all teachers.
SELECT MIN(salary) AS max_salary_teachers FROM teachers

-- Q44. Find the highest final_grade in the enrollments table.
SELECT MAX(final_grade) AS max_in_final_grade FROM enrollments

-- Q45. Find the lowest final_grade in the enrollments table.
SELECT MIN(final_grade) AS max_in_final_grade FROM enrollments

-- Q46. Find the most recent year_pub in the library.
SELECT MAX(year_pub) AS most_recent FROM library