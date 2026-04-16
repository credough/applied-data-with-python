-- Q16. Get the total salary of all employees.
SELECT SUM(salary) as all_employees_salary FROM employees

-- Q17. Get the total copies_available across all books in the library.
SELECT SUM(copies_available) AS total_copies_all_books FROM library_books

-- Q18. Get the total tuition_fee across all courses.
SELECT SUM(tuition_fee) as total_tuition_fee_all_courses FROM courses

-- Q19. Get the total available_slots across all courses.
SELECT SUM(available_slots) AS all_total_available_slots FROM courses

-- Q20. Get the total units required across all courses.
SELECT SUM(units) as total_units_required_all_courses FROM courses

-- Q21. Get the total salary of all employees in the 'Academic' department.
SELECT SUM(salary) AS total_academic_dept_salary FROM employees
WHERE department = 'Academic'

-- Q22. Get the total salary of all 'Regular' employees.
SELECT SUM(salary) AS regular_total_salary FROM employees
WHERE employment_type = 'Regular'

-- Q23. Get the total salary of all 'Contractual' employees.
SELECT SUM(salary) AS total_contractual_salary FROM employees
WHERE employment_type = 'Contractual'

-- Q24. Get the total copies_available for books in the 'Computer Science' genre.
SELECT SUM(copies_available) AS computer_science_copies FROM library_books
WHERE genre= 'Computer Science'

-- Q25. Get the total salary of employees based in 'Manila'.
SELECT SUM(salary) AS manilenos_salary FROM employees
WHERE city = 'Manila'

-- Q26. Get the total combined years_of_service of all employees in the 'IT' department.
SELECT SUM(years_of_service) AS IT_dept_years FROM employees
WHERE department = 'IT' 

-- Q27. Get the total salary of employees who have more than 10 years of service.
SELECT SUM(salary) AS more_than_10_yrs_salary FROM employees
WHERE years_of_service > 10

-- Q28. Get the total copies_available for books published after 2015.
SELECT SUM(copies_available) AS copies_available FROM library_books
WHERE year_published > 2015
