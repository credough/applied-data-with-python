-- Q86. Find departments in doctors where the number of doctors is greater than 3.
SELECT COUNT(*) AS doctors_count, department FROM doctors
GROUP BY department
HAVING COUNT(*) > 3

-- Q87. Find departments in doctors where the average salary exceeds 130000.
SELECT AVG(salary) AS avg_salary, department FROM doctors
GROUP BY department
HAVING AVG(salary) > 130000

-- Q88. Find departments in patients where the average bill_amount exceeds 130000.
SELECT AVG(bill_amount) AS avg_bill_amount, department FROM patients
GROUP BY department
HAVING AVG(bill_amount) > 130000

-- Q89. Find medicine category groups where the total stock is greater than 600.
SELECT SUM(stock) AS total_stock, category FROM medicines
GROUP BY category
HAVING SUM(stock) > 600

-- Q90. Find medicine category groups where the total sold is greater than 400.
SELECT SUM(sold) AS total_sold, category FROM medicines
GROUP BY category
HAVING SUM(sold) > 400