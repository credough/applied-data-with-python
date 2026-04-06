-- PART 7 — WHERE with IN and BETWEEN
-- Topic: Filtering against a list or range
-- 56. Get students whose course is in ('BSCS', 'BSIT', 'BSEE') .
SELECT * FROM students
WHERE course IN ('BSCS', 'BSIT', 'BSEE')

-- 57. Find employees in departments 'Finance' or 'HR' using IN .
SELECT * FROM employees
WHERE department IN ('Finance','HR')

-- 58. Retrieve students in year levels 2, 3, or 4 using IN .
SELECT * FROM students
WHERE year_level IN (2,3,4)

-- 59. Get books with copies_available between 3 and 7 (inclusive).
SELECT * FROM library_books
WHERE copies_available BETWEEN 3 AND 7

-- 60. Find employees with years_of_service between 5 and 10 .
SELECT * FROM employees
WHERE years_of_service BETWEEN 5 AND 10