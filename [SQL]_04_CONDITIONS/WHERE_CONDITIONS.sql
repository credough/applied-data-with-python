-- PART 4 — WHERE with Multiple Conditions (AND / OR / NOT)
-- Topic: Combining filter conditions
-- 36. Get female students enrolled in 'BSCS' .
SELECT * FROM students
WHERE gender = 'Female' AND course = 'BSCS'

-- 37. Find employees in 'IT' department AND with salary above 40000 .
SELECT * FROM employees
WHERE department = 'IT' AND salary > 40000

-- 38. Retrieve students from 'Manila' OR 'Cebu' .
SELECT * FROM students
WHERE city = 'Manila' OR city = 'Cebu'

-- 39. Get students who are on scholarship AND have a gpa above 3.5 .
SELECT * FROM students
WHERE scholarship = 'Yes' AND gpa > 3.5

-- 40. Find employees who are 'Contractual' OR earn less than 30000 .
SELECT * FROM employees
WHERE employment_type = 'Contractual' OR salary < 30000

-- 41. Retrieve books in the 'Computer Science' genre published after 2010 .
SELECT * FROM library_books
WHERE genre = 'Computer Science' AND year_published > 2010

-- 42. Get male students in year level 3 or 4.
SELECT * FROM students
WHERE gender = 'Male' AND (year_level = 3 OR year_level = 4)

-- 43. Find students NOT from 'Manila' .
SELECT * FROM students
WHERE city != 'Manila'

-- 44. Retrieve employees NOT in 'IT' department.
SELECT * FROM employees
WHERE department != 'IT'

-- 45. Get grades that are NOT from '1st Sem 2023-2024' .
SELECT * FROM grades
WHERE semester != '1st Sem 2023-2024'