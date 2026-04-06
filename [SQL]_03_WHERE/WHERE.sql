-- PART 3 — WHERE (Basic Filtering)
-- Topic: Filtering rows with conditions
-- 21. Get all students whose course is 'BSCS' .
SELECT * FROM students
WHERE course = 'BSCS'

-- 22. Find all employees in the 'IT' department.
SELECT * FROM employees
WHERE department = 'IT'

-- 23. Retrieve students with a gpa greater than 3.5 .
SELECT * FROM students
WHERE gpa > 3.5

-- 24. Get all books published after the year 2015.
SELECT * FROM library_books
WHERE year_published > 2015

-- 25. Find employees with a salary greater than 50000 .
SELECT * FROM employees
WHERE salary > 50000

-- 26. Retrieve students who are on scholarship ( scholarship = 'Yes' ).
SELECT * FROM students
WHERE scholarship = 'Yes'

-- 27. Get all grades where the grade is less than 2.0 .
SELECT * FROM grades
WHERE grade < 2.0

-- 28. Find all students from 'Manila' .
SELECT * FROM students
WHERE city = 'Manila'

-- 29. Retrieve employees who are 'Regular' employees.
SELECT * FROM employees
WHERE employment_type = 'Regular'

-- 30. Get all books with more than 5 copies available.
SELECT * FROM library_books
WHERE copies_available > 5

-- 31. Find students in year_level 1.
SELECT * FROM students
WHERE year_level = 1

-- 32. Retrieve all employees with more than 10 years of service.
SELECT * FROM employees
WHERE years_of_service > 10

-- 33. Get students whose age is exactly 20 .
SELECT * FROM students
WHERE age = 20

-- 34. Find books with copies_available equal to 0 (no copies).
SELECT * FROM library_books
WHERE copies_available = 0
(Hint: check which books have the fewest copies)

-- 35. Retrieve grades recorded under 'Prof. Santos' .
SELECT * FROM grades
WHERE instructor = 'Prof. Santos'