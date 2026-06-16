-- Q68. Count teachers per employment type.
SELECT COUNT(*) AS teachers_count, employment FROM teachers
GROUP BY employment

-- Q69. Count enrollments per course.
SELECT COUNT(*) AS enrolled, course from enrollments
GROUP BY course

-- Q70. Get the average final_grade per course.
SELECT ROUND(AVG(final_grade),2) AS avg_final_grade, course FROM enrollments
GROUP BY course

-- Q71. Count enrollments per status.
SELECT COUNT(*) as enrolled, status FROM enrollments
GROUP BY status

-- Q72. Count enrollments per semester.
SELECT COUNT(*) AS enrolled, semester FROM enrollments
GROUP BY semester