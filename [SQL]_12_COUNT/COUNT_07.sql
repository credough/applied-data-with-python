-- Q6. Count how many doctors are 'Regular' employees.
SELECT COUNT(*) AS num_of_regular_employees FROM doctors
WHERE employment = 'Regular'

-- Q7. Count how many doctors are 'Contractual'.
SELECT COUNT(*) AS total_contractual_doctors FROM doctors
WHERE employment = 'Contractual'

-- Q8. Count how many patients are currently 'Admitted'.
SELECT COUNT(*) AS total_admitted_patients FROM patients
WHERE status = 'Admitted'

-- Q9. Count how many patients have been 'Discharged'.
SELECT COUNT(*) AS total_discharged_patients FROM patients
WHERE status = 'Discharged'

-- Q10. Count how many patients came in as 'Emergency' admissions.
SELECT COUNT(*) AS total_emergency_admissions FROM patients
WHERE admission_type = 'Emergency'

-- Q11. Count how many medicines have been sold at least once (sold > 0).
SELECT COUNT(*) AS medicines_sold_atleast_once FROM medicines
WHERE sold >= 1

-- Q12. Count how many procedures cost more than 10000.
SELECT COUNT(*) AS total_procedures_cost_more_than_1k FROM procedures
WHERE cost > 1000

-- Q13. Count how many doctors have more than 15 years of experience.
SELECT COUNT(*) AS total_doctors_more_than_15yrs FROM doctors
WHERE years_exp > 15

-- Q14. Count how many staff members are female.
SELECT COUNT(*) AS total_female_staffs FROM staff
WHERE gender = 'Female'

-- Q15. Count how many patients are older than 60.
SELECT COUNT(*) AS total_patients_older_60 FROM patients
WHERE age > 60