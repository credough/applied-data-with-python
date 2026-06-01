-- Q16. Get the total salary of all teachers.
SELECT SUM(salary) AS total_salary FROM teachers

-- Q17. Get the total number of book copies across all library records.
SELECT SUM(copies) AS total_copies FROM library

-- Q18. Get the total number of borrowed books across all library records.
SELECT SUM(borrowed) AS total_borrowed_books FROM library

-- Q19. Get the total budget of all events.
SELECT SUM(budget) AS total_budget_all_events FROM events

-- Q20. Get the total attendees across all events.
SELECT SUM(attendees) AS total_attendees FROM events