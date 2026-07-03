-- Q68. Count doctors per employment type.
SELECT COUNT(*) AS doctors_count, employment FROM doctors
GROUP BY employment

-- Q69. Count patients per department.
SELECT COUNT(*) AS patients_Count, department FROM patients
GROUP BY department

-- Q70. Get the average bill_amount per department in patients.
SELECT ROUND(AVG(bill_amount),2 ) AS avg_bill_amount, department FROM patients
GROUP BY department

-- Q71. Get the total bill_amount per department in patients.
SELECT SUM(bill_amount) AS total_bill_amount, department FROM patients
GROUP BY department

-- Q72. Count patients per status.
SELECT COUNT(*) AS patient_count, status FROM patients
GROUP BY status