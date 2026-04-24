-- Q42. Find the highest GPA among all students.
SELECT MAX(gpa) AS highest_gpa_student, last_name FROM students

-- Q43. Find the lowest GPA among all students.
SELECT MIN(gpa) AS least_gpa_student, last_name FROM students

-- Q44. Find the highest salary in the employees table.
SELECT MAX(salary) AS highest_emp_salary, last_name FROM employees

-- Q45. Find the lowest salary in the employees table.
SELECT MIN(salary) AS lowest_emp_salary, last_name FROM employees

-- Q46. Find the year of the most recently published book.
SELECT MAX(year_published) AS latest_book_published, title FROM library_books