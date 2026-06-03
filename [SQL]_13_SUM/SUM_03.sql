-- Q21. Get the total salary of all 'Regular' teachers.
SELECT SUM(salary) AS total_salary_of_teachers FROM teachers

-- Q22. Get the total salary of teachers in the 'IT Dept' department.
SELECT SUM(salary) AS total_it_teachers_salary FROM teachers
WHERE department = 'IT Dept'

-- Q23. Get the total copies of books in the 'IT' category.
SELECT SUM(copies) AS total_copies_books FROM library
WHERE category = 'IT'

-- Q24. Get the total budget spent on events in 2024.
SELECT SUM(budget) AS total_budget_spent_2024 FROM events
WHERE year = 2024

-- Q25. Get the total budget spent on events in 2023.
SELECT SUM(budget) AS total_spent_2023 FROM events
WHERE YEAR = 2023
