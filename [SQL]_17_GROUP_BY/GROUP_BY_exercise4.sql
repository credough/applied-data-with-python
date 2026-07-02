-- Q63. Count how many doctors are in each department.
SELECT COUNT(*) AS num_doctors, department FROM doctors
GROUP BY department

-- Q64. Get the average salary per department in doctors.
SELECT AVG(salary) AS avg_salary, department FROM doctors
GROUP BY department

-- Q65. Get the total salary per department in doctors.
SELECT SUM(salary) AS total_salary, department FROM doctors
GROUP BY department

-- Q66. Get the highest salary per department in doctors.
SELECT MAX(salary) AS highest_salary, department FROM doctors
GROUP BY department

-- Q67. Count doctors per hospital_branch.
SELECT COUNT(*) AS doctors_count, hospital_branch FROM doctors
GROUP BY hospital_branch