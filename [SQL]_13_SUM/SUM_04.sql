-- Q16. Get the total salary of all doctors.
SELECT SUM(salary) AS total_doctors_salary FROM doctors

-- Q17. Get the total bill_amount from all patients.
SELECT SUM(bill_amount) AS total_bill_amount_all_patients FROM patients

-- Q18. Get the total stock of all medicines.
SELECT SUM(stock) AS total_med_stock FROM medicines

-- Q19. Get the total sold units across all medicines.
SELECT SUM(sold) AS total_sold_units FROM medicines

-- Q20. Get the total cost of all procedures performed.
SELECT SUM(cost) AS total_procedures_cost FROM procedures