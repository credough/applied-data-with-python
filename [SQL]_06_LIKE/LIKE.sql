-- PART 6 — WHERE with LIKE (Pattern Matching)
-- Topic: Searching with partial text
-- 51. Find students whose last_name starts with the letter 'S' .
SELECT * FROM students
WHERE last_name LIKE 'S%'

-- 52. Get books whose title contains the word 'Science' .
SELECT * FROM library_books
WHERE title LIKE '%Science%'

-- 53. Find employees whose first_name ends with 'o' .
select * from employees
where first_name like '%o'

-- 54. Retrieve books where the author contains 'et al' .
SELECT * FROM library_books
WHERE author LIKE '%et al%'

-- 55. Find students whose first_name starts with 'M' .
SELECT * FROM students
WHERE first_name LIKE 'M%'