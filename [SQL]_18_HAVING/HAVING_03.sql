-- Q96. Among 'Regular' doctors only — find departments where the average salary exceeds 120000, ordered by average salary descending.
SELECT ROUND(AVG(salary), 2) AS avg_salary, department, employment FROM doctors
WHERE employment = 'Regular'
GROUP BY department
HAVING AVG(salary) > 120000
ORDER BY AVG(salary) DESC

-- Q97. Among 'Emergency' patients only — find departments where the average bill_amount exceeds 100000, ordered by average bill descending.
SELECT AVG(bill_amount) AS avg_bill_amount, admission_type, department FROM patients
WHERE admission_type = 'Emergency'
GROUP BY department
HAVING AVG(bill_amount) > 100000
ORDER BY AVG(bill_amount) DESC

-- Q98. Among medicines with stock > 100 only — find categories where the total sold exceeds 300, ordered by total sold descending.
SELECT SUM(sold) AS total_sold, category, stock FROM medicines
WHERE stock > 100
GROUP BY category
HAVING SUM(sold) > 300
ORDER BY SUM(sold) DESC