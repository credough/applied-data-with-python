-- Q11. Count how many books have been borrowed at least once (borrowed > 0).
SELECT COUNT(*) AS numof_books_borrowed_atleast_once FROM library
WHERE borrowed > 0;

-- Q12. Count how many events happened in the year 2024.
SELECT COUNT(*) as num_of_events_2024 FROM events
WHERE year = '2024'

-- Q13. Count how many teachers are assigned to the 'Main' campus.
SELECT COUNT(*) AS num_of_teachers_main FROM teachers
WHERE campus = 'Main'

-- Q14. Count how many classrooms are of type 'Laboratory'.
SELECT COUNT(*) AS lab_classroom FROM classrooms
WHERE room_type = 'Laboratory'

-- Q15. Count how many teachers have more than 10 years of 
SELECT COUNT(*) AS teachers_10years_above FROM teachers
WHERE years_exp > 10
