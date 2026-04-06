-- PART 5 — WHERE with Comparison Operators
-- Topic: Using =, !=, <, >, <=, >=
-- 46. Find students with a gpa between 3.0 and 3.5 (inclusive on both ends using >= and <= ).
SELECT * FROM students
WHERE gpa >= 3.0 AND gpa <= 3.5

-- 47. Get employees earning at least 45000 but not more than 60000 .
SELECT * FROM employees
WHERE salary >= 45000 AND salary <= 60000

-- 48. Retrieve students older than 21 .
SELECT * FROM students
WHERE age > 21

-- 49. Find books published between 2010 and 2020 (inclusive).
SELECT * FROM library_books
WHERE year_published >= 2010 AND year_published <= 2020 

-- 50. Get employees with exactly 5 years of service.
SELECT * FROM employees
WHERE years_of_service = 5