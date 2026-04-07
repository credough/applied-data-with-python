-- PART 2 — SUM
-- Adding up numeric columns
-- 11. Get the total salary paid to all employees.
SELECT SUM(salary) FROM employees

-- 12. Find the total number of copies_available across all books in the library.
SELECT SUM(copies_available) FROM library_books

-- 13. Get the total tuition_fee across all courses.
SELECT SUM(tuition_fee) FROM courses

-- 14. Find the total available_slots across all courses.
SELECT SUM(available_slots) FROM courses

-- 15. Get the total units required across all courses.
SELECT SUM(units) FROM courses

-- 16. Find the total salary of all employees in the 'Academic' department.
SELECT SUM(salary) FROM employees
WHERE department = 'Academic'

-- 17. Get the total salary of 'Regular' employees only.
SELECT SUM(salary) FROM employees
WHERE employment_type = 'Regular'

-- 18. Find the total copies_available for books in the 'Computer Science' genre.
SELECT SUM(copies_available) FROM library_books
WHERE genre = 'Computer Science'

-- 19. Get the total salary of employees based in 'Manila' .
SELECT SUM(salary) FROM employees
WHERE city = 'Manila'

-- 20. Find the combined years_of_service of all employees in the 'IT' department.
SELECT SUM(years_of_service) FROM employees
WHERE department = 'IT'