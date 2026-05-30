-- Q6. Count how many teachers are 'Regular' employees.
SELECT COUNT(*) AS regular_teachers FROM teachers
WHERE employment = 'Regular'

-- Q7. Count how many teachers are 'Contractual'.
SELECT COUNT(*) AS contractual_teachers FROM teachers
WHERE employment = 'Contractual'

-- Q8. Count how many teachers are female.
SELECT COUNT(*) AS num_of_fem_teachers FROM teachers
WHERE gender = 'Female'

-- Q9. Count how many enrollments have a status of 'Passed'.
SELECT COUNT(*) AS passed_enrollments FROM enrollments
WHERE status = 'Passed'

-- Q10. Count how many enrollments have a status of 'Failed'.
SELECT COUNT(*) as failed_enrolled FROM enrollments
WHERE status = 'Failed'
