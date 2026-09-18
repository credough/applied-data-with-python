-- conditional & logical functions
SELECT first_name, score, IF (score >= 75, 'Pass', 'Fail') AS g_status, CASE
WHEN score >= 90 THEN 'A'
WHEN score >= 80 THEN 'B'
WHEN score >= 70 THEN 'C'
ELSE 'F'
END AS grades
FROM students_datastudents_data