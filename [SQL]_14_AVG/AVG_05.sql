-- Q29. Get the average salary of all doctors.
SELECT AVG(salary) AS all_doctors_avg_salary FROM doctors

-- Q30. Get the average bill_amount of all patients.
SELECT AVG(bill_amount) AS avg_all_bill_amount FROM patients

-- Q31. Get the average cost of all procedures.
SELECT AVG(cost) AS avg_cost_all_procedures FROM procedures

-- Q32. Get the average unit_price of all medicines.
SELECT AVG(unit_price) AS avg_unit_price FROM medicines

-- Q33. Get the average days_admitted per patient.
SELECT AVG(days_admitted) as avg_days_admitted FROM patients